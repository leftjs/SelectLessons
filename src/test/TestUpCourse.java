package test;

import connDB.UpdateInfo;

public class TestUpCourse
{
	public static void main(String[] args)
	{
		if(UpdateInfo.upCouseInfo(8, "ToJavaSE"))
			System.out.println("课程修改成功");
		else
			System.out.println("失败");
	}
}
