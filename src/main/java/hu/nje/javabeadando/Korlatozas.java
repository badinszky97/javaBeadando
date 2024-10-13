package hu.nje.javabeadando;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@Table(name = "korlatozas")
public class Korlatozas {
    @Id
    @Column(name = "utszam")
    private int utszam;


    @Column(name = "kezdet")
    private float kezdet;

    @Column(name = "veg")
    private float veg;

    @Column(name = "telepules")
    private String telepules;


    @Column(name = "mettol")
    private Date mettol;

    @Column(name = "meddig")
    private Date meddig;


    @Column(name = "megnevid")
    private int megnevid;

    @Column(name = "mertekid")
    private int mertekid;

    @Column(name = "sebesseg")
    private int sebesseg;


    public int getUtszam() {
        return utszam;
    }

    public float getKezdet() {
        return kezdet;
    }

    public float getVeg() {
        return veg;
    }

    public String getTelepules() {
        return telepules;
    }

    public Date getMettol() {
        return mettol;
    }

    public Date getMeddig() {
        return meddig;
    }

    public int getMegnevid() {
        return megnevid;
    }

    public int getMertekid() {
        return mertekid;
    }

    public int getSebesseg() {
        return sebesseg;
    }
}