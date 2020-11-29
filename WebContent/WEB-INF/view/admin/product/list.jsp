<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../../layout/topbar.jsp" %>
	<%@ include file="../../layout/navbar.jsp" %>
	<!-- CONTENT-->
      <div id="content">
        <div class="container">
          <div class="row bar mb-0">
            <div id="customer-orders" class="col-md-9">
              <p class="text-muted lead">Product List:</p>
                <c:set var = "alert" value = '<%= request.getParameter("alert") %>' />
				<c:if test="${not empty alert}" >
					<div class="alert alert-<%= request.getParameter("alert") %>" role="alert">
					  <%= request.getParameter("message") %>
					</div>
				</c:if>
              <a href="<%=request.getContextPath()%>/admin/product/create" class="btn btn-template-main btn-sm mb-2">Add New Product</a>
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${productList}" var="product">
		                      <tr>
		                        <th>${product.code}</th>
		                        <td>${product.name}</td>
		                        <td>${product.description}</td>
		                        <td>P${product.price}</td>
		                        <td>
									<c:choose>
									    <c:when test="${product.status=='1'}">
									    	<span class="badge badge-info">Available</span>
									    </c:when>
									    <c:when test="${product.status=='2'}">
									    	<span class="badge badge-danger">Out of Stock</span>
									    </c:when> 
									    <c:otherwise>
											<span class="badge badge-warning">Coming Soon</span>
									    </c:otherwise>
									</c:choose>
		                        </td>
		                        <td>
		                        	<a href="<%=request.getContextPath()%>/admin/product/edit/${product.code}" class="btn btn-template-outlined btn-sm">Edit</a>
		                        	<a href="<%=request.getContextPath()%>/admin/product/delete/${product.code}" class="btn btn-template-outlined btn-sm">Delete</a>
		                        </td>
		                      </tr>
	                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
			<%@ include file="../leftSidebar.jsp" %> 
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../../layout/footer.jsp" %> 
</div>
<%@ include file="../../layout/jsfiles.jsp" %> 
</body>
</html>