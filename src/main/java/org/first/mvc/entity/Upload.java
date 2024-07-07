package org.first.mvc.entity;

import java.util.Date;

public class Upload {
	
	private Integer idN247_up;
	
	private String up_fileName;
	
	private Date create;
	
	private Date lastModified;
	
	private Integer up_isDel;
	
	private Integer up_userId;
	
	private Integer up_postId;
	
	private Integer up_tabId;
	
	private Integer up_check;

	private String up_orgName;
	
	

	public String getUp_orgName() {
		return up_orgName;
	}

	public void setUp_orgName(String up_orgName) {
		this.up_orgName = up_orgName;
	}

	public Integer getUp_tabId() {
		return up_tabId;
	}

	public void setUp_tabId(Integer up_tabId) {
		this.up_tabId = up_tabId;
	}

	public Integer getUp_check() {
		return up_check;
	}

	public void setUp_check(Integer up_check) {
		this.up_check = up_check;
	}

	public Integer getIdN247_up() {
		return idN247_up;
	}

	public void setIdN247_up(Integer idN247_up) {
		this.idN247_up = idN247_up;
	}

	public String getUp_fileName() {
		return up_fileName;
	}

	public void setUp_fileName(String up_fileName) {
		this.up_fileName = up_fileName;
	}

	public Date getCreate() {
		return create;
	}

	public void setCreate(Date create) {
		this.create = create;
	}

	public Date getLastModified() {
		return lastModified;
	}

	public void setLastModified(Date lastModified) {
		this.lastModified = lastModified;
	}

	public Integer getUp_isDel() {
		return up_isDel;
	}

	public void setUp_isDel(Integer up_isDel) {
		this.up_isDel = up_isDel;
	}

	public Integer getUp_userId() {
		return up_userId;
	}

	public void setUp_userId(Integer up_userId) {
		this.up_userId = up_userId;
	}

	public Integer getUp_postId() {
		return up_postId;
	}

	public void setUp_postId(Integer up_postId) {
		this.up_postId = up_postId;
	}
	
	
	
}

