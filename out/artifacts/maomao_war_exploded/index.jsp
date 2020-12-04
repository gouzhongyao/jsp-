<%@ page import="model.Contactfushi" %>
<%@ page import="dao.ContactDao" %>
<%@ page import="dao.ContactDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <TITLE>main</TITLE>
  <META http-equiv=Content-Type content="text/html; charset=gb2312">
  <META http-equiv=pragma content=no-cache>
  <META http-equiv=cache-control content=no-cache>
  <META http-equiv=expires content=0>
  <META http-equiv=keywords content=keyword1,keyword2,keyword3>
  <META http-equiv=description content="This is my page">
  <!DOCTYPE html>
  <html>
  <head lang="en">
    <script language="JavaScript">
      if (request.getAttribute("fla")==1)
      {
        alert("注册成功");
      }

    </script>
    <meta charset="UTF-8">
    <title>美妆大牌</title>
  </head>
  <link rel="stylesheet" type="text/css" href="wangye2.css">
  <body>
  <div id="mediu">
    <div class="daohang">
      <div>
        <img src="image/biaoti.png">
      </div>
      <input type="text"  name="userName" size="50" maxlength="20" class="sousuo"/>
      <a href="zhuce.jsp"><div class="sou"><p>搜索</p></div></a>

      <div class="lianjie">
        <ul>
          <a href="index.html"><li>首页</li></a>
          <a href="wangye3%20.html"><li>手机</li></a>
          <a href="wangye4.html"><li>服饰</li></a>
          <a href="#"><li>零食</li></a>
          <a href="#"><li>床垫</li></a>
          <a href="#"><li>茶几</li></a>
          <a href="#"><li>耳机</li></a>
          <a href="#"><li>风扇</li></a>
          <a href="#"><li>电脑椅</li></a>
          <a href="#"><li>椅子</li></a>
          <a href="#"><li>拉杆箱</li></a>
          <a href="#"><li>男鞋</li></a>
          <a href="#"><li>电风扇</li></a>
          <a href="#"><li>鞋柜</li></a>
          <a href="#"><li>客厅灯</li></a>
          <a href="#"><li>女包</li></a>
        </ul>
      </div>
    </div>
    <%
      ContactDao dao = new ContactDaoImpl();
      List<Contactfushi> contactfushiList = dao.getAllContactfushis();
       for (Contactfushi contact : contactfushiList) {
      %>
    <div class="zhuti">
      <div class="shangping">
        <a href="#"><img src=<%=contact.getFstp()%>></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$<%=contact.getJg()%> &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《<%=contact.getF_name()%>》</li>
            <li><p><%=contact.getFsjs()%></p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">2313231人已付款</li>
          </ul>
        </div>
      </div>
      <%}%>


    <div id="xiaodao2">
      <p>
        <a href="#">关于网站</a>
        <a href="#">帮助中心</a>
        <a href="#">开放平台</a>
        <a href="#">诚聘英才</a>
        <a href="#">联系我们</a>
        <a href="#">网站合作</a>
        <a href="#">法律声明</a>
        <a href="#">隐私权政策</a>
        <a href="#">知识产权</a>
        <a href="#">廉政举报</a>
        <a href="#">规则意见征集</a>
        <a href="#">垚垚集团</a>
        <a href="#">购物网</a>
        <a href="#">天狼</a>
        <a href="#">聚划算</a>
        <a href="#">全球速卖通</a>
        <a href="#">国际交易市场</a>
        <a href="#">1788</a>
        <a href="#">阿里舅舅</a>
        <a href="#">飞狗</a>
        <a href="#">垚垚云计算</a>
      </p>

      <pre>
        <br>
  增值电信业务经营许可证：川B2-20010909
  市场名称登记证：工商网页字33010004228
  出版物网络交易平台服务经营备案证：四川省成都市
  互联网违法和不良信息举报电话：0571-81683755 hsjadhka@dasdsadada-dasda
            </pre>
    </div>
  </div>
  </body>
  </html>