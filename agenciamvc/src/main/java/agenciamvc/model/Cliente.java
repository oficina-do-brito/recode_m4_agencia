package agenciamvc.model;

import java.util.ArrayList;
import java.util.Scanner;

import org.apache.tomcat.dbcp.dbcp2.Utils;

import agenciamvc.model.DAO.ClienteDAO;

public class Cliente extends Usuario {
	private String RG;
	private String CPF;
	private Integer numeroViagens;
	private String cartaoCredito;
	private Integer idUsuario;

	private CarrinhoCompra carrinho = new CarrinhoCompra();
	private ClienteDAO clienteDAO = new ClienteDAO();

	public Cliente() {
		super();
	}

	public Cliente(String rG, String cPF, Integer numeroViagens, String cartaoCredito, Integer idUsuario) {
		super();
		this.RG = rG;
		this.CPF = cPF;
		this.numeroViagens = numeroViagens;
		this.cartaoCredito = cartaoCredito;
		this.idUsuario = idUsuario;
	}

	public Cliente(String rG, String cPF, Integer numeroViagens, String cartaoCredito) {
		super();
		this.RG = rG;
		this.CPF = cPF;
		this.numeroViagens = numeroViagens;
		this.cartaoCredito = cartaoCredito;
	}

	public Cliente(Integer id, String rG, String cPF, Integer numeroViagens, String cartaoCredito, Integer idUsuario) {
		setId(id);
		this.RG = rG;
		this.CPF = cPF;
		this.numeroViagens = numeroViagens;
		this.cartaoCredito = cartaoCredito;
		this.idUsuario = idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getRG() {
		return RG;
	}

	public void setRG(String rG) {
		RG = rG;
	}

	public String getCPF() {
		return CPF;
	}

	public void setCPF(String cPF) {
		CPF = cPF;
	}

	public Integer getNumeroViagens() {
		return numeroViagens;
	}

	public void setNumeroViagens(Integer numeroViagens) {
		this.numeroViagens = numeroViagens;
	}

	public String getCartaoCredito() {
		return cartaoCredito;
	}

	public void setcartaoCredito(String cartaoCredito) {
		this.cartaoCredito = cartaoCredito;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setidUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	@Override
	public String toString() {
		return "é um Cliente com -> id=" + getId() + ", RG=" + RG + ", CPF=" + CPF + ", numeroViagens=" + numeroViagens
				+ ", cartaoCredito=" + cartaoCredito + ", idUsuario=" + idUsuario + ", Tambem," + super.toString()
				+ " ";
	}

	@Override
	public void create() {
		this.setId(this.clienteDAO.save(new Cliente(this.RG, this.CPF, this.numeroViagens, this.cartaoCredito, this.idUsuario)));
	}

	@Override
	public void update() {
		if (this.getId() != null) {
			this.clienteDAO.update(
					new Cliente(this.getId(), this.RG, this.CPF, this.numeroViagens, this.cartaoCredito, this.idUsuario));
		}
	}

	@Override
	public void delete() {
		if (this.getId() != null) {
			this.clienteDAO.deleteById(this.getId());
		}
	}

	@Override
	public void readAll() {
		ArrayList<Cliente> clientes = this.clienteDAO.findAll();
		for (Cliente cliente : clientes) {
			System.out.println(cliente.toString());
		}
	}

	public void adquerirPacote(PacoteViagem pv) {
		this.carrinho.addInPacotes(pv);
		if (this.carrinho == null) {
			System.out.println("Carrinho vazio");
		} else {
			System.out.printf("Adicionado carrinho agora contem %d", this.carrinho.getPacotes().size());
		}
	}

	public void efetuarPagamentoPacote() {
		Scanner scs = new Scanner(System.in);
		String ids;
		double valor;

		System.out.printf("Informe os id(s) de ambos os pacotes que vc quer pagar separados por /, : ");
		ids = scs.next();
		System.out.printf("Informe o valor do pagamento : ");
		valor = scs.nextDouble();
		String[] axilar = ids.split(",");
		int[] idsNumericos = new int[50];
		int i = 0;
		for (String num : axilar) {
			idsNumericos[i] = Integer.parseInt(num);
		}
		this.numeroViagens += this.carrinho.realizarPagamento(valor, idsNumericos);

		scs.close();
	}

	public void buscarPorId() {
		Cliente c = this.clienteDAO.findById(this.getId());
		this.setId(c.getId());
		this.setNome(c.getNome());
		this.setEmail(c.getEmail());
		this.setPassword(c.getPassword());
		this.setTelefone(c.getTelefone());
		this.setImagem(c.getImagem());
		this.setDataLogin(c.getDataLogin());
		this.setTipoUsuario(c.getTipoUsuario());
		this.setIdEndereco(c.getIdEndereco());
		this.RG = c.getRG();
		this.setCPF(c.getCPF());
		this.numeroViagens = c.getNumeroViagens();
		this.cartaoCredito = c.getCartaoCredito();
		this.idUsuario = c.getIdUsuario();
		super.setEndereco(c.getEndereco());
	}
}
