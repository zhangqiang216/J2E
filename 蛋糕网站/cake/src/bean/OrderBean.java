package bean;

import java.util.List;

public class OrderBean {
	private int orderId;
	private int userId;
	private String orderTime;
	private String orderState;
	private List<OrderDetailBean> orderDetailList;
	private int delete;
	
	
	
	public OrderBean(int orderId, int userId, String orderTime, String orderState,
			List<OrderDetailBean> orderDetailList, int delete) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.orderTime = orderTime;
		this.orderState = orderState;
		this.orderDetailList = orderDetailList;
		this.delete = delete;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public List<OrderDetailBean> getOrderDetailList() {
		return orderDetailList;
	}
	public void setOrderDetailList(List<OrderDetailBean> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}
	public int getDelete() {
		return delete;
	}
	public void setDelete(int delete) {
		this.delete = delete;
	}
	
	
	
	

}
