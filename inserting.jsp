<%-- 
    Document   : inserting
    Created on : Sep 8, 2017, 5:21:20 PM
    Author     : admin
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String n=request.getParameter("name");
            String l=request.getParameter("lname");
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/data","root","root");
            Statement st=con.createStatement();
           st.executeUpdate("insert into data values('"+n+"','"+l+"')");
            out.println("data is inserted");
            
            st.close();
            con.close();
            
        }catch(Exception e){}
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
