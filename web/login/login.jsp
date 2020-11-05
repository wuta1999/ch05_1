<%--
  Created by IntelliJ IDEA.
  User: wuta1999
  Date: 2020-11-03
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
        <title>登录页面</title>
        <style type="text/css">
            body{font-size: 16px;}
            *{
                margin: 0;
                padding: 0;
            }
        </style>
        <script type="text/javascript">
            function mycheck() {
                //判断用户名是否为空
                if(form1.userName.value=="") {
                    alert("用户名不能为空， 请输入用户名!");
                    form1.userName.focus();
                    return;
                }
                    //判断密码是否为空
                    if(form1.password.value=="") {
                        alert("密码不能为空， 请输入密码!");
                        form1.password.focus();
                        return;
                    }
                    //判断验证码是否为空
                if(form1.validationCode.value=="") {
                    alert("验证码不能为空， 请输入验证码!");
                    form1.validationCode.focus();
                    return;
                }
                //判断验证码是否正确
                if(form1.validationCode.value!=forml.validationCode1.value) {
                    alert("请输入正确的验证码!!");
                    form1.validationCode.focus();
                    return;
                }
                form1.submit1();
            }</script>
        <style>
            .style {

                /*width: 50%;*/
                /*height: 50%;*/
                font-size: 16px;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                background: white;
                box-sizing: border-box;
                padding: 80px;
                color: #273c75;
                border-radius: 4px;
                /*text-align: center;*/
            }
        </style>
    </head>
    <body bgcolor="#40739e">
        <div class="style">
        <form action="loginCheck.jsp" name="form1" method="post">
                <label>用户名：</label>
                <input type="text" name="userName" size="16">
            <br>
                <label>密&nbsp;&nbsp;&nbsp;码：</label>
                <input type="password" name="password" size="18">
            <br>
            <label>验证码：</label>
            <input type="text" name="validationCode" onKeyDown="if(event.keyCode==13)
            {form1.submit.focus(); }" size="6" >
            <% int intmethod1=(int) ((((Math.random() ) *11) ) -1);
                int intmethod2=(int) ((((Math.random() ) *11) ) -1);
                int intmethod3=(int) ((((Math.random() ) *11) ) -1);
                int intmethod4=(int) ((((Math.random() ) *11) ) -1);
                //将得到的随机数进行连接
                String intsum=intmethod1+""+intmethod2+intmethod3+intmethod4;
//                out.print(intsum);
            %>
            <!--设置隐藏域，验证比较时使用-->
            <input type="hidden" name="validationCode1" value="<%=intsum%>">
            <!--将图片名称与得到的随机数相同的图片显示在页面上 -->
            <img src="../image/<%=intmethod1%>.png">
            <img src="../image/<%=intmethod2%>.png">
            <img src="../image/<%=intmethod3%>.png">
            <img src="../image/<%=intmethod4%>.png">
            <br>
            <input type="submit" name="submit1" value="登录" onClick="mycheck()">
            &nbsp;
            <input type="reset" value="重置">
        </form>
        </div>
    </body>
</html>
