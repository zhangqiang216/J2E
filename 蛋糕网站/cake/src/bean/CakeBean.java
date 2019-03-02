package bean;

public class CakeBean {
	public CakeBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	private int cakeId;
	private String cakeName;
	private String cakeImageUrl;
	private String cakeType;
	private int cakeDiscount;
	private int cakePrice;
	private String cakeStyle;
	private double cakeSize;
	private String cakeColor;
	private String cakeShape;
	
	public CakeBean(int cakeId, String cakeName, String cakeImageUrl, String cakeType, int cakeDiscount, int cakePrice,
			String cakeStyle, double cakeSize, String cakeColor, String cakeShape) {
		super();
		this.cakeId = cakeId;
		this.cakeName = cakeName;
		this.cakeImageUrl = cakeImageUrl;
		this.cakeType = cakeType;
		this.cakeDiscount = cakeDiscount;
		this.cakePrice = cakePrice;
		this.cakeStyle = cakeStyle;
		this.cakeSize = cakeSize;
		this.cakeColor = cakeColor;
		this.cakeShape = cakeShape;
	}
	public int getCakeId() {
		return cakeId;
	}
	public void setCakeId(int cakeId) {
		this.cakeId = cakeId;
	}
	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public String getCakeImageUrl() {
		return cakeImageUrl;
	}
	public void setCakeImageUrl(String cakeImageUrl) {
		this.cakeImageUrl = cakeImageUrl;
	}
	public String getCakeType() {
		return cakeType;
	}
	public void setCakeType(String cakeType) {
		this.cakeType = cakeType;
	}
	public int getCakeDiscount() {
		return cakeDiscount;
	}
	public void setCakeDiscount(int cakeDiscount) {
		this.cakeDiscount = cakeDiscount;
	}
	public int getCakePrice() {
		return cakePrice;
	}
	public void setCakePrice(int cakePrice) {
		this.cakePrice = cakePrice;
	}
	public String getCakeStyle() {
		return cakeStyle;
	}
	public void setCakeStyle(String cakeStyle) {
		this.cakeStyle = cakeStyle;
	}
	public double getCakeSize() {
		return cakeSize;
	}
	public void setCakeSize(double cakeSize) {
		this.cakeSize = cakeSize;
	}
	public String getCakeColor() {
		return cakeColor;
	}
	public void setCakeColor(String cakeColor) {
		this.cakeColor = cakeColor;
	}
	public String getCakeShape() {
		return cakeShape;
	}
	public void setCakeShape(String cakeShape) {
		this.cakeShape = cakeShape;
	}
	
	
	
	

}
