/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package maquina.pkg2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Aluno
 */
public class conexao {
    
/**
 *
 * @author CAMPOI
 */

      public static Statement statement = null;

    // String com o caminho onde está o banco de dados
    String URL = "jdbc:mysql://carmine/2dsa_davi_maquina";
    String usuario = "aluno";
    //Senha
    String senha = "etec@147";
    // Variavel para o comando SQL
    private Statement stm = null;
    // Variavel para a conexão
    private Connection conexao = null;
 
    // Métodos Conectar e Desconectar Banco de Dados 
    // =============================================

    public void conectar() throws ClassNotFoundException, SQLException {
       
        // Carga do driver de conexão
        Class.forName("com.mysql.jdbc.Driver");
        // Fazendo a conexão
        conexao = DriverManager.getConnection(URL, usuario, senha);
        statement = (Statement) conexao.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    }

    public void desconectar() throws SQLException{
           
        // Fechando a conexão
        conexao.close();
    }
public static int runSQL(String sql) 
    {
        int qtdreg = 0;
     
      try
      {        
         qtdreg = statement.executeUpdate(sql);
      }
      catch(SQLException sqlex)
      {
         System.out.println("Erro acesso ao BD"+ sqlex);
      }
      return qtdreg;
    
    
}
}


