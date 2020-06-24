<%--
  Created by IntelliJ IDEA.
  User: Hide on bush
  Date: 2020/6/19
  Time: 8:53
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
    <title>个人信息</title>
</head>
<body>
<div style="position: absolute;left:0px;top:0px;width: 15%;height: 100%;background-color: #00000060 ">
    <br><br><br>
    <a href="show_student.jsp"><p style="color: red;font-size:35;font-family: 华文楷体">查看个人信息</p></a>
    <p style="color: red;font-size:35;font-family: 华文楷体">查看课程信息</p>
</div>
<div style="position: absolute;left: 20%;top: 0px;width: 85%;height: 100%;">
    <table border="1px" style="top: 50%">
        <tr>
            <td width="100px">学号</td>
            <td width="100px">姓名</td>
            <td width="50px">性别</td>
            <td width="50px">年龄</td>
            <td width="100px">大学</td>
            <td width="100px">院系</td>
            <td width="100px">专业</td>
            <td width="100px">年级</td>
        </tr>

            <tr>
                <td><s:property value="#session.studentSid"/></td>
                <td><s:property value="#session.studentUsername"/></td>
                <td><s:property value="#session.studentSex"/></td>
                <td><s:property value="#session.studentAge"/></td>
                <td><s:property value="#session.studentUn"/></td>
                <td><s:property value="#session.studentDept"/></td>
                <td><s:property value="#session.studentMa"/></td>
                <td><s:property value="#session.studentG"/></td>
            </tr>
    </table>
</div>
</body>
</html>
