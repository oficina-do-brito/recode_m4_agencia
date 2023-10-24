package model;

import model.interfaces.ICrud;

public class Revisao implements ICrud {
	private Integer idAdministrador;
	private Integer idPacoteViagem;

	private PacoteViagem pacote = new PacoteViagem();

	public Revisao() {
	}

	public Revisao(Integer int1, Integer int2) {
		this.idAdministrador = int1;
		this.idPacoteViagem = int2;
	}

	public Integer getIdAdministrador() {
		return idAdministrador;
	}

	public void setIdAdministrador(Integer idAdministrador) {
		this.idAdministrador = idAdministrador;
	}

	public Integer getIdPacoteViagem() {
		return idPacoteViagem;
	}

	public void setIdPacoteViagem(Integer idPacoteViagem) {
		this.idPacoteViagem = idPacoteViagem;
	}

	@Override
	public void create() {

	}

	@Override
	public void update() {

	}

	@Override
	public void delete() {

	}

	@Override
	public void readAll() {

	}

}
