package agenciamvc.model.DAO;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import agenciamvc.db.Db;
import agenciamvc.db.DbIntegrityException;
import agenciamvc.model.CarrinhoCompra;
import agenciamvc.model.interfaces.IGenericDAO;

public class CarrinhoCompraDAO extends PadraoDao implements IGenericDAO<CarrinhoCompra> {

	public CarrinhoCompraDAO() {
		super();
	}

	@Override
	public Integer save(CarrinhoCompra obj) {
		try {
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement(
					"INSERT INTO CarrinhoCompra (valorTotal ,formaPagamento ,quantItems ,fkCliente) VALUES (?,?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			super.pst.setDouble(1, obj.getValorTotal());
			super.pst.setInt(2, obj.getFormaPagamento());
			super.pst.setInt(3, obj.getQuantItems());
			super.pst.setInt(4, obj.getIdCliente());

			int linhasAlteradas = super.pst.executeUpdate();
			if (linhasAlteradas > 0) {
				int id = 0;
				super.rs = super.pst.getGeneratedKeys();
				while (super.rs.next()) {
					id = super.rs.getInt(1);
				}
				return id;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}
		return 0;
	}

	@Override
	public void update(CarrinhoCompra obj) {
		try {
			super.c1 = Db.getConnection();
			super.pst = c1.prepareStatement(
					"UPDATE CarrinhoCompra SET  CarrinhoCompra.formaPagamento=? WHERE CarrinhoCompra.idCarrinho = ?");
			super.pst.setInt(1, obj.getFormaPagamento());
			super.pst.setInt(2, obj.getId());
			super.pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Db.closePreparedStatement(super.pst);
		}
	}

	@Override
	public void delete(CarrinhoCompra obj) {
		try {
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement("DELETE FROM CarrinhoCompra WHERE CarrinhoCompra.idCarrinho =?");
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
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement("DELETE FROM CarrinhoCompra WHERE CarrinhoCompra.idCarrinho=?");
			pst.setInt(1, id);
			super.pst.executeUpdate();
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closePreparedStatement(super.pst);
		}
	}
	
	@Override
	public CarrinhoCompra findById(Integer id) {
		CarrinhoCompra u = null;
		try {
			super.c1 = Db.getConnection();
			super.pst = super.c1.prepareStatement("SELECT FROM CarrinhoCompra WHERE CarrinhoCompra.idCarrinho =?");
			super.rs = super.pst.executeQuery();
			super.rs.first();
			u = new CarrinhoCompra(super.rs.getInt("idCarrinho"), super.rs.getDouble("valorTotal"), super.rs.getInt("formaPagamento"),
					super.rs.getInt("quantItems"), super.rs.getInt("fkCliente"));
			return u;
		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closePreparedStatement(super.pst);
			Db.closeResultSet(super.rs);
		}
	}

	@Override
	public ArrayList<CarrinhoCompra> findAll() {
		ArrayList<CarrinhoCompra> usuarios = new ArrayList<CarrinhoCompra>();
		try {
			super.c1 = Db.getConnection();
			super.st = c1.createStatement();
			super.rs = super.st.executeQuery("SELECT * FROM CarrinhoCompra");
			while (super.rs.next()) {
				CarrinhoCompra u = new CarrinhoCompra(super.rs.getInt("idCarrinho"), super.rs.getDouble("valorTotal"), super.rs.getInt("formaPagamento"),
					super.rs.getInt("quantItems"), super.rs.getInt("fkCliente"));
				usuarios.add(u);
			}
			return usuarios;

		} catch (SQLException e) {
			throw new DbIntegrityException(e.getMessage());
		} finally {
			Db.closeStatement(super.st);
			Db.closeResultSet(super.rs);
		}
	}

}