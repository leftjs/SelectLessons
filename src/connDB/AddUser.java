package connDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddUser
{
	public static boolean addUser(String userName, String password,
			String realName, String email, String sex, int type)
	{
		Connection conn = ConnectDB.getConnection();
		boolean addSuccessed = false;
		String sql = "Insert Into userTB(userName, password, realName, email, sex, type) Values(?,?,?,?,?,?)";
		PreparedStatement pstmt = ConnectDB.prepareStmt(conn, sql);
		try
		{
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			pstmt.setString(3, realName);
			pstmt.setString(4, email);
			pstmt.setString(5, sex);
			pstmt.setInt(6, type);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		try
		{
			addSuccessed = pstmt.execute();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return addSuccessed;
	}
}
