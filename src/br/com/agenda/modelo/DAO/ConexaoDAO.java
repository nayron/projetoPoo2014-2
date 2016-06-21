package br.com.agenda.modelo.DAO;

import java.sql.*;


import javax.swing.JOptionPane;

public class ConexaoDAO {

	// Estabelecar Conexao e Fechar Conexao...etc
	

	private static Connection conn;
	
	public static Connection getConexao() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			JOptionPane
					.showMessageDialog(null, "Erro! \n Nao foi poss�vel carrgar o driver \n- com.mysql.jdbc.Driver");
		}
		try {
			conn = DriverManager.getConnection("jdbc:mySQL://localhost:3306/banco_agenda","root","abc123");
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Erro!\n N�o foi poss�vel estabelecer conex�o com o banco de dados");
		}
		
		return conn;
	}
	public static void encerraConexao(Connection conn){
		try {
			conn.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Erro!\n Nao foi possível fechar a conexao do banco de dados");
		}
	}
	public static void encerraStm(Statement stmt){
		
		try {
			stmt.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Erro!\n Nao foi poss�vel fechar o PreparedStatement do inserir");
		}
	}
	public static void encerraStm(PreparedStatement stmt){
		try {
			stmt.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Erro!\n Nao foi possível fechar o PreparedStatement do inserir");
		}
	}
}
