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
public class Hotel extends DBTable{
     private int id;
    private int idRegion;
    private String nom;
    private int repas;
    private double prixJournalierParPersonne;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdRegion() {
        return idRegion;
    }

    public void setIdRegion(int idRegion) {
        this.idRegion = idRegion;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getRepas() {
        return repas;
    }

    public void setRepas(int repas) {
        this.repas = repas;
    }

    public double getPrixJournalierParPersonne() {
        return prixJournalierParPersonne;
    }

    public void setPrixJournalierParPersonne(double prixJournalierParPersonne) {
        this.prixJournalierParPersonne = prixJournalierParPersonne;
    }
}
