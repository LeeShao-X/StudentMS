<%--
  Created by IntelliJ IDEA.
  User: Hide on bush
  Date: 2020/6/19
  Time: 16:48
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
    <title>Title</title>
</head>
<body>
<div style="position: absolute;left:0px;top:0px;width: 15%;height: 100%;background-color: #00000060 ">
    <br><br><br>
    <a href="show_student.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">查看个人信息</p></a>
    <a href=findCourse><p style="color: red;font-size:35;font-family: 华文楷体">选课</p></a>
    <a href=findSourse><p style="color: red;font-size:35;font-family: 华文楷体">查看已选课程</p></a>
    <a href="choose.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">退出登录</p></a>
</div>
<div style="position: absolute;left: 20%;top: 0px;width: 85%;height: 100%;">
    <center><h1 style="color: #f30909">选课界面</h1> </center>
<table border="1px" style="margin-top: 10%;margin-left: 20%">
    <tr>
        <td width="100px">课程号</td>
        <td width="50px">课程名</td>
        <td width="50px">开设学院</td>
        <td width="50px">学分</td>
        <td width="50px">课时</td>
        <td width="50px">课容量</td>
        <td width="50px">选课</td>
    </tr>

    <s:iterator value="sreList" status="st">
        <tr>
            <td><s:property value="sno"/></td>
            <td><s:property value="name"/></td>
            <td><s:property value="major"/></td>
            <td><s:property value="score"/></td>
            <td><s:property value="hour"/></td>
            <td><s:property value="num"/></td>
            <td><a href="findSourse.action">选课</a></td>
        </tr>
    </s:iterator>
</table>
</div>
</body>
</html>
