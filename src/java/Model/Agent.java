/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author magic
 */
public class Agent extends Person {
    
    private String agencyMail;
    
    public Agent(){
        super();
    }

    public String getAgencyMail() {
        return agencyMail;
    }

    public void setAgencyMail(String agencyMail) {
        this.agencyMail = agencyMail;
    }
    
    
    
}
