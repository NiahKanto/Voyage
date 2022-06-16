/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dbtable.DBTable;

/**
 *
 * @author P14A-Fanjava
 */
public class Pack extends DBTable{
    private int id;
    private int idRegionDest;
    private int idHotel;
    private int idCooperative;
    private int idActivitesVoyage;
    private int nbreVoyageurs;
    private double prix;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdRegionDest() {
        return idRegionDest;
    }

    public void setIdRegionDest(int idRegionDest) {
        this.idRegionDest = idRegionDest;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public int getIdCooperative() {
        return idCooperative;
    }

    public void setIdCooperative(int idCooperative) {
        this.idCooperative = idCooperative;
    }

    public int getIdActivitesVoyage() {
        return idActivitesVoyage;
    }

    public void setIdActivitesVoyage(int idActivitesVoyage) {
        this.idActivitesVoyage = idActivitesVoyage;
    }

    public int getNbreVoyageurs() {
        return nbreVoyageurs;
    }

    public void setNbreVoyageurs(int nbreVoyageurs) {
        this.nbreVoyageurs = nbreVoyageurs;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }
    
}
