package connDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateInfo
{
	public static boolean upEnGrade(int enID, int enGrade)
	{
		boolean successed = false;
		String sql = "Update enrollmentTB Set enGrade=? Where enID=?";
		PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB.getConnection(), sql);
		try
		{
			pstmt.setInt(1, enGrade);
			pstmt.setInt(2, enID);
			
			successed = pstmt.execute();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return successed;
	}
	
	public static boolean upCouseInfo(int csID, String csName)
	{
		boolean successed = false;
		String sql = "Update courseTB Set csName=? Where csID=?";
		PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB.getConnection(), sql);
		try
		{
			pstmt.setString(1, csName);
			pstmt.setInt(2, csID);
			
			successed = pstmt.execute();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return successed;
	}
}
