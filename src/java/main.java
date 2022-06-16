
import dbtable.Connexion;
import dbtable.DBTable;
import model.Region;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author P14A-Fanjava
 */
public class main {
    public static void main(String[] args) throws Exception{
        Connexion c=new Connexion();
        Region r=new Region();
        DBTable[] liste=r.find("select * from Region where id=8", c.getConnection());
        for(int i=0;i<liste.length;i++){
            System.out.println(((Region)(liste[i])).getNom());
         }
    }
}
