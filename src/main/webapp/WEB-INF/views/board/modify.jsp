<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Board - Read Page</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Read Page</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Board Read Page</div>
						<div class="panel-body">
							<form action="/board/modify" role="form" method="post">
								<div class="form-group">
									<label>ID</label><input class="form-control" name="tblBoardId"
										value='<c:out value="${board.tblBoardId }" />'
										readonly="readonly"> <input class="form-control"
										name="boardId" value='<c:out value="${board.tblBoardId }" />'
										type="hidden">
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
										name="tblBoardWriter"
										value='<c:out value="${board.tblBoardWriter }" />'
										readonly="readonly">
								</div>
								<!-- 								<div class="form-group"> -->
								<!-- 									<label>RegDate</label><input class="form-control" -->
								<!-- 										name="tblRegDate" -->
								<%-- 										value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.tblRegDate }"/>' --%>
								<!-- 										readonly="readonly"> -->
								<!-- 								</div> -->
								<!-- 								<div class="form-group"> -->
								<!-- 									<label>Update Date</label><input class="form-control" -->
								<!-- 										name="tblUpdateDate" -->
								<%-- 										value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.tblUpdateDate }"/>' --%>
								<!-- 										readonly="readonly"> -->
								<!-- 								</div> -->
								<button type="submit" data-oper="modify" class="btn btn-default">Modify</button>
								<button type="submit" data-oper="remove" class="btn btn-danger">Remove</button>
								<button type="submit" data-oper="list" class="btn btn-info"
									onclick="location.href='/board/list'">List</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			let formObj = $("form");
			$('button').on("click", function(e) {
				e.preventDefault();
				let operation = $(this).data("oper");
				console.log(operation);

				if (operation === 'remove') {
					formObj.attr("action", "/board/remove");
				} else if (operation === 'list') {
					formObj.attr("action", "/board/list").attr("method", "get");
					formObj.empty();
					// self.location = "/board/list";
					// return;
				}
				formObj.submit();
			});
		});
	</script>
	<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
</body>
</html>