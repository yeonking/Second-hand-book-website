package bean;

import java.util.List;

public interface BuybookOperat {
	public int addbuybook(BuybookBean buybookb); //添加用户
	public int deletebuybookbyorder(String orderid);//删除
	public List<BuybookBean> getallbuyorderid(String orderid);  //获取所有用户
}
