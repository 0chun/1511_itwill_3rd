/**
 * 
 */
/* 회원가입 시작 */
function joinSub() {
	if (document.a.m_id.value == "") {
		alert("아이디를 입력해주세요.");
		a.m_id.focus();
		return false;
	}
	if (!(idcheck())) {
		alert("아이디 유형이 올바르지 않습니다.");
		a.m_id.focus();
		return false;
	}
	if (a.m_password.value == "") {
		alert("비밀번호를 입력해주세요.");
		a.m_password.focus();
		return false;
	}

	if (!(pwcheck())) {
		alert("비밀번호 유형이 올바르지 않습니다.");
		a.m_password.focus();
		return false;
	}
	if (a.m_password2.value == "") {
		alert("비밀번호 재입력을 입력해주세요.");
		a.m_password2.focus();
		return false;
	}
	if (!(pwcheck2())) {
		alert("재비밀번호 유형이 올바르지 않습니다.");
		a.m_password2.focus();
		return false;
	}

	if (a.m_name.value == "") {
		alert("이름을 입력해주세요.");
		a.m_name.focus();
		return false;
	}
	if (!(namecheck())) {
		alert("이름 유형이 올바르지 않습니다.");
		a.m_name.focus();
		return false;
	}
	if (a.m_email.value == "") {
		alert("이메일을 입력해주세요.");
		a.m_email.focus();
		return false;
	}
	if (!(emailcheck())) {
		alert("이메일 유형이 올바르지 않습니다.");
		a.m_email.focus();
		return false;
	}
	if (a.m_phone.value == "") {
		alert("휴대전화번호를 입력해주세요.");
		return false;
	}
	if (!(phonecheck())) {
		alert("휴대전화번호 유형이 올바르지 않습니다.");
		a.m_phone.focus();
		return false;
	}
	if (a.m_sex.value == "") {
		alert("성별을 선택해주세요.");
		a.m_sex.focus();
		return false;
	}

	if (a.m_address.value == "") {
		alert("주소를 입력해주세요.");
		return false;
	}
	if (a.m_zipcode.value == "") {
		alert("우편번호를 검색해주세요.");
		return false;
	}
	a.action = 'join';
	a.method = 'POST';
	a.submit();
}
function idcheck() {
	var str = a.m_id.value;
	var spanE = document.getElementById('idMsg');
	var firststr = str.substr(0, 1);
	if (str == null || str == '') {
		spanE.innerHTML = '';
		return;
	}
	if (!new RegExp(/^[A-Za-z]{1}$/g).test(firststr)) {
		spanE.innerHTML = "첫번째 문자는 영문을 입력해주세요.";
		a.m_id.focus();
		return false;
	} else if (!new RegExp(/^[a-zA-Z0-9]{4,12}$/g).test(str)) {
		spanE.innerHTML = "영문 대,소문자 숫자 4~12자리 입력가능";
		a.m_id.focus();
		return false;
	} else {
		spanE.innerHTML = '';
		return true;
	}
}
function pwcheck() {
	var pw = a.m_password.value;

	var num = pw.search(/[0-9]/g);

	var eng = pw.search(/[a-zA-Z]/ig);

	var spanE = document.getElementById('pwMsg');

	if (a.m_password.value == null || a.m_password.value == '') {
		spanE.innerHTML = '';
		return;
	}
	if (pw.length < 8 || pw.length > 12) {
		spanE.innerHTML = "8자리 ~ 12자리 이내이여야 합니다.";
		a.m_password.focus();
		return false;
	} else if (pw.search(/\s/g) != -1) {
		spanE.innerHTML = "공백은 들어갈수 없습니다.";
		a.m_password.focus();
		return false;

	} else if (num < 0 || eng < 0) {
		spanE.innerHTML = "영문 숫자 2가지를 조합해서 사용해야 합니다.";
		a.m_password.focus();
		return false;
	} else {
		spanE.innerHTML = '';
		return true;
	}
}

function pwcheck2() {
	var spanE = document.getElementById('pwMsg2');
	if (a.m_password2.value == null || a.m_password2.value == '') {
		spanE.innerHTML = '';
		return;
	}
	if (a.m_password.value != a.m_password2.value) {
		spanE.innerHTML = "비밀번호 와 일치하지 않습니다.";
		a.m_password2.focus();
		return false;
	} else {
		spanE.innerHTML = '';
		return true;
	}
}

