/**
 * 
 */
function logout() {
	var f = confirm('로그아웃 하시겠습니까?');
	return f;
}
/********************wishlist*************************/
function addWish(productForm) {
	
	productForm.p_qty.value = qty.value;
	productForm.action = 'insert_wish';
	productForm.method = 'POST';
	productForm.submit();
}

function quickWish() {
	var param = "p_no=" + p_no;
	sendRequest("quickWish", param, null, "POST");
}

function removeWish() {
	var param = "p_no=" + p_no;
	sendRequest("removeItem", param, null, "POST");
}

/********************category*************************/
function category(p_ccode) {
	var param = "p_ccode=" + p_ccode;
	sendRequest("loginForm", null, responseCate, "POST");
}
function responseCate(){
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			alert(httpRequest.readyState);
			alert(httpRequest.status);
		}
	}
}


/*********************************************************************************************/
function removeReview(){
	var param = "r_no="+r_no;
	
	sendRequest("removeReview",param,null,"POST");

}

function updateReview(review){
	

	var width=800, height=500;
	var left = (screen.availWidth - width)/2;
	var top = (screen.availHeight - height)/2;
	var specs = "width=" + width;
	specs += ",height=" + height;
	specs += ",left=" + left;
	specs += ",top=" + top;
	
	
	window.open('updateReview?r_no='+review,'리뷰 수정', specs);
						
	
}

function updateResult() {
		if(!$(':input:radio[name=r_price]:checked').val()) {
		    alert("가격점수를 입력해주세요.");
		  
		    return false;
		}
		
		if(!$(':input:radio[name=r_design]:checked').val()) {
		    alert("디자인점수를 입력해주세요.");
		    return false;
		}
		if(!$(':input:radio[name=r_quality]:checked').val()) {
		    alert("품질점수를 입력해주세요.");
		    return false;
		}
	
		if(reviewForm.r_nickName.value==""){
			alert("닉네임을 입력해주세요");
			reviewForm.r_nickName.focus();
			return false;
		}
		
		if(!(nickNameCheck())){
			alert("닉네임 유형이 올바르지않습니다");
			reviewForm.r_nickName.focus();
			return false;
		}
		
		if(reviewForm.r_summary.value==""){
			alert("summary를 입력해주세요");
			reviewForm.r_summary.focus();
			return false;
		}
		if(!(summaryCheck())){
			alert("summary 유형이 올바르지않습니다");
			reviewForm.r_summary.focus();
			return false;
		}
		if(reviewForm.r_review.value==""){
			alert("리뷰를 입력해주세요");
			reviewForm.r_review.focus();
			return false;
		}
		
		if(!(reviewCheck())){
			alert("리뷰 유형이 올바르지않습니다");
			reviewForm.r_review.focus();
			return false;
		}
		
		if (confirm("리뷰를 수정하시겠습니까?") == true) {
			reviewForm.action = "updateReviewResult";
			reviewForm.method = "post";
			opener.window.name="reviewOpener";
			reviewForm.target = opener.window.name;
			reviewForm.submit();
			self.close();
		}
		
		return true;
	
	
}
function review() {
	/*var r_m_id=${sessionScope.sMember.m_id};
	alert(r_m_id);*/
	if(!$(':input:radio[name=r_price]:checked').val()) {
	    alert("가격점수를 입력해주세요.");
	  
	    return false;
	}
	
	if(!$(':input:radio[name=r_design]:checked').val()) {
	    alert("디자인점수를 입력해주세요.");
	    return false;
	}
	if(!$(':input:radio[name=r_quality]:checked').val()) {
	    alert("품질점수를 입력해주세요.");
	    return false;
	}
	
	if(reviewForm.r_nickName.value==""){
		alert("닉네임을 입력해주세요");
		reviewForm.r_nickName.focus();
		return false;
	}
	
	if(!(nickNameCheck())){
		alert("닉네임 유형이 올바르지않습니다");
		reviewForm.r_nickName.focus();
		return false;
	}
	
	if(reviewForm.r_summary.value==""){
		alert("summary를 입력해주세요");
		reviewForm.r_summary.focus();
		return false;
	}
	
	if(!(summaryCheck())){
		alert("summary 유형이 올바르지않습니다");
		reviewForm.r_summary.focus();
		return false;
	}
	
	if(reviewForm.r_review.value==""){
		alert("리뷰를 입력해주세요");
		reviewForm.r_review.focus();
		return false;
	}
	
	if(!(reviewCheck())){
		alert("리뷰 유형이 올바르지않습니다");
		reviewForm.r_review.focus();
		return false;
	}

	return true;
}

function nickNameCheck(){
	var id = document.reviewForm.r_nickName.value;
	var spanE = document.getElementById('idMsg');
	
	if(id.length > 6){
		spanE.innerHTML = "6자리 이내여야 합니다";
		reviewForm.r_nickName.focus();
		return false;
	}else if(id.search(/\s/g) != -1) {
		spanE.innerHTML = "공백은 들어갈수 없습니다.";
		reviewForm.r_nickName.focus();
		return false;
		
	}else{
		spanE.innerHTML='';
		return true;
	}
	
	if (id == null || id == '') {
		spanE.innerHTML = '';
		return;
	}
}

function summaryCheck(){
	var id = document.reviewForm.r_summary.value;
	var spanE = document.getElementById('summaryMsg');
	
	if(id.length > 40){
		spanE.innerHTML = "40자리 이내여야 합니다";
		reviewForm.r_summary.focus();
		return false;
	}else{
		spanE.innerHTML='';
		return true;
	}
	
	if (id == null || id == '') {
		spanE.innerHTML = '';
		return;
	}
}

function reviewCheck(){
	var id = document.reviewForm.r_review.value;
	var spanE = document.getElementById('reviewMsg');
	
	if(id.length > 160){
		spanE.innerHTML = "160자리 이내여야 합니다";
		reviewForm.r_review.focus();
		return false;
	}else{
		spanE.innerHTML='';
		return true;
	}
	
	if(id==null || id==''){
		spanE.innerHTML='';
		return;
	}
}

var httpRequest = null;
function getXMLHttpRequest() {
	if (window.ActiveXObject) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e1) {
				return null;
			}
		}
	} else if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else {
		return null;
	}
}

function sendRequest(url, params, callback, method) {
	httpRequest = getXMLHttpRequest();
	var httpMethod = method ? method : 'GET';
	if (httpMethod != 'GET' && httpMethod != 'POST') {
		httpMethod = 'GET';
	}
	var httpParams = (params == null || params == '') ? null : params;
	var httpUrl = url;
	if (httpMethod == 'GET' && httpParams != null) {
		httpUrl = httpUrl + "?" + httpParams;
	}
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	httpRequest.onreadystatechange = callback;
	httpRequest.send(httpMethod == 'POST' ? httpParams : null);
}

function ajaxReviewRequestPost(){
	var id = document.reviewForm.r_nickName.value;

	if(id.trim()==''){
		var spanE = document.getElementById('idMsg');
		spanE.innerHTML=''
		document.reviewForm.r_nickName.focus();
		return;
	}
	var param ='id='+id;
	
	sendRequest('reviewCheck', param, postResultDispaly, 'POST');
}

function postResultDispaly(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var responseText=httpRequest.responseText;
			var spanE = document.getElementById('idMsg');
			spanE.innerHTML=responseText;
		}else{
			var spanE = document.getElementById('idMsg');
			spanE.innerHTML='error:'+httpRequest.status;
			//spanE.style.backgroundColor='yellow';
			//spanE.style.cssText='border:1px dotted blue;background-color:red';
		}
	}
}

