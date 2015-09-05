package connDB;

import java.sql.SQLException;
import java.sql.Statement;

public class DeleteInfo
{
	public static boolean deleteMessage(int mgID)
	{
		boolean successed = false;
		String sql = "delete from messagetb where mgID=" + mgID;
		try
		{
			Statement stmt = ConnectDB.createStatement(ConnectDB
					.getConnection());
			successed = stmt.execute(sql);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}

	public static boolean deleteCourse(int csID)
	{
		boolean successed = false;
		String sql = "delete from coursetb where csID=" + csID;
		try
		{
			Statement stmt = ConnectDB.createStatement(ConnectDB
					.getConnection());
			successed = stmt.execute(sql);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}

	public static boolean deleteMe(int uID)
	{
		boolean successed = false;
		String sql = "delete from usertb where uID=" + uID;
		try
		{
			Statement stmt = ConnectDB.createStatement(ConnectDB
					.getConnection());
			successed = stmt.execute(sql);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}
	
	public static boolean deleteEnStu(int enID)
	{
		boolean successed = false;
		String sql = "delete from enrollmenttb where enID=" + enID;
		try
		{
			Statement stmt = ConnectDB.createStatement(ConnectDB
					.getConnection());
			successed = stmt.execute(sql);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}
	
	public static boolean deleteEnroll(int enID)
	{
		boolean successed = false;
		String sql = "delete from enrollmenttb where enID=" + enID;
		try
		{
			Statement stmt = ConnectDB.createStatement(ConnectDB
					.getConnection());
			successed = stmt.execute(sql);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return !successed;
	}
	
	
}
