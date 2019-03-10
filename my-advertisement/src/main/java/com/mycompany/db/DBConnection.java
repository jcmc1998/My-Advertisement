package com.mycompany.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private String dbURL;
    private String user;
    private String password;
    private Connection con;

    public DBConnection(String url, String u, String p) {
        this.dbURL = url;
        this.user = u;
        this.password = p;
    }

    public Connection getConnection() {
        try {
            return DriverManager.getConnection(this.dbURL, this.user, this.password);
        } catch (Exception e) {
            return null;
        }

    }

}
