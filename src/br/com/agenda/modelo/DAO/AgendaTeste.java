package br.com.agenda.modelo.DAO;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.JOptionPane;

import br.com.agenda.modelo.entidades.Contato;
import br.com.agenda.modelo.entidades.DonoAgenda;
import br.com.agenda.modelo.entidades.Endereco;

public class AgendaTeste {

	
	public static void main(String[] args) {
		
		
		
		 Connection conn = ConexaoDAO.getConexao();
		try {
			Statement stmt = conn.createStatement();
			stmt.executeQuery("truncate `tbl_dono_agenda`");
			stmt.executeQuery("truncate `tbl_contato`");
			stmt.executeQuery("truncate `tbl_endereco`");
		
			JOptionPane.showMessageDialog(null, "Deu certo");
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Erro");
			e.printStackTrace();
		}
		
		
	}

}
