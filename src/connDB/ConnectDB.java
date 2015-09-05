package connDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectDB
{
	public static Connection getConnection()
	{
		Connection connection = null;
		String url = "jdbc:mysql://localhost/joystudy";
		String userNo = "root";
		String userPasswd = "root";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		try
		{
			connection = DriverManager.getConnection(url, userNo, userPasswd);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return connection;
	}

	public static Statement createStatement(Connection conn)
	{
		Statement statement = null;
		try
		{
			statement = conn.createStatement();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return statement;
	}

	public static PreparedStatement prepareStmt(Connection conn, String sql)
	{
		PreparedStatement pstmt = null;
		try
		{
			pstmt = conn.prepareStatement(sql);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return pstmt;
	}
	
	public static ResultSet executeQuery(Statement stmt, String sql) {
		ResultSet rs = null;
		try {
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public static void close(Connection conn)
	{
		if(conn != null)
		{
			try
			{
				conn.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			conn = null;
		}
	}

	public static void close(Statement stmt)
	{
		if(stmt != null)
		{
			try
			{
				stmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			stmt = null;
		}
	}

	public static void close(ResultSet rs)
	{
		if(rs != null)
		{
			try
			{
				rs.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			rs = null;
		}
	}
	
	public static void close(PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try
			{
				pstmt.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			pstmt = null;
		}
		
	}
}
