 package login;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;  
  
  
public class FirstServlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("username");  
    String p=request.getParameter("userpass");
    HttpSession session=request.getSession();
          
    if(LoginDao.validate(n, p)){
    	if(session!=null){
        RequestDispatcher rd=request.getRequestDispatcher("Success.jsp");  
        rd.forward(request,response);
    	}
    	else{
    		RequestDispatcher rd=request.getRequestDispatcher("Failure.jsp");  
            rd.forward(request,response);	
    	}
    }  
    else{    
        RequestDispatcher rd=request.getRequestDispatcher("Failure.jsp");  
        rd.forward(request,response);  
    }  
          
    out.close();  
    }  
}