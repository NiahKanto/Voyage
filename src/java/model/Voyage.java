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
public class Voyage extends DBTable{
    private int id;
   private int idRegionDest;
   private int idRegionDepart;
   private int idHotel;
   private int idCooperative;
   private int idActvitesVoyage;
   private int nbreVoyageurs;
   private int nbreJours;

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

    public int getIdRegionDepart() {
        return idRegionDepart;
    }

    public void setIdRegionDepart(int idRegionDepart) {
        this.idRegionDepart = idRegionDepart;
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

    public int getIdActvitesVoyage() {
        return idActvitesVoyage;
    }

    public void setIdActvitesVoyage(int idActvitesVoyage) {
        this.idActvitesVoyage = idActvitesVoyage;
    }

    public int getNbreVoyageurs() {
        return nbreVoyageurs;
    }

    public void setNbreVoyageurs(int nbreVoyageurs) {
        this.nbreVoyageurs = nbreVoyageurs;
    }

    public int getNbreJours() {
        return nbreJours;
    }

    public void setNbreJours(int nbreJours) {
        this.nbreJours = nbreJours;
    }
}
