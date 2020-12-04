
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <style>
        <span style="font-size:14px;">
                                     .input_class {  /*设置class属性名称为input_class的标签内容*/
                                         width:250px;
                                         height:16px;
                                     }

        caption{        /*设置caption标签内容*/
            font-size:30px;
            color:red;
            text-shadow: yellow 6px 0px 5px;
            font-stretch: wider;
            font-weight: 900;
        }

        .aaa{          /*设置class属性名称为aaa的标签内容*/
            font-size:16px;
            font-weight: bold;
        }

        </span>
    </style>
</head>
<body>
<form action="ZhuceServlet" method="post">
    <table border="26" align="center" width="50%">
        <caption>用户注册</caption>
        <tr>
            <td align="right">
                <sup><font color="red">*</font></sup>用户名：
            </td>
            <td>
                <input type="text" name="y_name" id="username" class="input_class" onblur="checkUsername(this)" />
                <span id="username_span">用户名由3-5个字符组成</span></td>
        </tr>
        <tr>
            <td align="right">
                <sup><font color="red">*</font></sup>密码：
            </td>
            <td><input type="password" name="mm" id="password" class="input_class" onblur="checkPassword(this)" />
                <span id="password_span">请输入8-12位密码</span>
            </td>
        </tr>
        <tr>
            <td align="right">
                <sup><font color="red">*</font></sup>手机号：
            </td>
            <td><input type="text" name="sjh" id="realName" class="input_class" onblur="checkName(this)" /><span id="realName_span">请正确填写</span></td>
        </tr>

        <tr>
            <td align="center" colspan="2">  <!-- 合并两列 -->
                <input type="submit" class="aaa" value="注册" />
                <input type="reset" class="aaa" value="重置" />
            </td>
        </tr>
    </table>

</form>
</body>
</html>
