package bean;

public class OrderDetailBean {
	
	private int orderDetailId;
	private int orderId;
	private CakeBean cake;
	private int count;
	public OrderDetailBean(int orderDetailId, int orderId, CakeBean cake, int count) {
		super();
		this.orderDetailId = orderDetailId;
		this.orderId = orderId;
		this.cake = cake;
		this.count = count;
	}
	public int getOrderDetailId() {
		return orderDetailId;
	}
	public void setOrderDetailId(int orderDetailId) {
		this.orderDetailId = orderDetailId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public CakeBean getCake() {
		return cake;
	}
	public void setCake(CakeBean cake) {
		this.cake = cake;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	

}
