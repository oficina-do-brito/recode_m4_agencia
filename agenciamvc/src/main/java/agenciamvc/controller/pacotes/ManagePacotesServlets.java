package agenciamvc.controller.pacotes;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PacoteViagemDAO;
import model.PacoteViagem;

@WebServlet("/ManagePacotesServlets")
public class ManagePacotesServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManagePacotesServlets() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PacoteViagemDAO pDAO = new PacoteViagemDAO();
		ArrayList<PacoteViagem> pacotes= pDAO.findAll();
		
		request.setAttribute("pacotes", pacotes);
		
		RequestDispatcher rd = request.getRequestDispatcher("manage_pacotes.jsp");
		rd.forward(request, response);
	}
}
