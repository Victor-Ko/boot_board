<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>게시글 작성</title>
</head>
<body>
 <h3>게시글 작성</h3>
    <div style="padding : 30px;">
        <form action="/board/insertAction">
          <div class="form-group">
            <label>제목</label>
            <input type="text" name="board_title" class="form-control">
          </div>
          <div class="form-group">
            <label>작성자</label>
            <input type="text" name="user_id" class="form-control">
          </div>
          <div class="form-group">
            <label>내용</label>
            <textarea name="board_contents" class="form-control" rows="5"></textarea>
          </div>
          <button type="submit" class="btn btn-default">작성</button>
        </form>
    </div>
</body>
</html>