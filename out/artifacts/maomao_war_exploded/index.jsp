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
      <a href="#"><div class="sou"><p>搜索</p></div></a>

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

      <%--<div class="shangping">
        <a href="#"><img src="image/shangping2.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$88.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《烧烧牌睫毛笔》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">456人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping3.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$98.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用 《烧烧牌润肤膏》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">2311人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping4.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$98.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《集美沙精华液》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">31人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping5.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$67.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用《烧烧牌洗面奶》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">231人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping6.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$45.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《兰瑟金华水》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">5657人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping7.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$90.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《HOT粉底》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">78557人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping8.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$56.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用 《亮透白洁面水》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">23人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping9.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$399.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用 《火山岩洗面奶》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">1人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping10.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$67.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《奈美洁白润肤乳》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">8554人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping11.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$55.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用 《美誉润肤保保湿喷雾》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">2111人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping12.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$45.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《风韵蜂蜜柚子润肤膏》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">899人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping13.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$89.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《NEW精华补湿水》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">9791人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping14.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$23.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用 《花仙子眉毛笔》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">231人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping15.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$66.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用 《珀莱雅护肤霜》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">3231人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping16.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$76.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《NEW新款玻尿酸》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">2313231人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping17.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$45.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《露华龙美白霜》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">21人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping18.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$877.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用《超龙洁面控油乳》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">781人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping19.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$45.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《PROX淡斑小白瓶》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">887人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping20.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$89.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《花仙子粉底》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">26561人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping21.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$878.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《OLAY润肤精华水》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">5631人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping22.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$42.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男用 《秦观男士洗面奶》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">2631人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping23.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$85.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《MAYSU补湿水》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">31人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping24.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$67.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男女通用《长生鸟控油润肤乳》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">566人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping25.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$77.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《韩束女士洁面霜》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">886人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping26.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$24.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用《Pro润肤补湿水》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">564人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping27.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$775.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男用《妮维雅护肤套装》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">231人已付款</li>
          </ul>
        </div>
      </div>

      <a href="#"><div class="shangping">
        <a href="#"><img src="image/shangping28.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$78.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《长生鸟护肤套装》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">906人已付款</li>
          </ul>
        </div>
      </div></a>

      <div class="shangping">
        <a href="#"><img src="image/shangping29.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$789.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>男用 《姜生堂男士洗面奶》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">563人已付款</li>
          </ul>
        </div>
      </div>

      <div class="shangping">
        <a href="#"><img src="image/shangping30.png"></a>
        <div class="zhushi">
          <ul>
            <li style="color: red">$46.00 &nbsp&nbsp &nbsp&nbsp包邮</li>
            <li>女用 《雅芙护肤套装》</li>
            <li><p>《—垚垚工厂推荐购买便宜好货—》</p></li>
            <a href="#"><li class="lianjie">垚垚工厂</li></a>
            <li class="goumai">31人已付款</li>
          </ul>
        </div>
      </div>
    </div>--%>

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