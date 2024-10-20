package hu.nje.javabeadando;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.time.LocalDateTime;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "index";
    }

    @Autowired private KorlatozasRepo korlatozasRepo;
    @Autowired private MértékRepo mertekrepo;
    @Autowired private MegnevezésRepo megnevezésRepo;
    @Autowired private UzenetRepository uzenetRepository;
    @GetMapping("/korlatozasok")
    public String Korlatok(Model model) {
        String str = A();
        model.addAttribute("str", str);
        return "korlatozasok";
    }
    String A(){
        String str="";

        for(Korlatozas korlatozas_egyed: korlatozasRepo.findAll()){
            str+="<tr>";

            str+="<td>" + korlatozas_egyed.getUtszam() + "</td>";
            str+="<td>" + korlatozas_egyed.getKezdet() + " km</td>";
            str+="<td>" + korlatozas_egyed.getVeg() + " km</td>";
            str+="<td>" + korlatozas_egyed.getTelepules() + "</td>";
            str+="<td>" + korlatozas_egyed.getMettol() + "</td>";
            str+="<td>" + korlatozas_egyed.getMeddig() + "</td>";


            str+="<td>" + megnevezésRepo.findById(korlatozas_egyed.getMegnevid()).get().getNev() + "</td>";


            str+="<td>" + mertekrepo.findById(korlatozas_egyed.getMertekid()).get().getNev() + "</td>";
            str+="<td>" + korlatozas_egyed.getSebesseg() + " km/h</td>";

            str+="</tr>";

        }
        return str;
    }


    @GetMapping("/admin/uzenetek")
    public String AdminUzenetek(Model model) {
        String str = B();
        model.addAttribute("str", str);
        return "uzenetek_lista";
    }
    String B(){
        String str="";

        for(Uzenet egyediUzenet: uzenetRepository.findAll()){
            str+="<tr>";

            str+="<td>" + egyediUzenet.getFelhasznalo() + "</td>";
            str+="<td>" + egyediUzenet.getDatum() + "</td>";
            str+="<td>" + egyediUzenet.getSzoveg() + "</td>";

            str+="</tr>";
        }
        return str;
    }


    @GetMapping("/home")
    public String homeoldal() {
        return "user";
    }

    @GetMapping("/kapcsolat")
    public String urlapForm(Model model) { // Model model: Dependency injection
        model.addAttribute("attr1", new Uzenet());
        return "kapcsolat";
    }

    @PostMapping("/kapcsolat_eredmeny")
    // UzenetOsztaly uzenetOsztaly és Model model: Dependency injection
    public String urlapSubmit(@ModelAttribute Uzenet uzenetOsztaly, Model model) {

        model.addAttribute("attr2", uzenetOsztaly);

        LocalDateTime now = LocalDateTime.now();
        uzenetOsztaly.setDatum(now);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userName = auth.getName();

        uzenetOsztaly.setFelhasznalo(userName == "anonymousUser" ? "Vendég" : userName);


        if(!uzenetOsztaly.getSzoveg().isEmpty())
        {
            uzenetRepository.save(uzenetOsztaly);
        }

        return "kapcsolat_eredmeny";
    }


    @GetMapping("/admin/home")
    public String admin() {
        return "admin";
    }
    @GetMapping("/regisztral")
    public String greetingForm(Model model) {
        model.addAttribute("reg", new User());
        return "regisztral";
    }
    @Autowired
    private UserRepository userRepo;
    @PostMapping("/regisztral_feldolgoz")
    public String Regisztráció(@ModelAttribute User user, Model model) {
        for(User felhasznalo2: userRepo.findAll())
            if(felhasznalo2.getEmail().equals(user.getEmail())){
                model.addAttribute("uzenet", "A regisztrációs email már foglalt!");
                return "reghiba";
            }
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole("ROLE_Vendeg");
        userRepo.save(user);
        model.addAttribute("id", user.getId());
        return "regjo";
    }
}

@RestController
class KorlatozasRestController {
    KorlatozasRepo repo;
    KorlatozasRestController(KorlatozasRepo repo) { // Dependency injection
        this.repo = repo;
    }

    @GetMapping("/public/korlatozasok")
    Iterable<Korlatozas> olvasMind() {
        return repo.findAll();
    }

   @GetMapping("/public/korlatozasok/{id}")
    Korlatozas KorlatozasById(@PathVariable int id) {
        return repo.findById(id)
                .orElseThrow(() -> new KorlatozasNemTalalhato(id));
    }

    @PostMapping("/public/ujkorlatozas")
    Korlatozas korlatozasFeltolt(@RequestBody Korlatozas ujKrolatozas) {
        return repo.save(ujKrolatozas);
    }
    @PutMapping("/public/modositkorlatozas/{id}")
    Korlatozas szemelyModosit(@RequestBody Korlatozas adatSzemely, @PathVariable int id) {
        return repo.findById(id)
                .map(a -> {
                    a.setKezdet(adatSzemely.getKezdet());
                    a.setMeddig(adatSzemely.getMeddig());
                    a.setVeg(adatSzemely.getVeg());
                    a.setMegnevid(adatSzemely.getMegnevid());
                    a.setMertekid(adatSzemely.getMertekid());
                    a.setMettol(adatSzemely.getMettol());
                    a.setSebesseg(adatSzemely.getSebesseg());
                    a.setTelepules(adatSzemely.getTelepules());
                    return repo.save(a);
                })
                .orElseGet(() -> { // ha nincs ilyen id-jű személy, akkor vegye fel új rekordnak
                    adatSzemely.setUtszam(id);
                    return repo.save(adatSzemely);
                });
    }
    @DeleteMapping("/public/torol/{id}")
    void torolkoraltozas(@PathVariable int id) {
        repo.deleteById(id);
    }
}