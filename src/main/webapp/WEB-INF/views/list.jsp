<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: moonsangjun--%>
<%--  Date: 2022/12/03--%>
<%--  Time: 7:21 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>리쿠르팅 게시판</h1>--%>
<%--<table id="list" width="90%">--%>
<%--  <tr>--%>
<%--    <th>ID</th>--%>
<%--    <th>PURPOSE</th>--%>
<%--    <th>NAME</th>--%>
<%--    <th>DATE</th>--%>
<%--    <th>NUMBER</th>--%>
<%--    <th>APPLY</th>--%>
<%--    <th>INTRODUCE</th>--%>
<%--    <th>INQUIRE</th>--%>
<%--    <th>MANAGER</th>--%>
<%--    <th>QUALIFICATIONS</th>--%>
<%--    <th>INTERVIEW</th>--%>
<%--    <th>IMAGE</th>--%>

<%--  </tr>--%>

<%--  <c:forEach items="${list}" var="u">--%>
<%--  <tr>--%>
<%--    <td>${u.seq}</td>--%>
<%--    <td>${u.purpose}</td>--%>
<%--    <td>${u.nickname}</td>--%>
<%--    <td>${u.duedate}</td>--%>
<%--    <td>${u.personnel}</td>--%>
<%--    <td>${u.apply}</td>--%>
<%--    <td>${u.introduce}</td>--%>
<%--    <td>${u.inquire}</td>--%>
<%--    <td>${u.manager}</td>--%>
<%--    <td>${u.qualifications}</td>--%>
<%--    <td>${u.interview}</td>--%>
<%--    <td>${u.image}</td>--%>
<%--    <td><a herf="editform/${u.seq}">글수정</a></td>--%>
<%--    <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>--%>

<%--  </tr>--%>
<%--  </c:forEach>--%>

<%--  <br/><a href="add">ADD NEW POST</a>--%>
<%--</body>--%>
<%--</html>--%>

<%--
  Created by IntelliJ IDEA.
  User: 서하늘
  Date: 2022-11-25
  Time: 오후 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Title</title>
  <script>
    function delete_ok(id) {
      var a = confirm("Are you sure? ");
      if(a) location.href='deleteok/' + id;
    }
  </script>
  <style>
    table {
      border: 1px solid; border-collapse: collapse; text-align: center;
    }
    td, th { border: 1px solid; padding: 10px 5px;}

    th {background-color: bisque;}
  </style>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
  <tr>
    <th>Id</th>
    <th>Category</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>Regdate</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
    <tr>
      <td>${u.seq}</td>
      <td>${u.category}</td>
      <td>${u.title}</td>
      <td>${u.writer}</td>
      <td>${u.content}</td>
      <td>${u.regdate}</td>
      <td><a href="editform/${u.seq}">Edit</a></td>
      <td><a href="javascript:delete_ok(${u.seq})">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>