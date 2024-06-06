package org.dilan.sesiones.evalsolicitud;

public class Cliente {
    private String nombre;
    private String sexo;
    private int edad;
    private double sueldo;
    private boolean solicitudCompleta = false;

    // Getters y setters
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }

    public boolean isSolicitudCompleta() {
        return solicitudCompleta;
    }

    public void setSolicitudCompleta(boolean solicitudCompleta) {
        this.solicitudCompleta = solicitudCompleta;
    }
}
