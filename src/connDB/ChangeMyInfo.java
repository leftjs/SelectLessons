package connDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ChangeMyInfo
{
	public static void changeMyInfo(int uID, String userName, String realName,
			String email, String sex)
	{
		Connection conn = ConnectDB.getConnection();
		String sql = "Update usertb Set userName=?, realName=?, email=?, sex=?  Where uID=?";
		PreparedStatement pstmt = ConnectDB.prepareStmt(conn, sql);
		try
		{
			pstmt.setString(1, userName);
			pstmt.setString(2, realName);
			pstmt.setString(3, email);
			pstmt.setString(4, sex);
			pstmt.setInt(5, uID);
			
			pstmt.executeUpdate();
		}
		catch(SQLException e1)
		{
			e1.printStackTrace();
		}
	}
}
