package com.dorm.controller.vo;

import java.util.Arrays;
//封装与富文本编辑器 WangEditor 图片上传功能对应的后端响应数据
public class WangEditor {
	private Integer errno; //错误代码，0 表示没有错误。
	private String[] data; //已上传的图片路径
	
	public WangEditor() {
		super();
	}
	public WangEditor(String[] data) {
		super();
		this.errno = 0;
		this.data = data;
	}
	public Integer getErrno() {
		return errno;
	}
	public void setErrno(Integer errno) {
		this.errno = errno;
	}
	public String[] getData() {
		return data;
	}
	public void setData(String[] data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "WangEditor [errno=" + errno + ", data=" + Arrays.toString(data)
				+ "]";
	}
}
