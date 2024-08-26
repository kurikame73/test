package com.yorizip.community.board;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class communityVO {
	private String com_id;
	private Integer com_num;
	private String com_title;
	private String com_content;
	private MultipartFile com_image;
	private Date com_ragdate;
	private Date com_update;
	private Integer com_like;
	
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public Integer getCom_num() {
		return com_num;
	}
	public void setCom_num(Integer com_num) {
		this.com_num = com_num;
	}
	public String getCom_title() {
		return com_title;
	}
	public void setCom_title(String com_title) {
		this.com_title = com_title;
	}
	public String getCom_content() {
		return com_content;
	}
	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}
	public MultipartFile getCom_image() {
		return com_image;
	}
	public void setCom_image(MultipartFile com_image) {
		this.com_image = com_image;
	}
	public Date getCom_ragdate() {
		return com_ragdate;
	}
	public void setCom_ragdate(Date com_ragdate) {
		this.com_ragdate = com_ragdate;
	}
	public Date getCom_update() {
		return com_update;
	}
	public void setCom_update(Date com_update) {
		this.com_update = com_update;
	}
	public Integer getCom_like() {
		return com_like;
	}
	public void setCom_like(Integer com_like) {
		this.com_like = com_like;
	}

	@Override
	public String toString() {
		return "communityVO [com_id=" + com_id + ", com_num=" + com_num + ", com_title=" + com_title + ", com_content="
				+ com_content + ", com_image=" + com_image + ", com_ragdate=" + com_ragdate + ", com_update="
				+ com_update + ", com_like=" + com_like + "]";
	}
	
}
