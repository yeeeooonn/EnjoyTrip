package com.ssafy.attraction_description.model;

public class AttractionDescriptionDto {
	private int content_id;
	private String hompage;
	private String overview;
	private String telname;
	public AttractionDescriptionDto(int content_id, String hompage, String overview, String telname) {
		super();
		this.content_id = content_id;
		this.hompage = hompage;
		this.overview = overview;
		this.telname = telname;
	}
	public int getContent_id() {
		return content_id;
	}
	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}
	public String getHompage() {
		return hompage;
	}
	public void setHompage(String hompage) {
		this.hompage = hompage;
	}
	
	public String getTelname() {
		return telname;
	}
	public void setTelname(String telname) {
		this.telname = telname;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	@Override
	public String toString() {
		return "AttractionDescriptionDto [content_id=" + content_id + ", hompage=" + hompage + ", overview=" + overview
				+ ", telname=" + telname + "]";
	}
	
	
	
}
