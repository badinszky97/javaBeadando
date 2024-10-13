package hu.nje.javabeadando;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.sql.Time;
import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.util.Date;

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

        for(Korlatozas asd: korlatozasRepo.findAll()){
            str+="<tr>";

            str+="<td>" + asd.getUtszam() + "</td>";
            str+="<td>" + asd.getKezdet() + " km</td>";
            str+="<td>" + asd.getVeg() + " km</td>";
            str+="<td>" + asd.getTelepules() + "</td>";
            str+="<td>" + asd.getMettol() + "</td>";
            str+="<td>" + asd.getMeddig() + "</td>";


            str+="<td>" + megnevezésRepo.findById(asd.getMegnevid()).get().getNev() + "</td>";


            str+="<td>" + mertekrepo.findById(asd.getMertekid()).get().getNev() + "</td>";
            str+="<td>" + asd.getSebesseg() + " km/h</td>";

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
// Regisztrációkor minden felhasználónak Vendég szerepet adunk:
        user.setRole("ROLE_Vendeg");
        userRepo.save(user);
        model.addAttribute("id", user.getId());
        return "regjo";
    }
}