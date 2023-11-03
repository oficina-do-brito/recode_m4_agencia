package agenciamvc.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AdministradorDAO;
import model.Administrador;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("cadastre_se.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdministradorDAO admDAO = new AdministradorDAO();
		Administrador admin = new Administrador();

		admin.setNome(request.getParameter("nome"));
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		admin.setTelefone(request.getParameter("telefone"));
		admin.setImagem(request.getParameter("imagem"));

		admin.setTipoUsuario(Integer.parseInt(request.getParameter("tipoUsuario")));
		admin.setNvRevisadas(0);
		System.out.println(admin.toString());
		admDAO.create(admin);

		response.sendRedirect("manage.jsp");
	}

}
