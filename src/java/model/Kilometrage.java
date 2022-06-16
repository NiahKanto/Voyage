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
public class Kilometrage extends DBTable{
    private int id;
    private int idRegion1;
    private int idRegion2;
    private double km;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdRegion1() {
        return idRegion1;
    }

    public void setIdRegion1(int idRegion1) {
        this.idRegion1 = idRegion1;
    }

    public int getIdRegion2() {
        return idRegion2;
    }

    public void setIdRegion2(int idRegion2) {
        this.idRegion2 = idRegion2;
    }

    public double getKm() {
        return km;
    }

    public void setKm(double km) {
        this.km = km;
    }
    
}
