<%@ page language="java" import="java.util.*" pageEncoding="GB18030" contentType="image/jpeg" import="java.awt.*,
java.awt.image.*,java.util.*,javax.imageio.*" %>
<%!
Color getRandColor(int fc,int bc){//给定范围获得随机颜色
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
        }
%>
<%
//设置页面不缓存
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control","no-cache");
response.setDateHeader("Expires", 0);

// 在内存中创建图象
int width=60, height=20;
BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

// 获取图形上下文
Graphics g = image.getGraphics();

//生成随机类
Random random = new Random();

// 设定背景色
g.setColor(getRandColor(200,250));
g.fillRect(0, 0, width, height);

//设定字体(可使用特殊字体加强干扰)
g.setFont(new Font("Comic Sans MS",Font.PLAIN,18));





// 随机产生60条干扰线，使图象中的认证码不易被其它程序探测到
for (int i=0;i<60;i++)
{
	g.setColor(getRandColor(80,160));
    int x = random.nextInt(width);
    int y = random.nextInt(height);
    int xl = random.nextInt(18);
    int yl = random.nextInt(18);
    g.drawLine(x,y,x+xl,y+yl);
}



/* // 取随机产生的认证码(4位数字)
String sRand="";
for (int i=0;i<4;i++){
    String rand=String.valueOf(random.nextInt(10));
    sRand+=rand;
    // 将认证码显示到图象中
    g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
    g.drawString(rand,13*i+6,16);
} */

//生成随机数字和字母
String sRand="";
for (int i=0;i<4;i++){
	int r=random.nextInt(123);
	String rand=r+"";
	if((r>=65&&r<=90)||(r>=97&&r<=122)){
	      rand=(char)r+"";
	}else{
	      rand=rand.charAt(0)+"";
	}
	sRand+=rand;
    // 将认证码显示到图象中
    g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
    g.drawString(rand,13*i+6,16);
}

// 将认证码存入SESSION
session.setAttribute("rand",sRand);

// 图象生效
g.dispose();

// 输出图象到页面
ImageIO.write(image, "JPEG", response.getOutputStream());
// 清空流，返回新out对象
out.clear();
out = pageContext.pushBody();

%>