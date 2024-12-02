package org.ja2pyc.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int tblBoardId;
	private String tblBoardTitle;
	private String tblBoardContent;
	private String tblBoardWriter;
	private Date tblRegDate;
	private Date tblUpdateDate;
}
