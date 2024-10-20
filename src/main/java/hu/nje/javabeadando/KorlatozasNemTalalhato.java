package hu.nje.javabeadando;

public class KorlatozasNemTalalhato extends RuntimeException{
    KorlatozasNemTalalhato(int id) {
        super("A koraltozas nem található: " + id);
    }
}
