/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import Model.Agency;
import Model.Agent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Model.Client;
import Model.Person;
import Model.Property;
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
                person.seteMail(res.getString(1));
                person.setPersonName(res.getString(2));
                person.setPersonLastName(res.getString(3));
                
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
            query="SELECT * FROM Persona INNER JOIN Cliente ON Persona.correo = Cliente.correoCliente WHERE Cliente.correoCliente = '"+mail+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                client.seteMail(res.getString(1));
                client.setPersonName(res.getString(2));
                client.setPersonLastName(res.getString(3));
                
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
            query="SELECT * FROM Agencia WHERE correoAgencia = '"+mail+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                agency.seteMail(res.getString(1));
                agency.setName(res.getString(2));
            }
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return agency;
    }
    
    public Agent searchAgent(String mail) throws ClassNotFoundException{
        Agent agent = new Agent();
        try {
            control.CreateConnection();
            query="SELECT * FROM Agente WHERE correoAgente = '"+mail+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                agent.seteMail(res.getString(1));
                agent.setPersonName(res.getString(2));
                agent.setAgencyMail(res.getString(3));
                
            }
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return agent;
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
    
    public void addProperty(Property property) throws ClassNotFoundException{
        try {
            control.CreateConnection();
            query = "CALL AddProperty('"+property.getPropertyName()+"',' "+property.getRooms()+" ','"+property.getToilets()+"','"+property.getDescription()+"','"+property.getCityName()+"','"+property.getSuburb()+"','"+property.getStateName()+"','"+property.getCountryName()+"','"+property.getPostalCode()+"','"+property.getStreet()+"','"+property.getNumber()+"','"+property.getOwnerMail()+"')";
            preparedStatement = control.StatmentAction(query);
            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    
    
    
    
    
    
    
    
}
