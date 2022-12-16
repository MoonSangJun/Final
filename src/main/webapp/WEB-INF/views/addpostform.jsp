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
        <tr><td>소속</td><td><select name = "purpose">
        <option value = "동아리">동아리</option>
        <option value = "학회">학회</option>
        <option value = "학생기구">학생기구</option>
    </select></td></tr>
        <tr><td>단체명</td><td><input type="text" name="nickname"/></td></tr>
        <tr><td>마감 날짜</td><td><input type="date" name="duedate"/></td></tr>
        <tr><td>모집 인원</td><td><label><input type="radio" name="personnel" value="10명 이하">10명 이하</label>
            <label><input type="radio" name="personnel" value="10명 이상, 20명 이하">10명 이상, 20명 이하</label>
            <label><input type="radio" name="personnel" value="20명 이상 30명 이하">20명 이상 30명 이하</label>
        </td></tr>
        <tr><td>지원서 링크</td><td><input type="text" name="apply"/></td></tr>
        <tr><td>간단한 소개</td><td><textarea cols="50" rows="5" name="introduce"></textarea></td></tr>
        <tr><td>문의</td><td><input type="text" name="inquire"/></td></tr>
        <tr><td>담당자</td><td><input type="text" name="manager"/></td></tr>
        <tr><td>지원 자격</td><td><input type = "checkbox" name="qualifications" value ="1학년">1학년<br><input type = "checkbox" name="qualifications" value ="2학년">2학년<br><input type = "checkbox" name="qualifications" value ="3학년">3학년<br><input type = "checkbox" name="qualifications" value ="4학년">4학년<br></td></tr>
        <tr><td>면접 날짜</td><td><input type="date" name="interview"/></td></tr>


    </table>
    <button type ="button" onclick="location.href='list'">Back to List</button>
    <button type ="submit">Submit</button>
</form>

</body>
</html>