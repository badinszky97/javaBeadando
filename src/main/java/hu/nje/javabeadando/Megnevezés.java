package hu.nje.javabeadando;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "megnevezes")
public class Megnevezés {
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "nev")
    private String nev;

    public int getId() {
        return id;
    }

    public String getNev() {
        return nev;
    }
}
