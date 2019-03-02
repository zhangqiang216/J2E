package bean;

public class CakeDetailBean {
	private int cakeDetailId;
	private int cakeId;
	private String cakeDetail;
	
	
	public CakeDetailBean(int cakeDetailId, int cakeId, String cakeDetail) {
		super();
		this.cakeDetailId = cakeDetailId;
		this.cakeId = cakeId;
		this.cakeDetail = cakeDetail;
	}
	public int getCakeDetailId() {
		return cakeDetailId;
	}
	public void setCakeDetailId(int cakeDetailId) {
		this.cakeDetailId = cakeDetailId;
	}
	public int getCakeId() {
		return cakeId;
	}
	public void setCakeId(int cakeId) {
		this.cakeId = cakeId;
	}
	public String getCakeDetail() {
		return cakeDetail;
	}
	public void setCakeDetail(String cakeDetail) {
		this.cakeDetail = cakeDetail;
	}
	

}
