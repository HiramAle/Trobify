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
import java.util.ArrayList;

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
    
    public Property searchProperty(int id)throws ClassNotFoundException{
        Property property = new Property();
        try {
            control.CreateConnection();
            query="SELECT i.idInmueble,i.correoPropietario,i.nombreInmueble,i.numeroCuartos,i.numeroBanos,i.descripcionInmueble,\n" +
                    "	d.colonia,d.calle,d.numero,\n" +
                    "    cp.codigoPostal,\n" +
                    "	c.nombreCiudad,e.nombreEstado,p.nombrePais \n" +
                    "	FROM Inmueble AS i \n" +
                    "	INNER JOIN Direccion AS d ON(i.idDireccion = d.idDireccion) \n" +
                    "    INNER JOIN CodigoPostal AS cp ON (d.codigopostal=cp.codigoPostal)\n" +
                    "    INNER JOIN Ciudad AS c ON (cp.idCiudad = c.idCiudad)\n" +
                    "    INNER JOIN Estado AS e ON (cp.idEstado = e.idEstado)\n" +
                    "    INNER JOIN Pais AS p ON (cp.idPais = p.idPais) WHERE idInmueble = '"+id+"'";
            res=control.SQLStatement(query);
            if(res.next()){
                property.setPropertyId(res.getInt(1));
                property.setOwnerMail(res.getString(2));
                property.setPropertyName(res.getString(3));
                property.setRooms(res.getInt(4));
                property.setToilets(res.getInt(5));
                property.setDescription(res.getString(6));
                property.setSuburb(res.getString(7));
                property.setStreet(res.getString(8));
                property.setNumber(res.getString(9));
                property.setPostalCode(res.getInt(10));
                property.setCityName(res.getString(11));
                property.setStateName(res.getString(12));
                property.setCountryName(res.getString(13));
                
            }
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return property;
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
    
    public ArrayList<Property> getProperties(User user) throws ClassNotFoundException{
        ArrayList<Property> properties = new ArrayList();
        try {
            control.CreateConnection();
            query="SELECT * FROM Inmueble WHERE correoPropietario = '"+user.geteMail()+"'";
            res=control.SQLStatement(query);
            Property property = null;
            while(res.next()){
                property = new Property();
                property.setPropertyId(res.getInt(1));
                property.setPropertyName(res.getString(4));
                property.setRooms(res.getInt(5));
                property.setToilets(res.getInt(6));
                property.setDescription(res.getString(7));
                properties.add(property);
            }
            
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return properties;
    }
    
    
    
    
    
    
    
    
}
