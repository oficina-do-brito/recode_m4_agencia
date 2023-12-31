package agenciamvc.controller.pacotes;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.PacoteViagemDAO;
import model.PacoteViagem;

@WebServlet("/UpdatePacoteServlet")
@MultipartConfig
public class UpdatePacoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdatePacoteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		PacoteViagemDAO pcDao = new PacoteViagemDAO();

		PacoteViagem pc = pcDao.findById(id);
		request.setAttribute("pacote", pc);

		RequestDispatcher rd = request.getRequestDispatcher("update_pacote.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PacoteViagemDAO pDAO = new PacoteViagemDAO();
		PacoteViagem p = new PacoteViagem();

		String path = request.getServletContext().getRealPath("/assets/img");
		String img = request.getParameter("imagem");
		for (Part part : request.getParts()) {
			if (part.getName().equals("imagemPacote")) {
				img = part.getSubmittedFileName();
				part.write(path + File.separator + img);
			}
		}

		p.setId(Integer.parseInt(request.getParameter("id")));
		p.setTitulo(request.getParameter("titulo"));
		p.setImagem(img);
		p.setStatus(request.getParameter("status"));
		p.setValorDesconto(Integer.parseInt(request.getParameter("valorDesconto")));
		p.setPrecoTotal(Double.parseDouble(request.getParameter("precoTotal")));
		p.setPossuiHospedagem(request.getParameter("possuiHospedagem"));
		p.setMeioTransporte(request.getParameter("meioTransporte"));
		p.setPrazoCancelamento(Integer.parseInt(request.getParameter("prazoCancelamento")));
		p.setDataViagem(LocalDate.parse(request.getParameter("dataViagem")));

		pDAO.update(p);
		response.sendRedirect("ReadPacoteServlet");
	}

}
