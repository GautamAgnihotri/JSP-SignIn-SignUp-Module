/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MyPackage.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author sairam
 */
public class ConnectionClass {
    private static Connection con;
    public static Connection getConnection(){
        
        try{
            if(con==null){
            Class.forName("com.mysql.jdbc.Driver");
            
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quencil","root","root");
            }
        }catch(Exception e){
        System.out.println("Error occured at ConnectionClass");
        e.printStackTrace();
        }
        return con;
    }
}
