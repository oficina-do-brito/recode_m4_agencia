package model;

import java.util.ArrayList;

public class Administrador extends Usuario {
	private Integer numeroViagemRevisadas;

	private ArrayList<PacoteViagem> pacotes;

	public Administrador() {
		super();
		pacotes = new ArrayList<PacoteViagem>();
	}

	public Integer getNumeroViagemRevisadas() {
		return numeroViagemRevisadas;
	}

	public void setNumeroViagemRevisadas(Integer numeroViagemRevisadas) {
		this.numeroViagemRevisadas = numeroViagemRevisadas;
	}

	public ArrayList<PacoteViagem> getPacotes() {
		return pacotes;
	}

	public void setPacotes(ArrayList<PacoteViagem> pacotes) {
		this.pacotes = pacotes;
	}

}
