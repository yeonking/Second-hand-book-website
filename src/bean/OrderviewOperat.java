package bean;

import java.util.List;

public interface OrderviewOperat {
	public List<OrderviewBean> getallorderview();
	public List<OrderviewBean> getorderviewbymemid(String memid);
}
