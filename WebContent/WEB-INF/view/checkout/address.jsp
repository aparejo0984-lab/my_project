<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <div class="row">
            <div id="checkout" class="col-lg-9">
              <div class="box border-bottom-0">
                <form method="get" action="<%=request.getContextPath()%>/user/checkout-delivery">
				<ul class="nav nav-pills nav-fill">
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/address" class="nav-link active"> <i class="fa fa-map-marker"></i><br>Address</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/delivery" class="nav-link"><i class="fa fa-truck"></i><br>Delivery Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/payment" class="nav-link"><i class="fa fa-money"></i><br>Payment Method</a></li>
				   <li class="nav-item"><a href="<%=request.getContextPath()%>/user/checkout/review" class="nav-link"><i class="fa fa-eye"></i><br>Order Review</a></li>
				</ul>
                  <div class="content">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="firstname">Firstname</label>
                          <input id="firstname" type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="lastname">Lastname</label>
                          <input id="lastname" type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="company">Company</label>
                          <input id="company" type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="street">Street</label>
                          <input id="street" type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6 col-md-3">
                        <div class="form-group">
                          <label for="city">City</label>
                          <input id="city" type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-6 col-md-3">
                        <div class="form-group">
                          <label for="zip">ZIP</label>
                          <input id="zip" type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-6 col-md-3">
                        <div class="form-group">
                          <label for="state">State</label>
                          <select id="state" class="form-control"></select>
                        </div>
                      </div>
                      <div class="col-sm-6 col-md-3">
                        <div class="form-group">
                          <label for="country">Country</label>
                          <select id="country" class="form-control"></select>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="phone">Telephone</label>
                          <input id="phone" type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input id="email" type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="box-footer d-flex flex-wrap align-items-center justify-content-between">
                    <div class="left-col"><a href="shop-basket.html" class="btn btn-secondary mt-0"><i class="fa fa-chevron-left"></i>Back to basket</a></div>
                    <div class="right-col">
                      <button type="submit" class="btn btn-template-main">Continue to Delivery Method<i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-lg-3">
				<!-- ORDER SUMMARY-->  
				<%@ include file="order-summary.jsp" %> 
				<!-- ORDER SUMMARY--> 
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
</body>
</html>