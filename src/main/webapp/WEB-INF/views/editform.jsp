<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>
<h1>Edit Form</h1>

<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>소속</td><td><form:input path="purpose" /></td></tr>
        <tr><td>단체명</td><td><form:input path="nickname" /></td></tr>
        <tr><td>마감 날짜</td><td><form:input path="duedate" /></td></tr>
        <tr><td>모집 인원</td><td><form:input path="personnel" /></td></tr>
        <tr><td>지원서 링크</td><td><form:input path="apply" /></td></tr>
        <tr><td>간단한 소개</td><td><form:textarea cols="50" rows="5" path="introduce" /></td></tr>
        <tr><td>문의</td><td><form:input path="inquire" /></td></tr>
        <tr><td>담당자</td><td><form:input path="manager" /></td></tr>
        <tr><td>지원 자격</td><td><form:input path="qualifications" /></td></tr>
        <tr><td>면접 날짜</td><td><form:input path="interview" /></td></tr>
    </table>
    <input type="submit" value="Edit"/>
    <input type="button" value="cancel" onclick="history.back()">
</form:form>

</body>
</html>