package model;

public class Message
{
	private int userID;

	private int courseID;

	private String mgTitle;

	private String mgContent;

	public int getCourseID()
	{
		return courseID;
	}

	public void setCourseID(int courseID)
	{
		this.courseID = courseID;
	}

	public String getMgContent()
	{
		return mgContent;
	}

	public void setMgContent(String mgContent)
	{
		this.mgContent = mgContent;
	}

	public String getMgTitle()
	{
		return mgTitle;
	}

	public void setMgTitle(String mgTitle)
	{
		this.mgTitle = mgTitle;
	}

	public int getUserID()
	{
		return userID;
	}

	public void setUserID(int userID)
	{
		this.userID = userID;
	}
}
