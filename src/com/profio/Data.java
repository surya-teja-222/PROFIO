package com.profio;

public class Data {
	String mail;
	String rmail,name,workplace,profession,country,city,num,gender;
	String hasedu,hascer,hasworkexp;
	String social;//expand all accordingly
	String work;
	String showedu,showcert,showwork;
	String shownum,showmail,showsocial;
	public Data(String mail, String rmail, String name, String workplace, String profession, String work,
			String country, String city, String num, String hasedu, String hascer, String hasworkexp, String social,
			String showedu, String showcert, String showwork, String shownum, String showmail, String showsocial) {
		super();
		this.mail = mail;
		this.rmail = rmail;
		this.name = name;
		this.workplace = workplace;
		this.profession = profession;
		this.work = work;
		this.country = country;
		this.city = city;
		this.num = num;
		this.hasedu = hasedu;
		this.hascer = hascer;
		this.hasworkexp = hasworkexp;
		this.social = social;
		this.showedu = showedu;
		this.showcert = showcert;
		this.showwork = showwork;
		this.shownum = shownum;
		this.showmail = showmail;
		this.showsocial = showsocial;
	}
	public String getMail() {
		return ""+mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getRmail() {
		return rmail;
	}
	public void setRmail(String rmail) {
		this.rmail = rmail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getWork() {
		return work;
	}
	public void setWork(String work) {
		this.work = work;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getHasedu() {
		return hasedu;
	}
	public void setHasedu(String hasedu) {
		this.hasedu = hasedu;
	}
	public String getHascer() {
		return hascer;
	}
	public void setHascer(String hascer) {
		this.hascer = hascer;
	}
	public String getHasworkexp() {
		return hasworkexp;
	}
	public void setHasworkexp(String hasworkexp) {
		this.hasworkexp = hasworkexp;
	}
	public String getSocial() {
		return social;
	}
	public void setSocial(String social) {
		this.social = social;
	}
	public String getShowedu() {
		return showedu;
	}
	public void setShowedu(String showedu) {
		this.showedu = showedu;
	}
	public String getShowcert() {
		return showcert;
	}
	public void setShowcert(String showcert) {
		this.showcert = showcert;
	}
	public String getShowwork() {
		return showwork;
	}
	public void setShowwork(String showwork) {
		this.showwork = showwork;
	}
	public String getShownum() {
		return shownum;
	}
	public void setShownum(String shownum) {
		this.shownum = shownum;
	}
	public String getShowmail() {
		return showmail;
	}
	public void setShowmail(String showmail) {
		this.showmail = showmail;
	}
	public String getShowsocial() {
		return showsocial;
	}
	public void setShowsocial(String showsocial) {
		this.showsocial = showsocial;
	}
	
	
}
