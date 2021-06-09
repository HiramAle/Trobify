/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import Model.Agency;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Model.Client;
import Model.Person;
import Model.User;

/**
 *
 * @author magic
 */
public class DataBaseController {
    
    private String query;
    private ResultSet res;
    private final DataBaseConnection control;
    private PreparedStatement preparedStatement;

    public DataBaseController() {
        this.control = new DataBaseConnection();
    }
    
    public void addClient(Client client) throws ClassNotFoundException{
        try {
            control.CreateConnection();
            query = "CALL AddClient('"+client.geteMail()+"','"+client.getPassword()+"','"+client.getPersonName()+"','"+client.getPersonLastName()+"')";
            preparedStatement = control.StatmentAction(query);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public boolean matchUser(User user) throws ClassNotFoundException{
        try {
            control.CreateConnection();
            query="SELECT * FROM Usuario WHERE correo = '"+user.geteMail()+"' AND contrasena = '"+user.getPassword()+"'";
            res=control.SQLStatement(query);
            return res.next();
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }
    
    public Person searchPerson(String mail) throws ClassNotFoundException{
        Person person = new Person();
        try {
            control.CreateConnection();
            query="SELECT * FROM Persona WHERE correo = '"+mail+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                person.setPersonName(res.getString(2));
                person.setPersonLastName(res.getString(3));
                person.seteMail(res.getString(6));
            }
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return person;
    }
    
    public Client searchClient(String mail) throws ClassNotFoundException{
        Client client = new Client();
        try {
            control.CreateConnection();
            query="SELECT * FROM Persona INNER JOIN Cliente ON Persona.idPersona = Cliente.idPersona AND Persona.correo = '"+mail+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                client.setPersonName(res.getString(2));
                client.setPersonLastName(res.getString(3));
                client.seteMail(res.getString(6));
            }
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return client;
    }
    
    public Agency searchAgency(String mail) throws ClassNotFoundException{
        Agency agency = new Agency();
        try {
            control.CreateConnection();
            query="SELECT * FROM Agencia WHERE correo = '"+mail+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                agency.setName(res.getString(2));
                agency.seteMail(res.getString(3));
            }
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return agency;
    }
    
    public void addAgency(Agency agency)throws ClassNotFoundException{
        try {
            control.CreateConnection();
            
            query = "CALL AddAgency('"+agency.geteMail()+"','"+agency.getPassword()+"','"+agency.getName()+"')";
            preparedStatement = control.StatmentAction(query);
            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    
    
    
    
    
    
}
