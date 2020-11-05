<%--
  Created by IntelliJ IDEA.
  User: wuta1999
  Date: 2020-11-03
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>处理登录页面的数据</title>
        </head>
        <body bgcolor="#40739e">
        <%
            //设置请求的编码，用于解决中文乱码问题
            request.setCharacterEncoding("UTF-8");
            String name=request.getParameter("userName");
            String password=request.getParameter("password");
            if(request.getParameter("validationCode1").equals(request.getParameter("validationCode"))) {
                if (name.equals("wuta") && (password.equals("admin")) ) {
                    //把用户名保存到session中
                    session.setAttribute("userName", name);
                    response.sendRedirect("main.jsp");
                } else {
                    response.sendRedirect("login.jsp");
                }
            }else {
                response.sendRedirect("login.jsp");
            }
        %>
        </body>
    </html>

