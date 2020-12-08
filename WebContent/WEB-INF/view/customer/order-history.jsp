<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <div class="row bar mb-0">
            <div id="customer-orders" class="col-md-9">
              <p class="text-muted lead">Orders List:</p>
                <c:set var = "alert" value = '<%= request.getParameter("alert") %>' />
				<c:if test="${not empty alert}" >
					<div class="alert alert-<%= request.getParameter("alert") %>" role="alert">
					  <%= request.getParameter("message") %>
					</div>
				</c:if>
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>INVOICE</th>
                        <th>Product Name</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${odersList}" var="orders">
		                      <tr>
		                        <th>${orders.invoice}</th>
		                        <td>${orders.productDetails.name}</td>
		                        <td>${orders.quantity}</td>
		                        <td>${orders.total}</td>
		                        <td>
									<c:choose>
									    <c:when test="${orders.statusId=='1'}">
									    	<span class="badge badge-info">Pending</span>
									    </c:when>
									    <c:when test="${orders.statusId=='2'}">
									    	<span class="badge badge-info">Confirmed</span>
									    </c:when> 
									    <c:when test="${orders.statusId=='3'}">
									    	<span class="badge badge-info">Processing</span>
									    </c:when> 
									    <c:when test="${orders.statusId=='4'}">
									    	<span class="badge badge-info">Delivery</span>
									    </c:when> 
									    <c:when test="${orders.statusId=='5'}">
									    	<span class="badge badge-info">Paid</span>
									    </c:when> 
									    <c:when test="${orders.statusId=='6'}">
									    	<span class="badge badge-info">Finished</span>
									    </c:when> 
									    <c:otherwise>
											<span class="badge badge-danger">Cancelled</span>
									    </c:otherwise>
									</c:choose>
		                        </td>
		                        <td>
		                        	<a href="<%=request.getContextPath()%>/user/order/detail/${orders.id}" class="btn btn-template-outlined btn-sm">View</a>
		                        </td>
		                      </tr>
	                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
			<!-- CUSTOMER MENU --> 
			<%@ include file="menu.jsp" %> 
			<!-- CUSTOMER MENU -->
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
</body>
</html>