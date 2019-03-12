package bean;

public class CartItem {
	private BookBean bookbean;
	private int quantity;
	public BookBean getBookbean() {
		return bookbean;
	}
	public void setBookbean(BookBean bookbean) {
		this.bookbean = bookbean;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
