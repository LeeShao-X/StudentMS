<%--
  Created by IntelliJ IDEA.
  User: Hide on bush
  Date: 2020/6/16
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <head>
        <style type="text/css">
            body{
                background-image: url("images/back.png");
                background-repeat: no-repeat;
                background-size: 100% auto;
            }
        </style>
    </head>
    <title>登陆成功</title>
</head>
<body>
<div style="position: absolute;left:0px;top:0px;width: 15%;height: 100%;background-color: #00000060 ">
    <a href="findAll.action"><p style="color: red;font-size:35;font-family: 华文楷体">查看学生信息</p></a>
    <a href="findscore.action"><p style="color: red;font-size:35;font-family: 华文楷体">查看课程信息</p></a>
    <a href="choose.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">退出登录</p></a>
</div>
<div style="position: absolute;left: 20%;top: 0px;width: 85%;height: 100%;">
    <center><h1>欢迎管理员<s:property value="#session.adminUsername"/>登录到学生选课系统</h1></center>
</div>
</body>
</html>
