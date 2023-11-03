package agenciamvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AdministradorDAO;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdministradorDAO a = new AdministradorDAO();
		
		String emailUser = request.getParameter("email");
		String passwordUser = request.getParameter("password");
		
		a.findByEmailAndPassoword(emailUser, passwordUser);
		
		if(a.findByEmailAndPassoword(emailUser, passwordUser).getEmail()!=null) {
			response.sendRedirect("ReadPacoteServlet");
		}else {
			response.sendRedirect("HomeServlet");
		}
		
	}

}
