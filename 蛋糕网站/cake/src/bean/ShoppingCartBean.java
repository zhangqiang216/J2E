package bean;

public class ShoppingCartBean {
	private int shoppingCartId;
	private int userId;
	
	public ShoppingCartBean(int shoppingCartId, int userId) {
		super();
		this.shoppingCartId = shoppingCartId;
		this.userId = userId;
	}
	
	public int getShoppingCartId() {
		return shoppingCartId;
	}
	public void setShoppingCartId(int shoppingCartId) {
		this.shoppingCartId = shoppingCartId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	

}
