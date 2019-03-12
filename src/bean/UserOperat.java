package bean;

import java.util.*;

public interface UserOperat {
	public int adduser(UserBean userb); //添加用户
	public int addma(UserBean userb); //添加管理员
	public int deleteuser(String memid);//删除
	public int updateuser(UserBean userb);//修改
	public UserBean selectuserbyid(String memid);//查找
	public List<UserBean> getalluser();  //获取所有用户
}
