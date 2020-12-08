<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../layout/topbar.jsp" %>
	<%@ include file="../layout/navbar.jsp" %>
	<!-- CONTENT-->
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-lg-12">
              <p class="text-muted lead">You currently have 1 item(s) in your cart.</p>
            </div>
            <div id="basket" class="col-lg-9">
              <div class="box mt-0 pb-0 no-horizontal-padding">
              	<form:form modelAttribute="orders" action='<%=request.getContextPath() + "/user/checkout/address" %>' method="POST">
                  <div class="table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th colspan="2">Product</th>
                          <th>Quantity</th>
                          <th>Unit price</th>
                          <th>Discount</th>
                          <th colspan="2">Total</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td><a href="#"><img src="<c:url value="/resources/img/product/cover/product${product.code}.png" />" alt="${product.name}" class="img-fluid"></a></td>
                          <td><a href="#">${product.name}</a></td>
                          <form:hidden path="productCode" value="${product.code}"></form:hidden>
                          <td>
                            <input id="numQuantity" type="number" value="1" class="form-control">
                            <form:hidden path="quantity" value="1"></form:hidden>
                          </td>
                          	
                          <td>
                          	P${product.price}
                          	<input id="pricePerQuantity" type="hidden" value="${product.price}">
                          </td>
                          <td>P0.00</td>
                          <td class="totalPrice">P${product.price}</td>
                          <td><a href="#"><i class="fa fa-trash-o"></i></a></td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th colspan="5">Total</th>
                          <th colspan="2" class="totalPrice">P${product.price}</th>
                          <form:hidden path="total" class="totalPrice" value="${product.price}"></form:hidden>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <div class="box-footer d-flex justify-content-between align-items-center">
                    <div class="left-col"><a href="<%=request.getContextPath() + "/shop" %>" class="btn btn-secondary mt-0"><i class="fa fa-chevron-left"></i> Continue shopping</a></div>
                    <div class="right-col">
                      <button class="btn btn-secondary"><i class="fa fa-refresh"></i> Update cart</button>
                      <button type="submit" class="btn btn-template-outlined">Proceed to checkout <i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                </form:form>
              </div>
            </div>
            <div class="col-lg-3">
              <div id="order-summary" class="box mt-0 mb-4 p-0">
                <div class="box-header mt-0">
                  <h3>Order summary</h3>
                </div>
                <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>Order subtotal</td>
                        <th class="totalPrice">P${product.price}</th>
                      </tr>
                      <tr>
                        <td>Shipping and handling</td>
                        <th>P0.00</th>
                      </tr>
                      <tr>
                        <td>Tax</td>
                        <th>P0.00</th>
                      </tr>
                      <tr class="total">
                        <td>Total</td>
                        <th class="totalPrice">P${product.price}</th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="box box mt-0 mb-4 p-0">
                <div class="box-header mt-0">
                  <h4>Coupon code</h4>
                </div>
                <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                <form>
                  <div class="input-group">
                    <input type="text" class="form-control"><span class="input-group-btn">
                      <button type="button" class="btn btn-template-main"><i class="fa fa-gift"></i></button></span>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
<script type="text/javascript">
$(document).ready(function () {
    $("#numQuantity").change(updateTotalPrice);
 });
 
function updateTotalPrice() {
	var totalPrice = $("#numQuantity").val() * $("#pricePerQuantity").val();
	$('.totalPrice').html('P' + totalPrice);
	$('#total').val(totalPrice);
	$('#quantity').val($("#numQuantity").val());
}

</script>
</body>
</html>