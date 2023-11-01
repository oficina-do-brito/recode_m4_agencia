package agenciamvc.controller.pacotes;

import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PacoteViagemDAO;
import model.PacoteViagem;

@WebServlet("/CreatePacoteServlet")
public class CreatePacoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreatePacoteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("cadastre_pacote.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PacoteViagemDAO pDAO = new PacoteViagemDAO();
		PacoteViagem p = new PacoteViagem();

		p.setTitulo(request.getParameter("titulo"));
		p.setImagem(request.getParameter("imagem"));	
		p.setStatus(request.getParameter("status"));	
		p.setValorDesconto(Integer.parseInt(request.getParameter("valorDesconto")));	
		p.setPrecoTotal(Double.parseDouble(request.getParameter("precoTotal")));	
		p.setPossuiHospedagem(request.getParameter("possuiHospedagem"));	
		p.setMeioTransporte(request.getParameter("meioTransporte"));
		p.setPrazoCancelamento(Integer.parseInt(request.getParameter("prazoCancelamento")));
		
		// Convereter, a data string para LocalDate
		p.setDataViagem(LocalDate.parse(request.getParameter("dataViagem")));
		
		pDAO.create(p);

		response.sendRedirect("ManagePacotesServlets");
	}

}
