package com.sd.web;

import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;

public class ORACLEConnectionTest {

    private static final String DRIVER =
            "oracle.jdbc.driver.OracleDriver";
    private static final String URL =
            "jdbc:oracle:thin:@218.55.15.117:1521:XE";
    private static final String USER =
            "seedtec";
    private static final String PW =
            "seed5751";

    @Test
    public void testConnection() throws Exception {

        Class.forName(DRIVER);

        try (Connection connection = DriverManager.getConnection(URL, USER, PW)) {
            System.out.println(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}