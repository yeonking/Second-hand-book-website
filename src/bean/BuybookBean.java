package bean;

public class BuybookBean {
	
	private String dbBuyOrderID;
	private String dbBookID;
	private String dbBookName;
	private double dbPrice;
	private int dbAmounts;
	private String dbimage;
	public String getDbBookID() {
		return dbBookID;
	}
	public void setDbBookID(String dbBookID) {
		this.dbBookID = dbBookID;
	}
	public String getDbBuyOrderID() {
		return dbBuyOrderID;
	}
	public void setDbBuyOrderID(String dbBuyOrderID) {
		this.dbBuyOrderID = dbBuyOrderID;
	}
	
	public int getDbAmounts() {
		return dbAmounts;
	}
	public void setDbAmounts(int dbAmounts) {
		this.dbAmounts = dbAmounts;
	}
	public double getDbPrice() {
		return dbPrice;
	}
	public void setDbPrice(double dbPrice) {
		this.dbPrice = dbPrice;
	}
	public String getDbBookName() {
		return dbBookName;
	}
	public void setDbBookName(String dbBookName) {
		this.dbBookName = dbBookName;
	}
	public String getDbimage() {
		return dbimage;
	}
	public void setDbimage(String dbimage) {
		this.dbimage = dbimage;
	}
}
