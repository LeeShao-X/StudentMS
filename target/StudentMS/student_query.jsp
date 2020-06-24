<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Hide on bush
  Date: 2020/4/9
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        body{
            background-image: url("images/back.png");
            background-repeat: no-repeat;
            background-size: 100% auto;
        }
    </style>
    <title>学生信息</title>
</head>
<body>
<div style="position: absolute;left:0px;top:0px;width: 15%;height: 100%;background-color: #00000060 ">
    <a href="findAll.action"><p style="color: red;font-size:35;font-family: 华文楷体">查看学生信息</p></a>
    <a href="findScore.action"><p style="color: red;font-size:35;font-family: 华文楷体">查看课程信息</p></a>
    <a href="choose.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">退出登录</p></a>
</div>
<div style="position: absolute;left: 20%;top: 0px;width: 85%;height: 100%;">
    当前登录：管理员<s:property value="#session.adminUsername"/>
    <h2>查看学生信息</h2>
    <form action="findByDept" method="post">
        根据学院查询：<input type="text" name="stu.department">
        <input type="submit" value="查询">
    </form>
    <form action="findByName" method="post">
        根据姓名查询：<input type="text" name="stu.name">
        <input type="submit" value="查询"><br>
        <a href="student_add.jsp"><input type="button" value="添加学生信息"></a><br>
    </form>

    <table border="1px">
        <tr>
            <td width="100px">编号</td>
            <td width="100px">学号</td>
            <td width="100px">姓名</td>
            <td width="50px">性别</td>
            <td width="50px">年龄</td>
            <td width="100px">大学</td>
            <td width="100px">院系</td>
            <td width="100px">专业</td>
            <td width="100px">年级</td>
            <td width="50px">修改</td>
            <td width="50px">删除</td>
        </tr>

        <s:iterator value="stuList" status="st">
            <tr>
                <td><s:property value="sid"/></td>
                <td><s:property value="sno"/></td>
                <td><s:property value="name"/></td>
                <td><s:property value="sex"/></td>
                <td><s:property value="age"/></td>
                <td><s:property value="university"/></td>
                <td><s:property value="department"/></td>
                <td><s:property value="major"/></td>
                <td><s:property value="grade"/></td>
                <td><a href="student_update.jsp?sid=<s:property value="sid"/>">修改</a></td>
                <td><a href="delete?stu.sid=<s:property value="sid"/>">删除</a></td>
            </tr>
        </s:iterator>
</table>
</div>
</body>
</html>
