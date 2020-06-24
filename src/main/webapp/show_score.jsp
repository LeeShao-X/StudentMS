<%--
  Created by IntelliJ IDEA.
  User: Hide on bush
  Date: 2020/4/14
  Time: 14:46
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
    <title>学生成绩</title>
</head>
<body>
<div style="position: absolute;left:0px;top:0px;width: 15%;height: 100%;background-color: #00000060 ">
    <br><br><br>
    <a href="findAll.action"><p style="color: red;font-size:35;font-family: 华文楷体">查看学生信息</p></a>
    <a href="findScore.action"><p style="color: red;font-size:35;font-family: 华文楷体">查看课程信息</p></a>
</div>
<div style="position: absolute;left: 20%;top: 0px;width: 85%;height: 100%;">
当前登录：管理员<s:property value="#session.adminUsername"/>
<h2>查看课程信息</h2>
<form action="findBySDept" method="post">
    根据学院查询：<input type="text" name="sre.major">
    <input type="submit" value="查询">
</form>
<form action="findBySName" method="post">
    根据姓名查询：<input type="text" name="sre.name">
    <input type="submit" value="查询"><br>
    <a href="student_add.jsp"><input type="button" value="添加课程信息"></a>
</form>

<table border="1px">
    <tr>
        <td width="100px">课程号</td>
        <td width="50px">课程名</td>
        <td width="50px">开设学院</td>
        <td width="50px">学分</td>
        <td width="50px">课时</td>
        <td width="50px">课容量</td>
        <td width="50px">修改</td>
        <td width="50px">删除</td>
    </tr>

    <s:iterator value="sreList" status="st">
        <tr>
            <td><s:property value="sno"/></td>
            <td><s:property value="name"/></td>
            <td><s:property value="major"/></td>
            <td><s:property value="score"/></td>
            <td><s:property value="hour"/></td>
            <td><s:property value="num"/></td>
            <td><a href="student_update.jsp?sid=<s:property value="sid"/>">修改</a></td>
            <td><a href="delete?stu.sid=<s:property value="sid"/>">删除</a></td>
        </tr>
    </s:iterator>
</table>
</div>
</body>
</html>