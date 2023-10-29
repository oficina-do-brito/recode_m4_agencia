package model;

import java.util.ArrayList;

public class Administrador extends Usuario {
	private Integer nvRevisadas;

	private ArrayList<PacoteViagem> pacotes;

	public Administrador() {
		super();
		pacotes = new ArrayList<PacoteViagem>();
	}
	

	public Integer getNvRevisadas() {
		return nvRevisadas;
	}


	public void setNvRevisadas(Integer nvRevisadas) {
		this.nvRevisadas = nvRevisadas;
	}


	public ArrayList<PacoteViagem> getPacotes() {
		return pacotes;
	}

	public void setPacotes(ArrayList<PacoteViagem> pacotes) {
		this.pacotes = pacotes;
	}
}
