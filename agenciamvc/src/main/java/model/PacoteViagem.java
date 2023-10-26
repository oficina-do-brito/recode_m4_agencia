package model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

public class PacoteViagem {
	private Integer id;
	private String titulo;
	private Integer valorDesconto;
	private double precoTotal;
	private String possuiHospedagem;
	private String status;
	private String meioTransporte;
	private String imagem;
	private int prazoCancelamento;
	private LocalDate dataViagem;

	public PacoteViagem() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Integer getValorDesconto() {
		return valorDesconto;
	}

	public void setValorDesconto(Integer valorDesconto) {
		this.valorDesconto = valorDesconto;
	}

	public double getPrecoTotal() {
		return precoTotal;
	}

	public void setPrecoTotal(double precoTotal) {
		this.precoTotal = precoTotal;
	}

	public String getPossuiHospedagem() {
		return possuiHospedagem;
	}

	public void setPossuiHospedagem(String possuiHospedagem) {
		this.possuiHospedagem = possuiHospedagem;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMeioTransporte() {
		return meioTransporte;
	}

	public void setMeioTransporte(String meioTransporte) {
		this.meioTransporte = meioTransporte;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public LocalDate getDataViagem() {
		return dataViagem;
	}

	public int getPrazoCancelamento() {
		return prazoCancelamento;
	}

	public void setPrazoCancelamento(int prazoCancelamento) {
		this.prazoCancelamento = prazoCancelamento;
	}

	public void setDataViagem(LocalDate dataViagem) {
		this.dataViagem = dataViagem;
	}
	

}
