package bean;

public class OrderBean {
	private String dbOrderID;    //订单号
	private String dbMemberID;   //用户
	private float dbTotalPrice; //总价
	private String dbOrderTime;  //下单时间
	
	public String getDbOrderID() {
		return dbOrderID;
	}
	public void setDbOrderID(String dbOrderID) {
		this.dbOrderID = dbOrderID;
	}
	public String getDbMemberID() {
		return dbMemberID;
	}
	public void setDbMemberID(String dbMemberID) {
		this.dbMemberID = dbMemberID;
	}
	
	public String getDbOrderTime() {
		return dbOrderTime;
	}
	public void setDbOrderTime(String dbOrderTime) {
		this.dbOrderTime = dbOrderTime;
	}
	public float getDbTotalPrice() {
		return dbTotalPrice;
	}
	public void setDbTotalPrice(float dbTotalPrice) {
		this.dbTotalPrice = dbTotalPrice;
	}

}
