package connDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertInfo
{
	public static boolean message(int userID, int courseID, String mgTitle,
			String mgContent)
	{
		boolean successed = false;
		String sql = "Insert Into messageTB(userID, courseID, mgTitle, mgContent) Values(?,?,?,?)";
		PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
				.getConnection(), sql);
		try
		{
			pstmt.setInt(1, userID);
			pstmt.setInt(2, courseID);
			pstmt.setString(3, mgTitle);
			pstmt.setString(4, mgContent);
			
			successed = pstmt.execute();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}
	
	public static boolean enrollment(int uID, int csID)
	{
		boolean successed = false;
		String sql = "Insert Into enrollmentTB(enUserID, enCourseID) Values(?,?)";
		PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
				.getConnection(), sql);
		try
		{
			pstmt.setInt(1, uID);
			pstmt.setInt(2, csID);
			
			successed = pstmt.execute();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}
}
