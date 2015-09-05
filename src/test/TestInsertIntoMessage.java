package test;

import connDB.InsertInfo;

public class TestInsertIntoMessage
{
	public static void main(String[] args)
	{
		if(InsertInfo.message(2, 1, "使用测试类，测试第三次插入！", "我使用人工设定测试一下在哪里有问题！就是为了玩玩！！"))
			System.out.println("插入成功");
		else
			System.out.println("插入失败！");
	}
}
