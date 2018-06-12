package com.css.jsp.comm;
/*
 * 作者：ray
 * 时间：Dec 30, 2007
 * 类声明：压缩图片线程控制类
 */
public class ZipThread extends Thread {
	
	public static void main(String[] args) {
		new ZipThread("", "", "welcome.jpg", "welcome2.jpg", 142, 118, true).start();
		//实例化线程控制压缩图片类
		//ZipThread z=new ZipThread(serverPath+"upload/", serverPath+"upload/zip/", timeStamp+".jpg", timeStamp+".jpg",142,118,true);
		//z.start();
	}
	//定义压缩文件类
	private CompressPicDemo cp=new CompressPicDemo();

	private String path1;
	private String path2;
	private String name1;
	private String name2;
	private int width;
	private int height;
	private boolean flag;
	public void run()
	{
		cp.compressPic(path1, path2, name1, name2, width, height, flag);
		
	}
	public ZipThread(String path1, String path2, String name1, String name2,
			int width, int height, boolean flag) {
		super();
		this.path1 = path1;
		this.path2 = path2;
		this.name1 = name1;
		this.name2 = name2;
		this.width = width;
		this.height = height;
		this.flag = flag;
	}
	
	public CompressPicDemo getCp() {
		return cp;
	}
	public void setCp(CompressPicDemo cp) {
		this.cp = cp;
	}
	public String getPath1() {
		return path1;
	}
	public void setPath1(String path1) {
		this.path1 = path1;
	}
	public String getPath2() {
		return path2;
	}
	public void setPath2(String path2) {
		this.path2 = path2;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
}
