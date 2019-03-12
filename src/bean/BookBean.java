package bean;

public class BookBean {
	private String dbBookID;   //编号
	private String dbBookimage; //图片
	private String dbBookName;   //书名
	private String dbWriter;      //作者
	private String dbPublisher;   //出版社
	private String dbCategory;    //分类
	private String dbCourse;        //对应课程
	private double dbSellPrice;    //售价	
	private String dbBrief;       //简介
	
	public String getDbBookID() {
		return dbBookID;
	}
	public void setDbBookID(String dbBookID) {
		this.dbBookID = dbBookID;
	}
	public String getDbBookimage() {
		return dbBookimage;
	}
	public void setDbBookimage(String dbBookimage) {
		this.dbBookimage = dbBookimage;
	}
	public String getDbBookName() {
		return dbBookName;
	}
	public void setDbBookName(String dbBookName) {
		this.dbBookName = dbBookName;
	}
	public String getDbWriter() {
		return dbWriter;
	}
	public void setDbWriter(String dbWriter) {
		this.dbWriter = dbWriter;
	}
	public String getDbPublisher() {
		return dbPublisher;
	}
	public void setDbPublisher(String dbPublisher) {
		this.dbPublisher = dbPublisher;
	}
	public String getDbCategory() {
		return dbCategory;
	}
	public void setDbCategory(String dbCategory) {
		this.dbCategory = dbCategory;
	}
	public String getDbBrief() {
		return dbBrief;
	}
	public void setDbBrief(String dbBrief) {
		this.dbBrief = dbBrief;
	}
	
	public String getDbCourse() {
		return dbCourse;
	}
	public void setDbCourse(String dbCourse) {
		this.dbCourse = dbCourse;
	}
	public double getDbSellPrice() {
		return dbSellPrice;
	}
	public void setDbSellPrice(double dbSellPrice) {
		this.dbSellPrice = dbSellPrice;
	}
	
}
