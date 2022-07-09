/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dbtable.DBTable;

/**
 *
 * @author rog
 */
public class DetailsparPack extends DBTable{
    private int idpack;
    private String lieu;
    private String Hotel;
    private String cooperative;
    private int nbreVoyageurs;
    private int nbrejours;
    private double prix;

    public int getidpack() {
        return idpack;
    }

    public void setidpack(int idpack) {
        this.idpack = idpack;
    }

    public String getlieu() {
        return lieu;
    }

    public void setlieu(String lieu) {
        this.lieu = lieu;
    }

    public String getHotel() {
        return Hotel;
    }

    public void setHotel(String Hotel) {
        this.Hotel = Hotel;
    }

    public String getcooperative() {
        return cooperative;
    }

    public void setcooperative(String cooperative) {
        this.cooperative = cooperative;
    }

    public int getnbreVoyageurs() {
        return nbreVoyageurs;
    }

    public void setnbreVoyageurs(int nbreVoyageurs) {
        this.nbreVoyageurs = nbreVoyageurs;
    }

    public int getnbrejours() {
        return nbrejours;
    }

    public void setnbrejours(int nbrejours) {
        this.nbrejours = nbrejours;
    }

    public double getprix() {
        return prix;
    }

    public void setprix(double prix) {
        this.prix = prix;
    }
    
}
