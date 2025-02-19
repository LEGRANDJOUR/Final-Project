<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 태그 라이브러리 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>챌린지 수정</title>
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
body {
	margin: 0;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		"Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
	font-size: .88rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #eef1f3;
}

.mt-100 {
	margin-top: 80px;
}

.card {
	box-shadow: 0 0.46875rem 2.1875rem rgba(4, 9, 20, 0.03), 0 0.9375rem
		1.40625rem rgba(4, 9, 20, 0.03), 0 0.25rem 0.53125rem
		rgba(4, 9, 20, 0.05), 0 0.125rem 0.1875rem rgba(4, 9, 20, 0.03);
	border-width: 0;
	transition: all .2s;
	margin: auto;
}

.card-header:first-child {
	border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0
}

.card-header {
	display: flex;
	align-items: center;
	border-bottom-width: 1px;
	padding-top: 0;
	padding-bottom: 0;
	padding-right: .625rem;
	height: 3.5rem;
	background-color: #fff;
	border-bottom: 1px solid rgba(26, 54, 126, 0.125);
}

.btn-primary.btn-shadow {
	box-shadow: 0 0.125rem 0.625rem rgba(63, 106, 216, 0.4), 0 0.0625rem
		0.125rem rgba(63, 106, 216, 0.5);
}

.btn.btn-wide {
	padding: .375rem 1.5rem;
	font-size: .8rem;
	line-height: 1.5;
	border-radius: .25rem;
}

.btn-primary {
	color: #fff;
	background-color: #3f6ad8;
	border-color: #3f6ad8;
}

.form-control {
	display: block;
	width: 100%;
	height: calc(2.25rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.card-body {
	flex: 1 1 auto;
	padding: 1.25rem
}

.flex-truncate {
	min-width: 0 !important
}

.d-block {
	display: block !important
}

a {
	color: #E91E63;
	text-decoration: none !important;
	background-color: transparent
}

.media img {
	width: 40px;
	height: auto
}

#board-title {
	text-align: center;
	height: 100px;
	line-height: 100px;
	padding: 100px 0;
}

#title {
	width: 50px;
	height: 50px;
}

.search-bar {
	margin: auto;
}

* {
	box-sizing: border-box;
}

.container {
	width: 1000px;
}

textarea {
	resize: none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
}

body {
	margin: 0;
	line-height: 1.5;
	color: #495057;
	text-align: left;
	background-color: #eef1f3
}

.profile-box {
	display: flex;
}

.img-profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.profile-detail {
	text-align: center;
}

.name {
	font-weight: bold;
}

.list li {
	margin-top: 5px;
}

.label {
	font-size: 12px;
}

.profile-detail {
	justify-content: flex-start;
	flex-direction: column;
}

/* 리뷰 css */
body {
	background: #eee
}

.date {
	font-size: 11px
}

.comment-text {
	font-size: 12px
}

.fs-12 {
	font-size: 12px
}

.shadow-none {
	box-shadow: none
}

.name {
	color: #007bff
}

.cursor:hover {
	color: blue
}

.cursor {
	cursor: pointer
}

#chalList {
	background-color: transparent;
	border: 1px solid black;
	border-radius: 3px;
}

#chalList:hover {
	background-color: black;
	color: white;
	border: 1px solid black;
	border-radius: 3px;
}

#complete {
	background-color: transparent;
	border: 1px solid black;
	border-radius: 3px;
}

#complete:hover {
	background-color: black;
	color: white;
	border: 1px solid black;
	border-radius: 3px;
}

@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.ui-datepicker {
	margin-left: -40px;
	margin-top: -80px;
	z-index: 1000;
}

.img-box {
	box-shadow: 0 0.46875rem 2.1875rem rgba(4, 9, 20, 0.03), 0 0.9375rem
		1.40625rem rgba(4, 9, 20, 0.03), 0 0.25rem 0.53125rem
		rgba(4, 9, 20, 0.05), 0 0.125rem 0.1875rem rgba(4, 9, 20, 0.03);
	border-width: 0;
	transition: all .2s;
	margin: auto;
	height: 260px;
	width: 260px;
	border-radius: 3px;
	overflow: hidden;
	border-radius: 3px;
}

label {
	text-align: center;
}

