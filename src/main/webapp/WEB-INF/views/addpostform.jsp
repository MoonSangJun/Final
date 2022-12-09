<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: moonsangjun--%>
<%--  Date: 2022/12/03--%>
<%--  Time: 8:00 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="addok" method="post">--%>
<%--    <table id="edit">--%>
<%--        <tr><td>소속</td><td><input type="text" name = 'purpose'/></td></tr>--%>
<%--        <tr><td>이름</td><td><input type="text" name = 'nickname'/></td></tr>--%>
<%--        <tr><td>마감날짜</td><td><input type="text" name = 'duedate'/></td></tr>--%>
<%--        <tr><td>모집 인원</td><td><input type="text" name = 'personnel'/></td></tr>--%>
<%--        <tr><td>지원서 링크</td><td><input type="text" name = 'apply'/></td></tr>--%>
<%--        <tr><td>소개</td><td><input type="text" name = 'introduce'/></td></tr>--%>
<%--        <tr><td>문의</td><td><input type="text" name = 'inquire'/></td></tr>--%>
<%--        <tr><td>담당자</td><td><input type="text" name = 'manager'/></td></tr>--%>
<%--        <tr><td>지원 자격</td><td><input type="text" name = 'qualifications'/></td></tr>--%>
<%--        <tr><td>면접 날짜</td><td><input type="text" name = 'interview'/></td></tr>--%>
<%--        <tr><td>포스터</td><td><input type="text" name = 'image'/></td></tr>--%>

<%--    </table>--%>
<%--    <button type="button" onclick="location.href='list'">목록보기</button>--%>
<%--    <button type="submit">등록하기</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id = "edit">
        <tr><td>Category</td><td><input type="text" name="category"/></td></tr>
        <tr><td>Title</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type ="button" onclick="location.href='list'">Back to List</button>
    <button type ="submit">Submit</button>
</form>

</body>
</html>