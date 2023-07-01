package com.payment;

public class Payment {

	private String ID;
	private String refno;
	private String name;
	private String cardno;
	private String month;
	private int expyear;
	private int cvv;
	private float amount;
	
	public Payment(String iD, String refno, String name, String cardno, String month, int expyear, int cvv,float amount) {
		ID = iD;
		this.refno = refno;
		this.name = name;
		this.cardno = cardno;
		this.month = month;
		this.expyear = expyear;
		this.cvv = cvv;
		this.amount = amount;
	}

	public String getID() {
		return ID;
	}

	public String getRefno() {
		return refno;
	}

	public String getName() {
		return name;
	}

	public String getCardno() {
		return cardno;
	}

	public String getMonth() {
		return month;
	}

	public int getExpyear() {
		return expyear;
	}

	public int getCvv() {
		return cvv;
	}

	public float getAmount() {
		return amount;
	}

	
}