function namecheck() {
	var spanE = document.getElementById('nameMsg');
	if (a.m_name.value == null || a.m_name.value == '') {
		spanE.innerHTML = '';
		return;
	}
	if (!(new RegExp(/^[가-힣]{2,5}$/)).test(a.m_name.value)) {
		spanE.innerHTML = "입력하신 이름 유형이 올바르지 않습니다.";
		a.m_name.focus();
		return false;
	} else {
		spanE.innerHTML = '';
		return true;
	}
}
function emailcheck() {
	var spanE = document.getElementById('emailMsg');
	if (a.m_email.value == null || a.m_email.value == '') {
		spanE.innerHTML = '';
		return;
	}
	if (!(new RegExp(
			/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i))
			.test(a.m_email.value)) {
		spanE.innerHTML = '입력하신 이메일 유형이 올바르지 않습니다.';
		return false;
	} else {
		spanE.innerHTML = '';
		return true;
	}
}

function phonecheck() {
	var spanE = document.getElementById('phoneMsg');
	if (a.m_phone.value == null || a.m_phone.value == '') {
		spanE.innerHTML = '';
		return;
	}
	if (!(new RegExp(/^\d{3}-\d{3,4}-\d{4}$/)).test(a.m_phone.value)) {
		spanE.innerHTML = '입력하신 휴대전화번호 유형이 올바르지 않습니다.';
		return false;
	} else {
		spanE.innerHTML = '';
		return true;
	}
}
function selectZipcode() {
	var str = a.m_zipcode.value;
	var spanE = document.getElementById('zipcodeMsg');
	if (str == null || str == "") {
		spanE.innerHTML = '우편번호 버튼을 눌러주세요.';
	} else {
		spanE.innerHTML = '';
	}
	return;
}
function clearId() {
	var spanE = document.getElementById('idMsg');
	var str = spanE.innerHTML;
	var check = /[사]/;
	if (str.match(check)) {
		spanE.innerHTML = '';
	}
	return;
}

// update
function changeA() {

	if (a.abutton.value == 0) {
		changeN();
		changeE();
		changeP();
		changeAZ();
		a.abutton.value = 1;
		return;
	} else {
		a.nbutton.style.display = "block";
		a.m_name.style.display = "none";
		a.nbutton.value = 0;
		a.ebutton.style.display = "block";
		a.m_email.style.display = "none";
		a.ebutton.value = 0;
		a.pbutton.style.display = "block";
		a.m_phone.style.display = "none";
		a.pbutton.value = 0;
		a.azbutton.style.display = "block";
		a.m_address.style.display = "none";
		a.zvbutton.style.display = "none";
		zipcodeli.style.display = "none";
		a.azbutton.value = 0;
		a.abutton.value = 0;
		return;
	}
}

function changeN() {
	a.nbutton.style.display = "none";
	a.m_name.style.display = "block";
	a.nbutton.value = 1;
}
function changeE() {
	a.ebutton.style.display = "none";
	a.m_email.style.display = "block";
	a.ebutton.value = 1;
}
function changeP() {
	a.pbutton.style.display = "none";
	a.m_phone.style.display = "block";
	a.pbutton.value = 1;
}
function changeAZ() {
	a.azbutton.style.display = "none";
	a.m_address.style.display = "block";
	a.zvbutton.style.display = "block";
	zipcodeli.style.display = "block";
	a.azbutton.value = 1;
}
function updateInfo() {
	if (a.m_name.value == "") {
		alert("이름을 입력해주세요.");
		a.m_name.focus();
		return false;
	}
	if (!(namecheck())) {
		alert("이름 유형이 올바르지 않습니다.");
		a.m_name.focus();
		return false;
	}
	if (a.m_email.value == "") {
		alert("이메일을 입력해주세요.");
		a.m_email.focus();
		return false;
	}
	if (!(emailcheck())) {
		alert("이메일 유형이 올바르지 않습니다.");
		a.m_email.focus();
		return false;
	}
	if (a.m_phone.value == "") {
		alert("휴대전화번호를 입력해주세요.");
		return false;
	}
	if (!(phonecheck())) {
		alert("휴대전화번호 유형이 올바르지 않습니다.");
		a.m_phone.focus();
		return false;
	}
	if (a.m_address.value == "") {
		alert("주소를 입력해주세요.");
		a.m_address.focus();
		return false;
	}
	if (a.m_zipcode.value == "") {
		alert("우편번호를 검색해주세요.");
		return false;
	}
	if (confirm("이 정보를 등록하시겠습니까?") == true) {
		a.action = 'updateMyinfo';
		a.method = 'POST';
		a.submit();
	} else {
		return;
	}
}
// delete
function withdrawal() {
	if (document.a.m_id.value == "") {
		alert("아이디를 입력해주세요.");
		a.m_id.focus();
		return false;
	}
	if (a.m_password.value == "") {
		alert("비밀번호를 입력해주세요.");
		a.m_password.focus();
		return false;
	}
	if (a.m_email.value == "") {
		alert("이메일을 입력해주세요.");
		a.m_email.focus();
		return false;
	}
	if (!(emailcheck())) {
		alert("이메일 유형이 올바르지 않습니다.");
		a.m_email.focus();
		return false;
	}
	if (a.m_phone.value == "") {
		alert("휴대전화번호를 입력해주세요.");
		return false;
	}
	if (!(phonecheck())) {
		alert("휴대전화번호 유형이 올바르지 않습니다.");
		a.m_phone.focus();
		return false;
	}
	if(a.m_password.value != a.sm_password.value){
		alert(a.sm_password.value);
		alert(a.sm_password.value);
		var spanE =document.getElementById('pwMsg');
		spanE.innerHTML='기존 비밀번호와 일치하지 않습니다.'
		return false;
	}
	if(a.m_email.value != a.sm_email.value){
		var spanE =document.getElementById('emailMsg');
		spanE.innerHTML='기존 이메일과 일치하지 않습니다.'
		return false;
	}
	if(a.m_phone.value != a.sm_phone.value){
		var spanE =document.getElementById('phoneMsg');
		spanE.innerHTML='기존 휴대폰번호와 일치하지 않습니다.'
		return false;
	}
	if (confirm("정말로 회원탈퇴를 하시겠습니까?") == true) {
		a.action = 'withdrawal';
		a.method = 'POST';
		a.submit();
	} else {
		return;
	}
}

