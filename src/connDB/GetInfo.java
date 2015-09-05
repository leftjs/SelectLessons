package connDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetInfo
{
	public static ResultSet getAllMessage()
	{
		ResultSet rs = null;
		String sql = "Select  csName, userName, mgTitle, mgContent, mgID  "
				+ "From  userTB, courseTB, messageTB "
				+ "Where uID=userID And csID=courseID";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getMessage(int csID)
	{
		ResultSet rs = null;
		String sql = "Select  csName, realName, mgTitle, mgContent "
				+ "From userTB, courseTB, messageTB "
				+ "Where csID=courseID And userID=uID  And csID=" + csID;
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getCourseInfo()
	{
		ResultSet rs = null;
		String sql = "Select csName, realName, csID "
				+ "From courseTB, userTB " + "Where csTeacher=uID";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getCourseInfo(int csID)
	{
		ResultSet rs = null;
		String sql = "Select  csName, realName " + "From courseTB, userTB "
				+ "Where csTeacher=uID  And   csID=" + csID;
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getCourseMessage(int csID)
	{
		ResultSet rs = null;
		String sql = "Select  csName, userName, realName, email, sex, type, mgTitle, mgContent "
				+ "From userTB, courseTB, messageTB "
				+ "Where csID=courseID And userID=uID  And csID=" + csID;
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getStudentWithCsID(int csID)
	{
		ResultSet rs = null;
		String sql = "Select  realName,  csName,  enGrade, enID"
				+ "From enrollmentTB, userTB, courseTB "
				+ "Where enCourseID=csID  And  enUserID=uID And enCourseID="
				+ csID;
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getStudentWithUID(int uID)
	{
		ResultSet rs = null;
		String sql = "Select  userName, realName,  csName,  enGrade, enID  "
				+ "From enrollmentTB, userTB, courseTB "
				+ "Where enCourseID=csID  And  enUserID=uID And csID in "
				+ "(Select csID From courseTB Where csTeacher=?)";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			pstmt.setInt(1, uID);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getStudentWithNull()
	{
		ResultSet rs = null;
		String sql = "Select  realName,  csName,  enGrade, enID"
				+ "From enrollmentTB, userTB, courseTB "
				+ "Where enCourseID=csID  And  enUserID=uID And enUserID=";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getMyCourse(int uID)
	{
		ResultSet rs = null;
		String sql = "Select csName, teachTB.realName  As tRealName, csID, enID "
				+ "From userTB usTB, userTB teachTB, courseTB, enrollmentTB "
				+ "Where usTB.uID=enUserID  And encourseID=csID  And csTeacher=teachTB.uID   And usTB.uID=?";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			pstmt.setInt(1, uID);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}

	public static ResultSet getMyGrade(int uID)
	{
		ResultSet rs = null;
		String sql = "Select csName, enGrade " + "From courseTB, enrollmentTB "
				+ "Where encourseID=csID And  enUserID=?";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			pstmt.setInt(1, uID);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public static ResultSet getEnrollingCourse(int uID)
	{
		ResultSet rs = null;
		String sql = "Select  csName, realName, csID   From courseTB, userTB " +
				"Where csTeacher=uID  And csID  Not In (Select enCourseID From enrollmentTB Where enUserID=? ) ";
		try
		{
			PreparedStatement pstmt = ConnectDB.prepareStmt(ConnectDB
					.getConnection(), sql);
			pstmt.setInt(1, uID);
			rs = pstmt.executeQuery();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
	}
}
