$(function() {$(".quick-view, .magik-btn-quickview").mousedown(function(e) {	// 퀵뷰 버튼을 눌렀을 경우
	$("#quickView").css("top", 
			Math.max(0, (($(window).height() - $("#quickView").outerHeight()) / 2) +
					$(window).scrollTop()) + "px");
		var bw = $('body').width();
	      var sw = $('#scrollbar').width();
	      var wh = $(window).height();
	      var dh = $(document).height();
	      $('body').css('overflow', 'hidden').width( bw-sw );
	      if( wh < dh ) {
	    	  $('#scrollbar').show();
	      }
	});
});
// 닫기 버튼 눌렀을 경우
$(function() {$("#fancybox-close").mousedown(function(e) {
	 $('#scrollbar').hide();
     $('body').css('overflow', '').css('width', '');
     $("#quickView").css("visibility", "hidden");
	});
});

function quickViewShow(p_no) {
	var param = "p_no=" + p_no;
	sendRequest("quickView", param, responseQuickView, "POST");
}

function responseQuickView(){
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var responseText = httpRequest.responseText.split("|");
			// 퀵뷰
			var qView = document.getElementById("quickView");
			qView.style.visibility="visible";
			
			//alert(responseText);
			for(var i = 0; i < 6; i++) {
				var tempStr = "moreview_img_" + (i+1);
				document.getElementById(tempStr).src = responseText[i];
				tempStr = "source_img_" + (i+1)
				document.getElementById(tempStr).src = responseText[i];
				tempStr = "zoom_img_" + (i+1);
				document.getElementById(tempStr).src = responseText[i];
			}
			
			document.getElementById("p_name").innerHTML = responseText[9];
			document.getElementById("p_price").innerHTML = responseText[10];
			document.getElementById("p_dc_price").innerHTML = responseText[11];
			document.getElementById("p_no").value= responseText[12];
			// 11~  컬러 다음부터 사이즈 끝
			for(var i = 13; i < responseText.length; i++) {
				tempStr = "<option>" + responseText[i] + "</option>"
				if(responseText[i] == "230" || responseText[i] == "240" || responseText[i] == "250"
					|| responseText[i] == "S" || responseText[i] == "M" || responseText[i] == "L" ||
					responseText[i] == "FREE") {
					document.getElementById("sizeSelect").innerHTML += tempStr;
				}else {
					document.getElementById("colorSelect").innerHTML += tempStr;
				}
			}
			var jQuerycontainer = $("#moreview li img[src]");	// 퀵뷰 moreview 선택자
			// 34
			var count = 0;
			var idx = 0;
			$.each(jQuerycontainer, function (index, liObject) {
				if(count < 6 && (index + 1) % 4 == 0) {
					liObject.src = responseText[count++];
				} 
				else if(index >= 27) {
					liObject.src = responseText[idx++];
				}
				else if(index == 26){
					liObject.src = responseText[5];
				}
				
			});
		}
	}
}