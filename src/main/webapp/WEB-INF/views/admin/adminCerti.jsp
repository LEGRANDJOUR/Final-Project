<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 태그 라이브러리 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>챌린지 관리</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<link href="https://cdn.lineicons.com/3.0/lineicons.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://code.iconify.design/2/2.1.1/iconify.min.js"></script>
<link rel="icon" href="/assets/img/favicon.ico" type="image/x-ico" />
<style type="text/css">
body {
	margin-top: 20px;
	background-color: #f7f7ff;
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0px solid rgba(0, 0, 0, 0);
	border-radius: .25rem;
	margin-bottom: 1.5rem;
	box-shadow: 0 2px 6px 0 rgb(218 218 253/ 65%), 0 2px 6px 0
		rgb(206 206 238/ 54%);
}

.fm-file-box {
	font-size: 25px;
	background: #e9ecef;
	width: 44px;
	height: 44px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: .25rem;
}

.ms-2 {
	margin-left: .5rem !important;
}

.fm-menu .list-group a {
	font-size: 16px;
	color: #5f5f5f;
	display: flex;
	align-items: center;
}

.list-group-flush>.list-group-item {
	border-width: 0 0 1px;
}

.list-group-item+.list-group-item {
	border-top-width: 0;
}

.py-1 {
	padding-top: .25rem !important;
	padding-bottom: .25rem !important;
}

.list-group-item {
	position: relative;
	display: block;
	padding: .5rem 1rem;
	text-decoration: none;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, .125);
}

.radius-15 {
	border-radius: 15px;
}

.fm-icon-box {
	font-size: 32px;
	background: #ffffff;
	width: 52px;
	height: 52px;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: .25rem;
}

.font-24 {
	font-size: 24px;
}

.ms-auto {
	margin-left: auto !important;
}

.font-30 {
	font-size: 30px;
}

.user-groups img {
	margin-left: -14px;
	border: 1px solid #e4e4e4;
	padding: 2px;
	cursor: pointer;
}

.rounded-circle {
	border-radius: 50% !important;
}

#header {
	margin-bottom: 100px;
}

a:hover {
	text-decoration-line: none;
}

@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.pagination.justify-content-center>li {
	color: black;
}

.pagination.justify-content-center>li>a {
	color: black;
}

.pagination.justify-content-center>li>a:hover {
	background-color: black;
	color: white;
}



#search {
	background-color: transparent;
	border: 1px solid transparent;
	border-radius: 3px;
}

.td {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	max-width: 130px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row" id="header">
			<div class="col">
				<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-12 col-lg-3">
				<div class="card">
					<div class="card-body">
						<div class="d-grid"></div>
						<div class="list-group list-group-flush">
							<a href="/admin/main" class="list-group-item py-1">
								<h5 class="my-3"
									style="font-family: 'yg-jalnan', verdana, tahoma;">관리자 페이지</h5>
							</a>
						</div>
						<div class="fm-menu">
							<div class="list-group list-group-flush">
								<a href="/admin/userBlack" class="list-group-item py-1"><span
									class="iconify" data-icon="el:ban-circle" data-width="25"></span>&ensp;<span>유저
										블랙/탈퇴 관리</span></a> <a href="/admin/userGrade" class="list-group-item py-1"><span
									class="iconify" data-icon="icon-park-outline:gold-medal"
									data-width="25"></span>&ensp;<span>유저 등급변경</span></a> <a href="/admin/userRefund"
									class="list-group-item py-1"><span class="iconify"
									data-icon="jam:coin" data-width="25"></span>&ensp;<span>유저
										환급</span></a> <a href="/admin/certi?cpage=1" class="list-group-item py-1"><span
									class="iconify" data-icon="clarity:list-line" data-width="25"></span>&ensp;<span>유저
										인증 삭제 </span></a> <a href="/admin/chal?cpage=1"
									class="list-group-item py-1"><span class="iconify"
									data-icon="ant-design:folder-open-outlined" data-width="25"></span>&ensp;<span>챌린지
										관리</span></a> <a href="/admin/board?cpage=1" class="list-group-item py-1"><span
									class="iconify" data-icon="clarity:note-line" data-width="25"></span>&ensp;<span>자유게시판
										관리</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12 col-lg-9">
				<div class="card">
					<div class="card-body">
						<div class="row mt-3" style = "text-align:center">
							<h5 style="font-family: 'yg-jalnan', verdana, tahoma;">&ensp;유저챌린지
								관리</h5>
							
							<!-- 게시글 목록 -->
							<form action="/admin/certiSearch">
								<div class="table-responsive mt-3">
									<table class="table table-striped table-hover table-sm mb-0">
										<thead>
											<tr style="font-family: 'yg-jalnan', verdana, tahoma; background-color:#f8e8e6;">
												<th></th>
												<th>번호</th>
												<th>챌린지 이름</th>
												<th>제목</th>
												<th>날짜</th>
												<th>닉네임</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${list}">
												<tr>
													<td class="td"><input type="checkbox" name="checkbox"
														value="${list.seq}"></td>
														<td class="td">${list.seq}</td>
													<td class="td">${list.chalName}</td>
													<td class = "td"><a
														style="color: black; text-decoration: none"
														href="">${list.certiTitle}</a></td>
													<td class="td">${list.certiDate}</td>
													<td class="td">${list.refNickname}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

								<!-- 버튼 페이징 -->
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">${navi}
									</ul>
								</nav>
								<input type="hidden" value="1" name="cpage">
								<table class="table-sm mb-0" align=right>
									<tr>
										<td>
											<select class="form-select btn btn-danger" aria-label="Default select example" id = "select" name = "select" style = "backgroud-color:#f8e8e6;">
					  							<option selected>옵션</option>
					  							<option value="chalName">챌린지 이름</option>
					  							<option value="nickname">닉네임</option>
					  							<option value="certiTitle">제목</option>
											</select>
										</td>
										<td><input type="search" class="form-control rounded"
											placeholder="내용을 입력하세요" id="keyword" name="keyword" /></td>
										<td>
											<button id="search">
												<i class="fas fa-search"></i>
											</button>
										</td>
										<td>
											<div>
											<button type="button" class="btn btn-warning" id = "delBtn" onclick="return submit2(this.form)" style = "background-color:#dc3545; border-color:#dc3545; ">삭제하기</button>
								</div>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 풋터 -->
	<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />

	<script>
		// 인증 찾기
		$("#search").on("click", function() {
			if ($("#select").val() == "옵션") {
				alert("검색옵션을 선택해주세요.");
				return false;
			}
			if ($("#keyword").val() == "") {
				alert("내용을 입력하세요.");
				return false;
			}
		})
	</script>
	<script>
		// 챌린지 삭제
		function submit2(frm) {
			if ($("input:checkbox[name='checkbox']:checked").length == 0) {
				alert("삭제할 항목을 선택해주세요.");
				return false;
			}
			if (confirm("정말 삭제하시겠습니까?")) {
				frm.action = "/admin/certiDelete";
				frm.submit();
				return true;
			}
		}
	</script>
	
</body>
</html>