/**
 * 
 */
function searchProduct(){
	var p_ccode = c.p_ccode.value;
	var p_search = c.p_search.value;
	
	c.action="searchProduct";
	c.method = 'POST';
	c.submit();
}
