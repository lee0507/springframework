package com.mycompany.webapp.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ch07Board {
	private int no;
	private String title;
	private String content;
	private String writer;
	private Date date;

//	public Ch07Board(int no, String title, String content, String writer, Date date) {
//		this.no = no;
//		this.title = title;
//		this.content = content;
//		this.writer = writer;
//		this.date = date;
//	}
}
