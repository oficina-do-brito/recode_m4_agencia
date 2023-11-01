package DAO;

import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import DAO.interfaces.IGenericDAO;
import db.Db;
import db.DbIntegrityException;
import model.PacoteViagem;

public class PacoteViagemDAO extends PadraoDao implements IGenericDAO<PacoteViagem> {
	private String sql;

	public PacoteViagemDAO() {
		super();
	}

	@Override
	public void create(PacoteViagem obj) {
		try {
			this.sql = "INSERT INTO PacoteViagem (titulo,valorDesconto,precoTotal,possuiHospedagem,status,meioTransporte,imagem,prazoCancelamento,dataViagem) VALUES (?,?,?,?,?,?,?,?,?)";
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(this.sql);
			super.pst.setString(1, obj.getTitulo());
			super.pst.setInt(2, obj.getValorDesconto());
			super.pst.setDouble(3, obj.getPrecoTotal());
			super.pst.setString(4, obj.getPossuiHospedagem());
			super.pst.setString(5, obj.getStatus());
			super.pst.setString(6, obj.getMeioTransporte());
			super.pst.setString(7, obj.getImagem());
			super.pst.setInt(8, obj.getPrazoCancelamento());
			// Converte Localdate para sqldate -> Date.valueOf()
			super.pst.setDate(9, Date.valueOf(obj.getDataViagem()));

			super.pst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}
	}

	@Override
	public void update(PacoteViagem obj) {
		this.sql = "UPDATE PacoteViagem SET  PacoteViagem.titulo=?, PacoteViagem.valorDesconto=?,\r\n"
				+ "PacoteViagem.possuiHospedagem=?, PacoteViagem.status=?,PacoteViagem.meioTransporte=?,\r\n"
				+ "PacoteViagem.imagem=?, PacoteViagem.prazoCancelamento=?, dataViagem=? WHERE PacoteViagem.idPacote = ?";
		try {

			super.c1 = Db.getConnection();
			super.pst = c1.prepareStatement(this.sql);
			super.pst.setString(1, obj.getTitulo());
			super.pst.setInt(2, obj.getValorDesconto());
			super.pst.setString(3, obj.getPossuiHospedagem());
			super.pst.setString(4, obj.getStatus());
			super.pst.setString(5, obj.getMeioTransporte());
			super.pst.setString(6, obj.getImagem());
			super.pst.setInt(7, obj.getPrazoCancelamento());
			super.pst.setDate(8, Date.valueOf(obj.getDataViagem()));
			super.pst.setInt(9, obj.getId());
			super.pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Db.closePreparedStatement(super.pst);
		}
	}

	@Override
	public void delete(PacoteViagem obj) {
		try {
			this.sql = "DELETE FROM PacoteViagem WHERE PacoteViagem.idPacote =?";
			super.c1 = Db.getConnection();
			super.pst = c1.prepareStatement(this.sql);
			pst.setInt(1, obj.getId());
			super.pst.executeUpdate();
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closePreparedStatement(super.pst);
		}
	}

	@Override
	public void deleteById(Integer id) {
		try {
			super.c1 = Db.getConnection();
			super.pst = c1.prepareStatement("DELETE FROM PacoteViagem WHERE PacoteViagem.idPacote =?");
			super.pst.setInt(1, id);

			super.pst.executeUpdate();
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closeStatement(super.pst);
		}
	}

	@Override
	public PacoteViagem findById(Integer id) {
		this.sql = "SELECT * FROM PacoteViagem WHERE PacoteViagem.idPacote =?";
		try {
			PacoteViagem p = new PacoteViagem();
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(this.sql);
			super.pst.setInt(1, id);
			super.rs = super.pst.executeQuery();
			while (super.rs.next()) {
				p.setId(super.rs.getInt("idPacote"));
				p.setTitulo(super.rs.getString("titulo"));
				p.setValorDesconto(super.rs.getInt("valorDesconto"));
				p.setPrecoTotal(super.rs.getDouble("precoTotal"));
				p.setPossuiHospedagem(super.rs.getString("possuiHospedagem"));
				p.setStatus(super.rs.getString("status"));
				p.setMeioTransporte(super.rs.getString("meioTransporte"));
				p.setImagem(super.rs.getString("imagem"));
				p.setPrazoCancelamento(super.rs.getInt("prazoCancelamento"));
				// pegar data sql e converter devoltapra localdate
				p.setDataViagem(super.rs.getDate("dataViagem").toLocalDate());
			}
			return p;
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}
	}

	@Override
	public ArrayList<PacoteViagem> findAll() {
		try {
			this.sql = "SELECT * FROM PacoteViagem";
			ArrayList<PacoteViagem> pacoteViagems = new ArrayList<PacoteViagem>();
			super.c1 = Db.getConnection();
			super.st = c1.createStatement();
			super.rs = super.st.executeQuery(this.sql);
			while (super.rs.next()) {
				PacoteViagem p = new PacoteViagem();
				p.setId(super.rs.getInt("idPacote"));
				p.setTitulo(super.rs.getString("titulo"));
				p.setValorDesconto(super.rs.getInt("valorDesconto"));
				p.setPrecoTotal(super.rs.getDouble("precoTotal"));
				p.setPossuiHospedagem(super.rs.getString("possuiHospedagem"));
				p.setStatus(super.rs.getString("status"));
				p.setMeioTransporte(super.rs.getString("meioTransporte"));
				p.setImagem(super.rs.getString("imagem"));
				p.setPrazoCancelamento(super.rs.getInt("prazoCancelamento"));
				pacoteViagems.add(p);
			}
			return pacoteViagems;
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}

	}
}
