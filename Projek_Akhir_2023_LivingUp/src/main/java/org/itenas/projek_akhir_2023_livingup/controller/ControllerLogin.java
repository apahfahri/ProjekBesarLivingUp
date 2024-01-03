/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.itenas.projek_akhir_2023_livingup.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.itenas.projek_akhir_2023_livingup.utilities.ConnectionManager;

/**
 *
 * @author ASUS
 */
public class ControllerLogin {
    ConnectionManager conMan = new ConnectionManager();
    Connection con = conMan.connect();

    public int Login(String username, String password){
        int stat = 0;
        try {
            String query = "Select * from akunadmin where username ='" + username + "' "
                + "and password ='" + password + "'";
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                if (username.equals(rs.getString("username")) 
                 && password.equals(rs.getString("password"))){
                    stat = 1;
                } else {
                    stat = 0;
                }
            }
            return stat;
        } catch (SQLException e) {
            return stat;
        }
    }

    public boolean Register(String username, String password){
        String query = "INSERT INTO akunadmin values ('" + username + "', '" 
                + password + "')";
        try {
            Statement stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException e) {
            System.out.println(e.toString());
            return false;
        }
    }
}
