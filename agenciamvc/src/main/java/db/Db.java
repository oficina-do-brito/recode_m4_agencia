package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Db {
	private static final String URL = "jdbc:mysql://localhost:3306/agencia?allowPublicKeyRetrieval=true";
	private static final String USUARIO = "root";
	private static final String SENHA = "root";
	private static final boolean USESSL= false;
	private static Connection conexao = null;

	public static Properties loadProps() {
			Properties props = new Properties();
			props.setProperty("user", USUARIO);
			props.setProperty("password", SENHA);
			props.setProperty("useSSL", USESSL+"");
			return props;
	}

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Encontrado!");
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
	
		if (conexao == null) {
			try {
				Properties props = loadProps();
				conexao = DriverManager.getConnection(URL, props);
			} catch (SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
		return conexao;
	}

	public static void closeConnection(Connection c) {
		if (c != null) {
			try {
				c.close();
			} catch (SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
	}

	public static void closeStatement(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
	}
	public static void closePreparedStatement(PreparedStatement pst) {
		if (pst != null) {
			try {
				pst.close();
			} catch (SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
	}
	public static void closeResultSet(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				throw new DbException(e.getMessage());
			}
		}
	}
}
