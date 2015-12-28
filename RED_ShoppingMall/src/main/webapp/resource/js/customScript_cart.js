function moveCart() {
	location.href = "cart";
}
function continueShopping() {
	location.href = "indexPage";
}

/*
 *  카트 담기
 */
function addCart(productForm) {
	productForm.p_size.value = sizeSelect.options[sizeSelect.selectedIndex].value;
	if (productForm.p_size.value == 0) {
		alert('Size 를 선택해주세요.');
		return;
	}
	productForm.p_color.value = colorSelect.options[colorSelect.selectedIndex].value;
	if (productForm.p_color.value == 0) {
		alert('Color 를 선택해주세요.');
		return;
	}
	productForm.p_qty.value = qty.value;
	productForm.action = 'addCart';
	productForm.method = 'POST';
	productForm.submit();
}

/*
 *  2015년 11월 27일 서주원 추가
 *  카트 전체 비우기
 */
function cleanCart() {
	sendRequest("cleanCart", null, responseCart, "GET");
}

function responseCart() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var responseText = httpRequest.responseText.split("|");
			$("#cleanCartTr").text("");
			$("#cleanCartTr").after("<tr><td colspan='6' align='center'>카트에 담은 상품이 없습니다.</td></tr>");
			$("#cart-total").text("");
			$("#cart-sidebar").text("");
			$("#cart-sidebar").after("<li class='item even'>카트에 담은 상품이 없습니다.</li>");
			$("#top_price").text(responseText[0]);
			$("#totalPriceSpan_sc").text(responseText[0]);
			$("#subTotalPriceSpan").text(responseText[0]);
		}
	}
}

/*
 * 카트 아이템 지우기
 */
function removeCartProduct(productName){
	var param = "p_name=" + productName;
	var trId = "#cleanCartTr tr[id='" + productName + "']";	//#cleanCartTr 
	var liId = "#cart-sidebar li[id='" + productName + "']";
	$(trId).remove();
	$(liId).remove();
	sendRequest("removeCartProduct", param, responseRemoveCartProduct, "POST");
}

function responseRemoveCartProduct() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var respText = httpRequest.responseText;
			var arrayString = respText.split("|");
			
			if(arrayString.length > 1)	{	// 카트가 남은 경우
				$("#cart-total").text(arrayString[2]);
				$("#price").text(arrayString[0]);
				$("#subTotalPriceSpan").text(arrayString[0]);
				$("#totalPriceSpan_sc").text(arrayString[1]);
				$("#top_price").text(arrayString[0]);
			} else {	// 카트가 비었을 경우
				$("#cleanCartTr").after("<tr><td colspan='6' align='center'>카트에 담은 상품이 없습니다.</td></tr>");
				$("#cart-total").text("");
				$("#cart-sidebar").after("<li class='item even'>카트에 담은 상품이 없습니다.</li>");
				$("#top_price").text(arrayString[0]);
				$("#totalPriceSpan_sc").text(arrayString[0]);
				$("#subTotalPriceSpan").text(arrayString[0]);
			}
		}
	}
}

/*
 * 	바로 카트 담기
 */
function quickCart(p_no) {
	var param = "p_no=" + p_no;
	var f = confirm('해당 상품을 Cart에 담으시겠습니까?');
	if(f){
		sendRequest("quickCart", param, responseQuickCart, "POST");
		return true;
	}
	return false;
}

function responseQuickCart() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var responseTextArray = httpRequest.responseText.split("|");
			document.getElementById("cart-total").innerHTML = responseTextArray[0];
			document.getElementById("cart-sidebar").innerHTML = responseTextArray[1];
			document.getElementById("top_price").innerHTML = responseTextArray[2];
		}
	}
}

/*
 * 	헤드 카트에서 삭제 버튼 누른 경우
 */
function quickRemove(p_name) {
	var param = "p_name=" + p_name;
	alert(p_name);
	sendRequest("quickRemove", param, responseQuickRemove, "POST");
}

function responseQuickRemove() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			var responseTextArray = httpRequest.responseText.split("|");
			document.getElementById("cart-sidebar").innerHTML = responseTextArray[0];
			if(responseTextArray.length == 1) {	// 카트가 빈 경우
				document.getElementById("top_price").innerHTML = "0";
				return;	// 밑에 작업은 불 필요
			}
			//document.getElementById("cart-total").innerHTML = responseTextArray[0];
			document.getElementById("top_price").innerHTML = responseTextArray[1];
		}
	}
}
/*
 * 카트 수량의 새로고침
 */
function modify(modifyCartQty){
	var param = "qty="+modifyCartQty;
	alert(param);
	
	mf.action = "modify";
	mf.method = "POST";
	mf.submit();
}