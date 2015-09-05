package test;

import java.sql.ResultSet;
import java.sql.SQLException;
import connDB.GetInfo;

public class TestViewStudent
{
	public static void main(String[] args)
	{
		   String realName = null;
		   String csName = null;
		   int enGrade =  0;
		   int enID = 0;
		   
		ResultSet rs = GetInfo.getStudentWithUID(2);
		
		   try
		{
			while(rs.next())
			   {
				   realName = rs.getString("realName");
				   csName = rs.getString("csName");
				   enGrade = rs.getInt("enGrade");
				   enID = rs.getInt("enID");
				   
				   System.out.println(realName+"\t"+csName+"\t"+enGrade+"\t"+enID+"\n");
			   }
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
			
	}
}
