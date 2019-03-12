package bean;

import java.util.List;

public interface OrderOperat {
	public int addorder(OrderBean orderb); //添加
	public int deleteorder(String orderid);//删除
	public int updateorder(OrderBean orderb);//修改
	public OrderBean selectorderbyid(String orderid);//查找
	public List<OrderBean> getallorder();  //获取所有
	public List<OrderBean> getuserorder(String memid);  //获取所有
	public int selectmaxorderid();//获取订单号最大数
}
