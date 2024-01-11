/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts.DBConfiguration;

/**
 *
 * @author namng
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConnectionPool {
    private static final int MAX_CONNECTIONS = 10;
    private List<Connection> connections;

    private static ConnectionPool instance;

    private ConnectionPool() {
        connections = new ArrayList<>();
        initializeConnections();
    }

    public static ConnectionPool getInstance() {
        if (instance == null) {
            synchronized (ConnectionPool.class) {
                if (instance == null) {
                    instance = new ConnectionPool();
                }
            }
        }
        return instance;
    }

    private void initializeConnections() {
        try {
            Class.forName("org.postgresql.Driver");

            for (int i = 0; i < MAX_CONNECTIONS; i++) {
                
                String ip = "localhost";
                String port = "5432";
                String database = "NamNG_Blog";
                String url = "jdbc:postgresql://"+ ip + ":" + port +  "/" + database;
                String username = "postgres";
                String password = "namhhbg0001";

                Connection connection = DriverManager.getConnection(url,username, password);
                connections.add(connection);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        if (connections.isEmpty()) {
            System.out.println("No available connections");
            return null;
        }

        Connection connection = connections.remove(0);
        System.out.println("A connection is taken from the pool");
        return connection;
    }

    public void releaseConnection(Connection connection) {
        if (connection != null) {
            connections.add(connection);
            System.out.println("A connection is released back to the pool");
        }
    }
}

