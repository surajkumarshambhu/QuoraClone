/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.* ; 
@WebServlet(urlPatterns = {"/login__info"})
public class login__info extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {    
            String user = request.getParameter("username");              
            String password = request.getParameter("password");
            Class.forName("org.apache.derby.jdbc.ClientDriver");  
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/quora","root","qwerty");  
            Statement stmt=con.createStatement();  
            String query = "select * from login_detail";
            ResultSet rs=stmt.executeQuery(query);
            int flag = 0;
            HttpSession session = request.getSession();
            out.println(user);
            out.println(password);
            while(rs.next()){
                if(user.equals(rs.getString(3)) && password.equals(rs.getString(4))){
                    session.setAttribute("user",user);
                    session.setAttribute("name",rs.getString(1));
                    flag =1;
                    out.println("user loged in");
                    response.sendRedirect("home.jsp");
                    break;
                }
            }
            if(flag == 0){
                out.println("invalid username or password!!");              
            }            
            con.close();            
        }
        catch(Exception e){ System.out.println(e);}  
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);        
    }
}

