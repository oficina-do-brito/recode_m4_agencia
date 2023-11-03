package agenciamvc.controller.pacotes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PacoteViagemDAO;


@WebServlet("/DeletePacoteServlet")
public class DeletePacoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeletePacoteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		PacoteViagemDAO pcDao = new PacoteViagemDAO();
		pcDao.deleteById(id);
		
		response.sendRedirect("ReadPacoteServlet");
	}

}
