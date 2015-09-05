package connDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddInfo
{
	public static boolean addMessage(int uID, int csID, String mgTitle,
			String mgContent)
	{
		boolean successed = false;
		String sql = "Insert Into messageTB(userID, courseID, mgTitle,mgContent) "
				+ "Values(?, ?, ?, ?)";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			pstmt.setInt(1, uID);
			pstmt.setInt(2, csID);
			pstmt.setString(3, mgTitle);
			pstmt.setString(4, mgContent);
			
			successed = pstmt.execute();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return successed;
	}
}
