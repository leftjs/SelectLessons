package model;

public class User
{
	private int uID;
	
	private String userName;

	private String password;

	private String realName;

	private String email;

	private String sex;

	private int type=3;
	
	public User()
	{
		this(0, null, null, null, null, null, 3);
	}
	
	public User(int uID, String userName, String password, String realName, String email, String sex, int type)
	{
		this.uID = uID;
		this.userName = userName;
		this.password = password;
		this.realName = realName;
		this.email = email;
		this.sex = sex;
		this.type = type;
	}

	public int getUID()
	{
		return uID;
	}

	public void setUID(int uid)
	{
		uID = uid;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getRealName()
	{
		return realName;
	}

	public void setRealName(String realName)
	{
		this.realName = realName;
	}

	public String getSex()
	{
		return sex;
	}

	public void setSex(String sex)
	{
		this.sex = sex;
	}

	public int getType()
	{
		return type;
	}

	public void setType(int type)
	{
		this.type = type;
	}

	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}
}
