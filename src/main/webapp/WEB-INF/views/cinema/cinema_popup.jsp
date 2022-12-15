<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화상세보기 팝업</title>
<style type="text/css">
#cinema_popup {
	width: 300px;
	padding: 10px;
	border: 2px solid white;
	position: absolute;
	left: 400px;
	top: 100px;
	background: #222222;
	color: white;
	/* box-shadow: 2px 2px 3px black; */
	display: none; /* hide */
}

#cinema_popup>img {
	width: 272px;
	height: 272px;
	border: 1px solid gray;
	outline: 1px solid black;
	margin: 2px;
}

#cinema_subject {
	width: 98%;
	margin: 3px;
	padding: 3px;
	border: 1px solid gray;
	/* min-height: 40px; */
	outline: 1px solid black;
}

#cinema_content {
	width: 98%;
	margin: 3px;
	padding: 3px;
	border: 1px solid gray;
	min-height: 60px;
	outline: 1px solid black;
}
#c_idx{color: #000;}
</style>
</head>
<body>

	<div id="cinema_popup">
		<div style="text-align: right;">
			<input type="button" value="x" style="color: red;" onclick="hide_cinema_popup();">
		</div>
		<img id="img_cinema" src="">
		<div id="cinema_category">카테고리</div>
		<div id="cinema_subject">제목</div>
		<div id="cinema_info">내용</div>
		<div id="cinema_regdate">등록일</div>
		<div>
			<input class="btn btn-info" type="button" value="리뷰보기" 
				onclick="reviewMove();">
				
			<input type="hidden" name="c_idx" id="c_idx" >
			
			<c:if test="${ user.m_grade eq '관리자' }">
				<div id="photo_job" style="display: inline;float: right;">					
					<input class="btn  btn-info" type="button" value="수정" onclick="photo_modify();"> 
					<input class="btn  btn-danger" type="button" value="삭제" onclick="photo_delete();">
				</div>
			</c:if>
		</div>
	</div>



</body>
</html>