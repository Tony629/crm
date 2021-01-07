/*  选择客户 */
function selectCustomer() {
	var url = ctx + "crm/customer/selectCustomer";
	$.modal.open("选择客户", url);
}

/* 选择成交订单 */
function selectOrder() {
	var customerId = $("#customerId").val();
	if (customerId == null || customerId == "") {
		$.modal.msgWarning("请先选择客户！");
		return;
	}
	var url = ctx + "crm/order/selectOrder/"+customerId;
	$.modal.open("选择成交订单", url);
}

/* 选择用户 */
function selectUser() {
	var url = ctx + 'system/user/selectUser';
	$.modal.open("选择人员", url);
}

/*  选择产品 */
function selectProduct() {
	 var url = ctx + "crm/product/selectProduct";
	 $.modal.open("选择产品", url);
}







