<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
blockquote, body, button, code, dd, div, dl, dt, fieldset, form, h1, h2,
	h3, h4, h5, h6, input, legend, li, ol, p, pre, select, td, textarea, th,
	ul {
	margin: 0;
	padding: 0
}

.pin {
	width: 3pc;
	height: 52px;
	text-align: center;
	color: #fff;
	box-sizing: border-box;
	z-index: 10;
	overflow: visible !important
}

.pin.selected {
	z-index: 100;
	opacity: 1;
	filter: alpha(opacity = 100);
	transform-origin: center center;
	-webkit-transform-origin: center center;
	-moz-transform-origin: center center;
	-ms-transform-origin: center center;
	animation-duration: 1.5s;
	animation-name: bounce;
	animation-iteration-count: infinite;
	-webkit-animation-duration: 1.5s;
	-webkit-animation-name: bounce;
	-webkit-animation-iteration-count: infinite;
	-moz-animation-duration: 1.5s;
	-moz-animation-name: bounce;
	-moz-animation-iteration-count: infinite;
	-ms-animation-duration: 1.5s;
	-ms-animation-name: bounce;
	-ms-animation-iteration-count: infinite;
}

.pin {
	display: inline-block;
	overflow: hidden;
	width: 51px;
	height: 57px;
	background-image: url(resources/img/apartment.png);
	background-position: -91px -369px;
	line-height: 999em;
	vertical-align: top
}

.pin>.area {
	display: block;
	margin-top: 11px;
	font-size: 11px;
	font-weight: 200;
	color: hsla(0, 0%, 100%, .6);
	height: auto;
	line-height: 1
}

.pin>.price {
	margin-top: 2px;
	display: block;
	font-weight: 600;
	font-size: 14px;
	height: auto;
	line-height: 1
}
</style>

<script type="text/javascript">
	var content = '<div class="pin selected" style="position: absolute; cursor: pointer; ">'
			+ '<div class="area">평수</div>'
			+ '<div class="price">매매가</div>'
			+ '</div>'
</script>

</head>
<body>

	<div class="pin selected" style="position: absolute; cursor: pointer;">
		<div class="area">33평</div>
		<div class="price">4.7억</div>
		<div class="extension" style="display: none;"></div>
	</div>

</body>
</html>