/* 충만 httpRequest */

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

/* 충만 중복확인 */
function ajaxRequestPost() {
	var spanE = document.getElementById('idMsg');
	if (!(idcheck())) {
		spanE.innerHTML = '영문 소문자, 숫자 5~12자리 이내만 입력가능';
		return;
	}
	var m_id = document.a.m_id.value;
	if (m_id.trim() == '') {
		spanE.innerHTML = ''
		document.a.m_id.focus();
		return;
	}
	var param = 'm_id=' + m_id;
	sendRequest('joinExist', param, postResultDispaly, 'POST');
}
function postResultDispaly() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var responseText = httpRequest.responseText;
			var spanE = document.getElementById('idMsg');
			spanE.innerHTML = responseText;
		} else {
			var spanE = document.getElementById('idMsg');
			spanE.innerHTML = 'error:' + httpRequest.status;

			// spanE.style.backgroundColor='yellow';
			// spanE.style.cssText='border:1px dotted
			// blue;background-color:red';
		}
	}
}
// zipcode
function zipcode_view() {
	var labelE = document.getElementById("addressMsg");
	var dong = a.m_address.value;

	if (dong == null || dong == "") {
		labelE.innerHTML = "주소를 입력해주세요.";
		return false;
	} else if (!(new RegExp(/^[가-힣0-9\s]{1,10}$/)).test(dong)) {
		labelE.innerHTML = "올바른 주소 형식을 입력해주세요.";
		return false;
	} else {
		labelE.innerHTML = "";
	}
	window
			.open(
					'zipcode?dong=' + dong + '&flag=1',
					'우편번호 검색',
					'left=600, top=40, toolbar=no, location=no, window.directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=500, height=450')
}

function zipcode_view_userOrder() {
	window
			.open(
					'zipcodeForm?flag=2',
					'우편번호 검색',
					'left=600, top=40, toolbar=no, location=no, window.directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=500, height=450')
}

function addzipcode(a) {
	if (a == '1') {
		if (confirm("이 정보를 등록하시겠습니까?") == true) {
			var oldadr = window.opener.a.m_address.value;
			oldadr = "";
			var newadr = b.adr.value;
			window.opener.a.m_address.value = newadr;
			window.opener.a.m_zipcode.value = b.zipselect.value;
			window.close();
		} else {
			return;
		}
	} else if (a = '2') {
		if (confirm("이 정보를 등록하시겠습니까?") == true) {
			var addr1 = b.adrTemp.value;
			var addr2 = b.adr.value;
			window.opener.a.billing.value = addr1 + " ( " + addr2 + " ) ";
			window.close();
		} else {
			return;
		}
	}
}
function researchzipcode() {
	var dong = document.b.adrTemp.value;
	location.href = 'zipcode?dong=' + dong + '&flag=' + document.b.flag.value;
}

function closezipcode() {
	if (confirm("정말로 현재 창을 닫으시겠습니까?") == true) {
		window.close();
	} else {
		return;
	}
}

/* 회원가입 끝 */