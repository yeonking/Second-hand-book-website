package bean;

import java.util.List;

public interface CollectionOperat {
	public int addcollectifon(CollectionBean collectionb); //添加
	public int deletecollection(String bookid,String memid);//删除
	public List<BookBean> selectcollect(String memid);//查找
	public CollectionBean selectcollectbyid(String bookid,String memid);//查找
}
