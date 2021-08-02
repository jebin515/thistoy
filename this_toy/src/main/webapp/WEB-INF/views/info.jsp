<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=980" />
<link rel="stylesheet" href="/css/style.css">
<link href="/css/infoStyle.css" rel="stylesheet">
<link href="/css/kakaomap.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<title>사이트 안내</title>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="includes/header.jsp"%>
	<main>
		<div class="container">
			<div class="info-title">
				<h1>사이트 안내</h1>
			</div>
			<div class="info-main">
				<ul>
					<li>
						<p>안녕하세요. 키덜트 전문 쇼핑몰 This Toy입니다.</p>
						<p>뭐라고 하지.뭐라고 하지.뭐라고 하지.뭐라고 하지.뭐라고 하지.뭐라고 하지.</p>
						<p>뭐라고 하면 좋아.뭐라고 하면 좋아.뭐라고 하면 좋아.뭐라고 하면 좋아.</p>
						<p>뭐라고 하느냐구.뭐라고 하느냐구.뭐라고 하느냐구.뭐라고 하느냐구.</p>
					</li>
				</ul>
				<ul>
					<li><span>오시는 길</span></li>
					<li>
						<div id="map" style="width: 100%; height: 350px;"></div>
					</li>
				</ul>
				<ul>
					<li><span>주소</span></li>
					<li>
						<p>경기도 안양시 만안구 This Toy</p>
						<p>(우)14001 (지번)안양동 782-68</p>
					</li>
				</ul>
				<ul>
					<li><span>연락처</span></li>
					<li>
						<p>010-1234-5678</p>
					</li>
				</ul>
			</div>
		</div>
	</main>
	<%@ include file="includes/footer.jsp"%>
</body>
<script src="js/kakaomap.js"></script>
<script src="https://unpkg.com/boxicons@latest/dist/boxicons.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d1664dc6b548ee32ad033c3c31ce6dd"></script>
</html>