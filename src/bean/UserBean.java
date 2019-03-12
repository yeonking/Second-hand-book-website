package bean;

public class UserBean {
	private String dbMemberID;   //账号
	private String dbMemberName; //姓名
	private String dbSex;        //性别
	private String dbBirth;      //出生年月
	private String dbYear;       //年
	private String dbMonth;      //月
	private String dbDate;       //日
	private String dbAdd;        //地址
	private String dbTel;        //电话
	private String dbEmail;      //邮箱
	private String dbMemberPassword;//密码
	private int dbIsManage;     //是否是管理员
	public String getDbMemberID() {
		return dbMemberID;
	}
	public void setDbMemberID(String dbMemberID) {
		this.dbMemberID = dbMemberID;
	}
	public String getDbMemberName() {
		return dbMemberName;
	}
	public void setDbMemberName(String dbMemberName) {
		this.dbMemberName = dbMemberName;
	}
	public String getDbSex() {
		return dbSex;
	}
	public void setDbSex(String dbSex) {
		this.dbSex = dbSex;
	}
	public String getDbBirth() {
		return dbBirth;
	}
	public void setDbBirth(String dbyear,String dbmonth,String dbdate) {
		this.dbBirth = dbyear+"-"+dbmonth+"-"+dbdate;
	}
	public String getDbAdd() {
		return dbAdd;
	}
	public void setDbAdd(String dbAdd) {
		this.dbAdd = dbAdd;
	}
	public String getDbTel() {
		return dbTel;
	}
	public void setDbTel(String dbTel) {
		this.dbTel = dbTel;
	}
	public String getDbEmail() {
		return dbEmail;
	}
	public void setDbEmail(String dbEmail) {
		this.dbEmail = dbEmail;
	}
	public String getDbMemberPassword() {
		return dbMemberPassword;
	}
	public void setDbMemberPassword(String dbMemberPassword) {
		this.dbMemberPassword = dbMemberPassword;
	}
	public String getDbYear() {
		return dbYear;
	}
	public void setDbYear(String dbYear) {
		this.dbYear = dbYear;
	}
	public String getDbMonth() {
		return dbMonth;
	}
	public void setDbMonth(String dbMonth) {
		this.dbMonth = dbMonth;
	}
	public String getDbDate() {
		return dbDate;
	}
	public void setDbDate(String dbDate) {
		this.dbDate = dbDate;
	}
	public int getDbIsManage() {
		return dbIsManage;
	}
	public void setDbIsManage(int dbIsManage) {
		this.dbIsManage = dbIsManage;
	}
}
