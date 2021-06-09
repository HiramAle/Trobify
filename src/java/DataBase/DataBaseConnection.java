/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author magic
 */
public class DataBaseConnection {
    
    DataBase DB;
    
    private Statement statement;
    private Connection connection;

    public DataBaseConnection(DataBase DB) {
        this.DB = DB;
    }
    public DataBaseConnection() {
        this.DB = new DataBase();
    }
    
    public void CreateConnection() throws ClassNotFoundException, SQLException {
        Class.forName(DB.getDriverClassName());
        connection = DriverManager.getConnection(DB.getUrl(), DB.getUserName(), DB.getPassword());
    }

    //Cerrar la Conexion
    public void CloseConnection() throws SQLException {
        connection.close();
    }

    //Metodos para ejecutar sentencias SQL
    public ResultSet SQLStatement(String consult) throws SQLException {
        this.statement = (Statement) connection.createStatement();
        return this.statement.executeQuery(consult);
    }
    
    public PreparedStatement StatmentAction(String consult) throws SQLException {
        return connection.prepareStatement(consult);
    }
    
    
}
