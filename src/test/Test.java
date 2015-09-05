package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import connDB.ConnectDB;

public class Test
{
	/**
     * @param args
     */
	public static void main(String[] args)
	{
		String sql = "select * from usertb";
		Connection conn = ConnectDB.getConnection();
		Statement stmt = ConnectDB.createStatement(conn);
		ResultSet rs = ConnectDB.executeQuery(stmt, sql);
		int uID = -1;
		String userName = null;
		String password = null;
		try
		{
			while(rs.next())
			{
				uID = rs.getInt("uID");
				userName = rs.getString("userName");
				password = rs.getString("password");
				String realName = rs.getString("realName");
				String email = rs.getString("email");
				String sex = rs.getString("sex");
				int type = rs.getInt("type");
				if (password.equalsIgnoreCase("123")) 
					System.out.println("迷茫啊！！");
				System.out.println(uID + "\t\t" + userName + "\t\t" + password
						+ "\t\t" + realName + "\t\t" + email + "\t\t" + sex
						+ "\t\t" + type);
			}
		}
		catch(SQLException e)
		{
			// TODO 自动生成 catch 块
			e.printStackTrace();
		}
		
	}
}
