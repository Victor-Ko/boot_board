<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시글 목록</title>
</head>
<body>
    <h3>게시글 목록</h3>
    <button class="btn btn-primary" style="float : right;" onclick="location.href='/board/boardInsert'">작성</button>
    <br>
    <table class="table">
        <tr>
            <th>No</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성날짜</th>
            <th>조회수</th>
        </tr>
        <c:forEach var="board" items="${list}">
        <tr>
            <td>${board.board_seq}</td>
            <td><a href="/board/boardDetail?seq=${board.board_seq}">${board.board_title}</a></td>
            <td>${board.user_id}</td>
            <td><fmt:formatDate value="${board.board_reg_date}" pattern="MM/ dd" /></td>
            <td>${board.board_views}</td>
        </tr>
        </c:forEach>
    </table>
</body>
</html>