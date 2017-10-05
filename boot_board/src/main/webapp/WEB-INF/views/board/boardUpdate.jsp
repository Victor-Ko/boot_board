<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<title>게시글 수정</title>
</head>
<body>
<h3>게시글 수정</h3>
    <div style="padding : 30px;">
        <form action="/board/updateAction" method="post">
        	<input type="hidden" name="board_seq" value="${board.board_seq }">
          	<div class="form-group">
            	<label>제목</label>
            	<input type="text" name="board_title" value="${board.board_title}" class="form-control">
          	</div>
          	<div class="form-group">
            	<label>내용</label>
            	<textarea name="board_contents" class="form-control" rows="5">${board.board_contents}</textarea>
          	</div>
          	<button type="submit" class="btn btn-default">수정</button>
        </form>
    </div>
</body>
</html>