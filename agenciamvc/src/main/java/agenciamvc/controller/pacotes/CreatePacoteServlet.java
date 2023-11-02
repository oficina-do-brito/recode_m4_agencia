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

@WebServlet("/CreatePacoteServlet")
@MultipartConfig
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
		
		// #1 - Pegar caminho real de onde ficam as imagems no  servidor apartir da pasta root de arquivos estaticos
		//Obs: pasta root é webapp logo pegando de webapp/assets/img
		String path = request.getServletContext().getRealPath("/assets/img");
		String img = "";
		for(Part part:request.getParts()) {
			if(part.getName().equals("imagemPacote")) {
				// #2 - copiando arquivo e jogando dentro da pasta de destino que é p path
				img = part.getSubmittedFileName();
				part.write(path+File.separator+img);
			}
		}
		
		p.setTitulo(request.getParameter("titulo"));
		p.setImagem(img);	
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
