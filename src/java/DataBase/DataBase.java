package DataBase;

/**
 *
 * @author magic
 */
public class DataBase {
    
    private String serverName;
    private String userName;
    private String password;
    private String dataBaseName;
    private String port;
    private String url;
    private String driverClassName;

    public DataBase() {
        this.serverName = "localhost";
        this.userName = "root";
        this.password = "gorillaz1920";
        this.dataBaseName = "Trobify";
        this.port = "3306";
        this.url = "jdbc:mysql://"+serverName+":"+port+"/"+dataBaseName+"?autoReconnect=true&useSSL=false";
        this.driverClassName = "com.mysql.jdbc.Driver"; 
    }

    public String getDriverClassName() {
        return driverClassName;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    public String getServerName() {
        return serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDataBaseName() {
        return dataBaseName;
    }

    public void setDataBaseName(String dataBaseName) {
        this.dataBaseName = dataBaseName;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
    
    
}
