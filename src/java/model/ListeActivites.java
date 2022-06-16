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
public class ListeActivites extends DBTable{
    private int id;
    private int idActivitesVoyage;
    private int idActivite;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdActivitesVoyage() {
        return idActivitesVoyage;
    }

    public void setIdActivitesVoyage(int idActivitesVoyage) {
        this.idActivitesVoyage = idActivitesVoyage;
    }

    public int getIdActivite() {
        return idActivite;
    }

    public void setIdActivite(int idActivite) {
        this.idActivite = idActivite;
    }
    
}
