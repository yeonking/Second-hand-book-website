package bean;

import java.util.*;

public interface BookOperat {
	public int addbook(BookBean bookb); //添加
	public int deletebook(String bookid);//删除
	public int updatebook(BookBean bookb);//修改
	public BookBean selectbookbyid(String bookid);//查找
	public List<BookBean> selectbookbyname(String bookname);//查找
	public List<BookBean> getallbook();  //获取所有书本
	public List<BookBean> selectbookbycate(String bookcate);//获取分类中的书本
	public int selectmaxbookid();//图书号最大数
}
