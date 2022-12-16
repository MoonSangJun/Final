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
<h1>리크루팅 현황</h1>
<table id="list" width="90%">
  <tr>
    <th>번호</th>
    <th>소속</th>
    <th>단체명</th>
    <th>마감날짜</th>
    <th>모집인원</th>
    <th>지원자격</th>
    <th>간단한 소개</th>
    <th>면접 날짜</th>
    <th>지원서 링크</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
    <tr>
      <td>${u.seq}</td>
      <td>${u.purpose}</td>
      <td>${u.nickname}</td>
      <td>${u.duedate}</td>
      <td>${u.personnel}</td>
      <td>${u.qualifications}</td>
      <td>${u.introduce}</td>
      <td>${u.interview}</td>
      <td>${u.apply}</td>
      <td><a href="editform/${u.seq}">Edit</a></td>
      <td><a href="javascript:delete_ok(${u.seq})">Delete</a></td>
    </tr>
  </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>