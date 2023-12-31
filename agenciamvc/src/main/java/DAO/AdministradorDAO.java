package DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import DAO.interfaces.IGenericDAO;
import db.Db;
import db.DbIntegrityException;
import model.Administrador;

public class AdministradorDAO extends PadraoDao implements IGenericDAO<Administrador> {
	private String sql;

	public AdministradorDAO() {
		super();
	}
	
	@Override
	public void create(Administrador obj) {
		try {
			this.sql = "INSERT INTO Administrador (nome,email,password,telefone,imagem,dataLogin,tipoUsuario,nvRevisadas) VALUES (?,?,?,?,?,?,?,?)";
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(this.sql);
			
			super.pst.setString(1, obj.getNome());
			super.pst.setString(2, obj.getEmail());
			super.pst.setString(3, obj.getPassword());
			super.pst.setString(4, obj.getTelefone());
			super.pst.setString(5, obj.getImagem());
			super.pst.setDate(6, new java.sql.Date(Calendar.getInstance().getTime().getTime()));
			super.pst.setInt(7, obj.getTipoUsuario());
			super.pst.setInt(8, obj.getNvRevisadas());

			super.pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}
	}

	@Override
	public void update(Administrador obj) {
		try {
			this.sql = "UPDATE Administrador SET  Administrador.nvRevisadas=? WHERE Administrador.idAdministrador = ?";
			super.c1 = Db.getConnection();
			super.pst = c1.prepareStatement(this.sql);
			super.pst.setInt(1, obj.getNvRevisadas());
			super.pst.setInt(2, obj.getId());

			super.pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Db.closePreparedStatement(super.pst);
		}
	}

	@Override
	public void delete(Administrador obj) {
		try {
			this.sql = "DELETE FROM Administrador WHERE Administrador.idAdministrador =? ON CASCADE";
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(this.sql);
			super.pst.setInt(1, obj.getId());

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
			this.sql = "DELETE FROM Administrador WHERE Administrador.idAdministrador =?";
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(this.sql);
			pst.setInt(1, id);
			super.pst.executeUpdate();
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closeStatement(super.pst);
		}
	}

	@Override
	public Administrador findById(Integer id) {
		try {
			this.sql = "SELECT * FROM Administrador WHERE Administrador.idAdministrador=?";
			Administrador a = new Administrador();
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(this.sql);
			super.pst.setInt(1, id.intValue());
			super.rs = super.pst.executeQuery();
			while (super.rs.next()) {
				a.setId(super.rs.getInt("idAdministrador"));
				a.setNvRevisadas(super.rs.getInt("nvRevisadas"));

				a.setNome(super.rs.getString("nome"));
				a.setEmail(super.rs.getString("email"));
				a.setPassword(super.rs.getString("password"));
				a.setTelefone(super.rs.getString("telefone"));
				a.setImagem(super.rs.getString("imagem"));
				a.setTipoUsuario(super.rs.getInt("tipoUsuario"));
			}
			return a;
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}
		
	}

	@Override
	public ArrayList<Administrador> findAll() {
		this.sql = "SELECT * FROM  Administrador";
		ArrayList<Administrador> Administradors = new ArrayList<Administrador>();
		try {
			super.c1 = Db.getConnection();
			super.st = c1.createStatement();
			super.rs = super.st.executeQuery(this.sql);

			while (super.rs.next()) {
				Administrador a = new Administrador();
				a.setId(super.rs.getInt("idAdministrador"));
				a.setNome(super.rs.getString("nome"));
				a.setEmail(super.rs.getString("email"));
				a.setPassword(super.rs.getString("password"));
				a.setTelefone(super.rs.getString("telefone"));
				a.setImagem(super.rs.getString("imagem"));
				a.setTipoUsuario(super.rs.getInt("tipoUsuario"));
				a.setNvRevisadas(super.rs.getInt("nvRevisadas"));
				Administradors.add(a);
			}
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closeStatement(super.st);
		}
		return Administradors;
	}
	public Administrador findByEmailAndPassoword(String email, String password) {
		try {
			Administrador a = new Administrador();
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement("SELECT * FROM Administrador WHERE Administrador.email=? AND Administrador.password=?");
			super.pst.setString(1, email);
			super.pst.setString(2, password);
			super.rs = super.pst.executeQuery();
			while(super.rs.next()) {
				a.setId(super.rs.getInt("idAdministrador"));
				a.setNome(super.rs.getString("nome"));
				a.setEmail(super.rs.getString("email"));
				a.setPassword(super.rs.getString("password"));
				a.setTelefone(super.rs.getString("telefone"));
				a.setImagem(super.rs.getString("imagem"));
				a.setTipoUsuario(super.rs.getInt("tipoUsuario"));
				a.setNvRevisadas(super.rs.getInt("nvRevisadas"));
			}
			return a;
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closeStatement(super.st);
			Db.closeResultSet(super.rs);
		}
	}

}
