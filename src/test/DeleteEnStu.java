package test;

import connDB.DeleteInfo;

public class DeleteEnStu
{
	public static void main(String[] args)
	{
		if(DeleteInfo.deleteEnStu(8))
			System.out.println("É¾³ý³É¹¦");
		else 
			System.out.println("É¾³ýÊ§°Ü");
	}
}
