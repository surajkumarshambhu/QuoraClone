import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.* ; 
import javax.servlet.http.HttpSession;
/**
 *
 * @author lenovo
 */
@WebServlet(urlPatterns = {"/uploadanswer"})
public class uploadanswer extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) { 
            HttpSession session = request.getSession();
            String answer = request.getParameter("input_question_answer");
            String question = request.getParameter("qwe");
            Class.forName("org.apache.derby.jdbc.ClientDriver");  
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/quora","root","qwerty");  
            Statement stmt = con.createStatement();      
           String query = "insert into question_answer(answer) values('"+answer+"')";
           String query2 = "select * from question_answer"; 
            ResultSet rs = stmt.executeQuery(query2);
                out.println(question);
                out.println(answer);
              if(question.equals(rs.getString(1)))
              { stmt.executeUpdate(query);
                out.println(question);
              }
              else{
               out.println("fail");
              }
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