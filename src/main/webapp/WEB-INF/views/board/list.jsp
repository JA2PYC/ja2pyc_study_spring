<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

</head>

<body>

	<div id="wrapper">
		<%@ include file="../includes/header.jsp"%>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Tables</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							Board List Page
							<button id="regBtn" type="button" class="btn btn-xs pull-right">Register
								New Board</button>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table width="100%"
								class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th>#번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>수정일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list }" var="board">
										<tr>
											<td><c:out value="${board.tblBoardId }"></c:out></td>
											<td><a
												href='/board/get?boardId=<c:out value="${board.tblBoardId}" />'>
													<c:out value="${board.tblBoardTitle }"></c:out>
											</a></td>
											<td><c:out value="${board.tblBoardWriter }"></c:out></td>
											<td><fmt:formatDate pattern="yyyy-MM-dd"
													value="${board.tblRegDate }"></fmt:formatDate></td>
											<td><fmt:formatDate pattern="yyyy-MM-dd"
													value="${board.tblUpdateDate }"></fmt:formatDate></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- /.table-responsive -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">Modal title</h4>
										</div>
										<div class="modal-body">처리가 완료되었습니다.</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												Changes</button>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							let result = '<c:out value="${result}"/>';
							console.log(result);
							checkModal(result);

							// history.replaceState({}, null, null);

							$("#regBtn").on("click", function() {
								self.location = "/board/register";
							});

							function checkModal(result) {
								if (result === '' || history.state) {
									return;
								}
								if (parseInt(result) > 0) {
									$(".modal-body").html(
											"게시글 " + parseInt(result)
													+ " 번이 등록되었습니다.");
								}

								$("#myModal").modal("show");
							}
						});
	</script>
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>
