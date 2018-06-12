package com.css.jsp.comm;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static final  String FMT_FORE="yyyy-MM-dd HH:mm:ss";
	public static final String FMT_BACK="yyyyƒÍMM‘¬dd»’";
		
	public static String formatDate(Date date,String fmt){
		SimpleDateFormat sdf=new SimpleDateFormat(fmt);
		return sdf.format(date);
	}

	public static void main(String[] args) {
		Date date=new Date();
		System.out.println(DateUtil.formatDate(date,DateUtil.FMT_BACK));
		System.out.println(DateUtil.formatDate(date,DateUtil.FMT_FORE));
	}

}
