<%--
  Created by IntelliJ IDEA.
  User: Hide on bush
  Date: 2020/6/19
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <style type="text/css">
        body{
            background-image: url("images/back.png");
            background-repeat: no-repeat;
            background-size: 100% auto;
        }
    </style>
    <title>登陆成功</title>
</head>
<body>
<div style="position: absolute;left:0px;top:0px;width: 15%;height: 100%;background-color: #00000060 ">
    <br><br><br>
    <a href="show_student.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">查看个人信息</p></a>
    <a href=findScor><p style="color: red;font-size:35;font-family: 华文楷体">选课</p></a>
    <a href="show_course.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">查看已选课程</p></a>
</div>
<div style="position: absolute;left: 20%;top: 0px;width: 85%;height: 100%;">
    <center><h1 style="color: red;font-family: 华文楷体">欢迎同学<s:property value="#session.studentUsername"/>登录到学生选课系统</h1></center>
</div>
</body>
</html>
