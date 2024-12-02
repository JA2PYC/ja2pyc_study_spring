<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board - Read Page</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-log-12">
					<h1 class="page-header">Read Page</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Board Read Page</div>
						<form action="/board/modify" method="post" role="form">
							<div class="panel-body">
								<div class="form-group">
									<label>ID</label><input class="form-control" name="boardId"
										value='<c:out value="${board.tblBoardId }" />'
										readonly="readonly">
								</div>
								<div class="form-group">
									<label>Title</label><input class="form-control"
										name="tblBoardTitle"
										value='<c:out value="${board.tblBoardTitle }" />'>
								</div>
								<div class="form-group">
									<label>Content</label>
									<textarea class="form-control" name="tblBoardContent" rows="3">
									<c:out value="${board.tblBoardContent }" /></textarea>
								</div>
								<div class="form-group">
									<label>Writer</label><input class="form-control"
										name="boardWriter"
										value='<c:out value="${board.tblBoardWriter }" />'
										readonly="readonly">
								</div>
								<button type="submit" data-oper="modify" class="btn btn-default">Modify</button>
								<button type="submit" data-oper="remove" class="btn btn-danger">Remove</button>
								<button type="submit" data-oper="list" class="btn btn-info"
									onclick="location.href='/board/list'">List</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
</body>
</html>