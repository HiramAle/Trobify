/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

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
            if(res.next()){
                
                System.out.println(res.getString(1));
                person.setPersonName(res.getString(1));
                person.setPersonLastName(res.getString(2));
                person.seteMail(res.getString(5));
            }
            res=control.SQLStatement(query);
        } catch (SQLException e) {
            System.out.println("Problema en DATABASECONTROLLER");
            System.out.println(e);
        }
        return person;
    }
    
    
    
    
    
    
    
}
