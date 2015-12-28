<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>RED POLO</title>

<!-- Favicons Icon -->
<link rel="icon"
	href="http://demo.magikthemes.com/skin/frontend/base/default/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" href="http://www.favicon.co.uk/ico/4529.png"
	type="image/x-icon" />

<!-- Mobile Specific -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- JavaScript -->
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/parallax.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/revslider.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="js/cloudzoom.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/toggle.js"></script>
<script type="text/javascript" src="js/customScript.js"></script>
<script type="text/javascript" src="js/customScript_cart.js"></script>
<script type="text/javascript" src="js/customScript_quickView.js"></script>
<script type="text/javascript" src="js/member.js"></script>
<!-- CSS Style -->
<link rel="stylesheet" href="css/animate.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/revslider.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css">
<link rel="stylesheet" href="css/fancybox.css" type="text/css">
<style type="text/css">
#quickView {
	position: absolute; /* 절대 위치	*/
	border: none;
	width: 100%;
	height: 100%;
	z-index: 1100;
	visibility: hidden;
}
#scrollbar {
    position: fixed; top: 0; right:0; height: 100%;
    overflow-y: scroll;
    display: none;
    opacity:0.5;
  }
</style>

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,300,700,800,400,600'
	rel='stylesheet' type='text/css'>
</head>
<body class="contacts-index-index">
	<!-- Header -->
	<jsp:include page="common_header.jsp" />
	<!-- Navbar -->
	<jsp:include page="common_navbar.jsp" />
	<div id="scrollbar"></div>
	<div id="quickView">
		<c:if test="${path != 'product_detail.jsp' }">
		<jsp:include page="quick_view.jsp"/>
		</c:if>
		<!-- <div id="qViewCenter">
		</div> -->
	</div>
	<div class="page">
		<!-- main -->
		<%-- <jsp:include page="list.jsp"/> --%>
		<%-- <jsp:include page="grid.jsp"/> --%>
		<jsp:include page="${path }" />
		<!-- main end -->
	</div>
	<jsp:include page="common_bottom.jsp" />
	<!-- End Footer -->


	<script type='text/javascript'>
		jQuery(document).ready(function() {
			jQuery('#rev_slider_4').show().revolution({
				dottedOverlay : 'none',
				delay : 5000,
				startwidth : 770,
				startheight : 460,

				hideThumbs : 200,
				thumbWidth : 200,
				thumbHeight : 50,
				thumbAmount : 2,

				navigationType : 'thumb',
				navigationArrows : 'solo',
				navigationStyle : 'round',

				touchenabled : 'on',
				onHoverStop : 'on',

				swipe_velocity : 0.7,
				swipe_min_touches : 1,
				swipe_max_touches : 1,
				drag_block_vertical : false,

				spinner : 'spinner0',
				keyboardNavigation : 'off',

				navigationHAlign : 'center',
				navigationVAlign : 'bottom',
				navigationHOffset : 0,
				navigationVOffset : 20,

				soloArrowLeftHalign : 'left',
				soloArrowLeftValign : 'center',
				soloArrowLeftHOffset : 20,
				soloArrowLeftVOffset : 0,

				soloArrowRightHalign : 'right',
				soloArrowRightValign : 'center',
				soloArrowRightHOffset : 20,
				soloArrowRightVOffset : 0,

				shadow : 0,
				fullWidth : 'on',
				fullScreen : 'off',

				stopLoop : 'off',
				stopAfterLoops : -1,
				stopAtSlide : -1,

				shuffle : 'off',

				autoHeight : 'off',
				forceFullWidth : 'on',
				fullScreenAlignForce : 'off',
				minFullScreenHeight : 0,
				hideNavDelayOnMobile : 1500,

				hideThumbsOnMobile : 'off',
				hideBulletsOnMobile : 'off',
				hideArrowsOnMobile : 'off',
				hideThumbsUnderResolution : 0,

				hideSliderAtLimit : 0,
				hideCaptionAtLimit : 0,
				hideAllCaptionAtLilmit : 0,
				startWithSlide : 0,
				fullScreenOffsetContainer : ''
			});
		});
	</script>
</body>
</html>