label:hover {
	text-align: center;
	cursor: pointer;
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/header.jsp" flush="false" />

	<!-- 타이틀  -->
	<div class="container-fluid mt-100">
		<div id="board-title"
			style="font-family: 'yg-jalnan', verdana, tahoma;">
			<img id="title" src="/assets/img/chal1.jpg">&ensp;<span>챌린지
				등록</span>
		</div>
		<div class="img-box">
			<img id="preview" class="img-profile" src="/image/chalModifyLoad?chalSeq=${list.chalSeq}"
				alt="">
		</div>
		<br>
		<form action="/image/chalModify" method="post" enctype="multipart/form-data">
			<div class="container row"
				style="float: none; margin: auto; font-family: 'yg-jalnan', verdana, tahoma;">
				<label id="fileUpload">사진 선택<input type="file" name="file"
					id="file" accept="jpg,jpeg,png" style="display: none;">
				</label>
			</div>
			<br>

			<!-- 작성 박스 -->
			<div class="card mb-3 col-xl-6 col-md-12">
				<div class="container mb-4">
					<div class="row" style="padding-bottom: 5px;">
						<div class="col-sm-12">
							<div class="row profile-detail">
								<div class="col profile-box mt-4 mb-2 "></div>
							</div>
						</div>
					</div>
					<div class="row" style="padding-bottom: 5px;">
						<div class="col-sm-12">
							<input type=text id=input-title name=chalName
								style="width: 100%;" placeholder="챌린지 이름을 입력하세요." value="${list.chalName}">
						</div>
					</div>
					<div class="row" style="padding-bottom: 5px;">
						<div class="col-sm-12">
							<span style="font-family: 'yg-jalnan', verdana, tahoma;">시작일
								: </span><input type="text" name="from" id="from" autocomplete="off"
								style="width: 21%;" value="${list.startDate}"> <span
								style="font-family: 'yg-jalnan', verdana, tahoma;">종료일 :
							</span><input type="text" name="to" id="to" autocomplete="off"
								style="width: 21%;" value="${list.endDate}">
						</div>
					</div>
					<div class="row" style="padding-bottom: 5px;">
						<div class="col-sm-12">
							<span style="font-family: 'yg-jalnan', verdana, tahoma;">카테고리
								: </span> <select name="category">
								<option value="건강" <c:if test="${list.category eq '건강'}">selected</c:if>>건강</option>
								<option value="취미" <c:if test="${list.category eq '취미'}">selected</c:if>>취미</option>
								<option value="금융" <c:if test="${list.category eq '금융'}">selected</c:if>>금융</option>
								<option value="공부" <c:if test="${list.category eq '공부'}">selected</c:if>>공부</option>
								<option value="생활" <c:if test="${list.category eq '생활'}">selected</c:if>>생활</option>
								<option value="펫/환경" <c:if test="${list.category eq '펫/환경'}">selected</c:if>>펫/환경</option>
							</select>&ensp; <span style="font-family: 'yg-jalnan', verdana, tahoma;">태그
								: </span> <input type="text" id="tag" name="tag"
								placeholder="tag1,tag2,tag3"  value="${list.tag}"/>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<textarea name="chalInfo" id="chalInfo"
								style="min-height: 200px; overflow: hidden;"
								placeholder="챌린지 정보를 입력하세요.">${list.chalInfo}</textarea>
						</div>
					</div>
					<input type="hidden" value="10000" name="price"> <input
						type="hidden" value="진행중" name="chalStat">
						<input type="hidden" value="${list.chalSeq}" name="chalSeq"> <br>
					<div class="row">
						<div class="col-sm-12" style="text-align: right">
							<button type="button" id="chalList">목록으로</button>
							<button id="complete">수정완료</button>
						</div>
					</div>
				</div>
		</form>
	</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="/WEB-INF/views/footer.jsp" flush="false" />

	<script>
		// 시작일 종료일 출력.
		$(function() {
			var dateFormat = "yy/mm/dd", from = $("#from").datepicker(
					{
						showMonthAfterYear : true, //연도,달 순서로 지정
						changeMonth : true,//달 변경 지정
						dateFormat : "yy/mm/dd",//날짜 포맷
						dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],//요일 이름 지정
						monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7",
								"8", "9", "10", "11", "12" ],//월 이름 지정
						minDate : 0
					//오늘 이전 날짜를 선택할 수 없음
					}).on("change", function() {
				to.datepicker("option", "minDate", getDate(this));//종료일의 minDate 지정
			}), to = $("#to").datepicker(
					{
						showMonthAfterYear : true,
						changeMonth : true,
						dateFormat : "yy/mm/dd",
						dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
						monthNamesShort : [ "1", "2", "3", "4", "5", "6", "7",
								"8", "9", "10", "11", "12" ],
						minDate : '+1D' //내일부터 선택가능, 지정형식 예(+1D +1M +1Y)
					}).on("change", function() {
				from.datepicker("option", "maxDate", getDate(this));//시작일의 maxDate 지정
			});

			function getDate(element) {
				var date;
				try {
					date = $.datepicker.parseDate(dateFormat, element.value);
					if (element.id == 'from') {
						date.setDate(date.getDate() + 1);//종료일은 시작보다 하루 이후부터 지정할 수 있도록 설정
					} else {
						date.setDate(date.getDate() - 1);//시작일은 종료일보다 하루 전부터 지정할 수 있도록 설정
					}
				} catch (error) {
					date = null;
				}
				return date;
			}
		});
	</script>

	<script>
		// 사진 업로드시 변경.
		$('#file').change(function() {
			setImageFromFile(this, '#preview');
		});

		function setImageFromFile(input, expression) {
			if (input.files && input.files[0]) {
				let reader = new FileReader();
				reader.onload = function(e) {
					$(expression).attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

	<script>
		// 목록으로가기.
		$("#chalList").on("click", function() {
			<c:if test="${select==''}">
				location.href = "/admin/chal?cpage=${cpage}&select=${select}&keyword=${keyword}";
			</c:if>
			<c:if test="${select!=''}">
				location.href = "/admin/chalSearch?cpage=${cpage}&select=${select}&keyword=${keyword}";
			</c:if>
		})
	</script>

	<script>
		// 작성완료 버튼 클릭 시.
		$("#complete").on("click", function() {
			if ($("#input-title").val() == "") {
				alert("챌린지 이름을 입력하세요.");
				return false;
			}
			if ($("#chalInfo").val() == "") {
				alert("챌린지 정보를 입력하세요.");
				return false;
			}

			if ($("#from").val() == "") {
				alert("시작일을 선택하세요.");
				return false;
			}

			if ($("#to").val() == "") {
				alert("종료일을 선택하세요.");
				return false;
			}

			if ($("#tag").val() == "") {
				alert("태그를 입력하세요.");
				return false;
			}else if($("#tag").val().split(',').length-1 !=2){
				alert("태그 양식을 지켜주세요.");
				return false;
			}
		})
	</script>
</body>
</html>