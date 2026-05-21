/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ADMIN
 */
public class DBConnection {
    
Connection con;
    ResultSet rs;
    Statement st;

    public DBConnection(){
        try{
         Class.forName("com.mysql.jdbc.Driver");
         con= DriverManager.getConnection("jdbc:mysql://localhost:3306/playbox", "root", "");
          System.out.println(" success" );
        }catch(Exception e){
            System.out.println(" error =" + e);
        }
    }
    
    
    public int allquery(String q) throws Exception {
        st = con.createStatement();
        int n = st.executeUpdate(q);
        return (n);

    }

    public ResultSet display(String q) throws Exception {
        st = con.createStatement();
        rs = st.executeQuery(q);

        return (rs);
    }

    public String binddropdown(String q) throws Exception {
        String s = "";
        st = con.createStatement();
        rs = st.executeQuery(q);

        while(rs.next())
        {
            s =s + "<option value=" + rs.getString(1) + ">" + rs.getString(2) + "</option>";
        }
        return (s);
        
        // for display 
        //   out.println(con.binddropdown("select categary_id,categary_name from categary"));
                   
    }

    
    
}
