<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>系统主页面</title>
    <style>
        .style {
            text-align: center;
            margin-top: 200px;
            font-size: 16px;
        }
    </style>
</head>
<body bgcolor="#40739e">
    <%
        //获取在session中的用户名
        String name=(String) session.getAttribute("userName");
    %>
    <div class="style">
    <h4>您好<%=name%>,欢迎您访问!</h4>
    <br>
    <a href="exit.jsp">[退出系统]</a>
    </div>
</body>
</html>