package connDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ChangePwd
{
	public static boolean changePwd(int uID, String oldPwd, String newPwd,
			String ensurePwd)
	{
		boolean successed = false;
		Connection conn = ConnectDB.getConnection();
		String queryPasswd = "select password from usertb where uID=" + uID;
		Statement stmt = ConnectDB.createStatement(conn);
		ResultSet rs = ConnectDB.executeQuery(stmt, queryPasswd);
		String password = null;
		try
		{
			if(rs.next())
			{
				password = rs.getString("password");
			}
		}
		catch(SQLException e1)
		{
			e1.printStackTrace();
		}
		if(password.equals(oldPwd) && !"".equals(oldPwd)
				&& newPwd.equals(ensurePwd))
		{
			String sql = "Update usertb Set password=? Where uID=?";
			PreparedStatement pstmt = ConnectDB.prepareStmt(conn, sql);
			try
			{
				pstmt.setString(1, newPwd);
				pstmt.setInt(2, uID);
				
				successed = pstmt.execute();
			}
			catch(SQLException e1)
			{
				e1.printStackTrace();
			}
		}
		return successed;
		
	}
}
