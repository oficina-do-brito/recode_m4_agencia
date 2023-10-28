package agenciamvc.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
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

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("cadastre_se.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		LocalDate dataAtual = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

		AdministradorDAO admDAO = new AdministradorDAO();
		Administrador admin = new Administrador();

		admin.setNome(request.getParameter("nome"));
		admin.setNome(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		admin.setTelefone(request.getParameter("telefone"));
		admin.setImagem(request.getParameter("imagem"));
		
//		String data = request.getParameter("dataLogin");
//		admin.setDataLogin(LocalDate.parse(data, formatter));
		
		admin.setDataLogin(dataAtual);
		admin.setTipoUsuario(Integer.parseInt(request.getParameter("tipoUsuario")));
//		admin.setNumeroViagemRevisadas(Integer.parseInt(request.getParameter("numeroViagemRevisadas")));
		admin.setNumeroViagemRevisadas(0);

		admDAO.create(admin);

		response.sendRedirect("manage.jsp");
	}

}
