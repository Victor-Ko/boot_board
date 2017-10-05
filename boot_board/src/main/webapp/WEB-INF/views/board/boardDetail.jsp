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
<title>게시글 상세</title>
</head>
<body>
 <h3>게시글 상세</h3>
    <div style="padding : 30px;">
      <div class="form-group">
        <label>제목</label>
        <span>${board.board_title}</span>
      </div>
      <div class="form-group">
        <label>작성자</label>
        <span>${board.user_id}</span>
      </div>
      <div class="form-group">
        <label>작성날짜</label>
        <span><fmt:formatDate value="${board.board_reg_date}" pattern="yyyy/ MM/ dd" /></span>
      </div>
      <div class="form-group">
        <label>조회수</label>
        <span>${board.board_views+1}</span>
      </div>
      <div class="form-group">
        <label>내용</label>
        <p>${board.board_contents}</p>
      </div>
      <div class="form-group">
          <input type="button" value="수정" onclick='location.href="/board/boardUpdate?seq=${board.board_seq}"'>
          <input type="button" value="삭제" onclick='location.href="/board/boardDelete?seq=${board.board_seq}"'>
          <input type="button" value="목록" onclick="location.href='/board/boardList'">
      </div>
    </div>
</body>
</html>