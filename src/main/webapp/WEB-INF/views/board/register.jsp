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

<title>Board - Register</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/header.jsp"></jsp:include>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Board Register</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Board Register</div>
						<div class="panel-body">
							<form action="/board/register" role="form" method="post">
								<div class="form-group">
									<label>Title</label><input class="form-control"
										name="tblBoardTitle">
								</div>
								<div class="form-group">
									<label>Text Area</label>
									<textarea class="form-control" name="tblBoardContent" rows="5"></textarea>
								</div>
								<div class="form-group">
									<label>Writer</label><input class="form-control"
										name="tblBoardWriter">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
								<button type="reset" class="btn btn-default">Reset Button</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/includes/footer.jsp"></jsp:include>
</body>
</html>