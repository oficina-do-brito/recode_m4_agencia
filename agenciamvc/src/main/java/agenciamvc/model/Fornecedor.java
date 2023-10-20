package agenciamvc.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.Objects;

import agenciamvc.model.DAO.FornecedorDAO;

public class Fornecedor extends Usuario {
	private String CNPJ;
	private Integer tipoServico;
	private Integer idUsuario;

	private ArrayList<Passagem> passagens = new ArrayList<Passagem>();
	private ArrayList<Hospedagem> hospedagens = new ArrayList<Hospedagem>();
	private FornecedorDAO fornecedorDAO = new FornecedorDAO();

	public Fornecedor() {
		super();
	}

	public Fornecedor(Integer id, String CNPJ, Integer tipoServico, Integer idUsuario) {
		this.setId(id);
		this.CNPJ = CNPJ;
		this.tipoServico = tipoServico;
		this.idUsuario = idUsuario;
	}

	public Fornecedor(Integer id, String nome, String email, String password, String telefone, String imagem,
			Date dataLogin, Integer tipoUsuario, Integer idEndereco, String CNPJ, Integer tipoServico,
			Integer idUsuario) {
		super(idUsuario, nome, email, password, telefone, imagem, dataLogin, tipoUsuario, idEndereco);
		
		this.CNPJ = CNPJ;
		this.tipoServico = tipoServico;
		this.idUsuario = idUsuario;
	}

	public Fornecedor(String cNPJ, Integer tipoServico, Integer idUsuario) {
		super();
		CNPJ = cNPJ;
		this.tipoServico = tipoServico;
		this.idUsuario = idUsuario;
	}

	public Fornecedor(String cNPJ, Integer tipoServico) {
		super();
		CNPJ = cNPJ;
		this.tipoServico = tipoServico;
	}

	public void fornecer(Passagem ps) {
		ps.setIdFornecedor(this.getId());
		ps.create();
	}

	public void fornecer(Hospedagem h) {
		h.setIdFornecedor(this.getId());
		h.create();
	}

	public ArrayList<Passagem> getPassagens() {
		return passagens;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + Objects.hash(this.getId());
		return result;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}

	public Integer getTipoServico() {
		return tipoServico;
	}

	public void setTipoServico(Integer tipoServico) {
		this.tipoServico = tipoServico;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	@Override
	public String toString() {
		return "é um Fornecedor com -> CNPJ=" + CNPJ + ", tipoServico=" + tipoServico + ", idUsuario=" + idUsuario
				+ ", Tambem," + super.toString() + " ";
	}

	@Override
	public void create() {
		this.setId(this.fornecedorDAO.save(new Fornecedor(this.CNPJ, this.tipoServico, this.idUsuario)));
	}

	@Override
	public void update() {
		if (this.getId() != null) {
			this.fornecedorDAO.update(new Fornecedor(this.getId(), this.CNPJ, this.tipoServico, this.idUsuario));
		}

	}

	@Override
	public void delete() {
		if (this.getId() != null) {
			this.fornecedorDAO.deleteById(this.getId());
		}
	}

	@Override
	public void readAll() {
		ArrayList<Fornecedor> fornecedores = this.fornecedorDAO.findAll();
		for (Fornecedor f : fornecedores) {
			System.out.println(f.toString());
		}
	}

	public void buscarPorId() {
		Fornecedor f = this.fornecedorDAO.findById(this.getId());
		this.setId(f.getId());
		this.setNome(f.getNome());
		this.setEmail(f.getEmail());
		this.setPassword(f.getPassword());
		this.setTelefone(f.getTelefone());
		this.setImagem(f.getImagem());
		this.setDataLogin(f.getDataLogin());
		this.setTipoUsuario(f.getTipoUsuario());
		this.setIdEndereco(f.getIdEndereco());

		this.CNPJ = f.getCNPJ();
		this.tipoServico = f.getTipoServico();
		this.idUsuario = f.getIdUsuario();

		super.setEndereco(f.getEndereco());

	}
}
