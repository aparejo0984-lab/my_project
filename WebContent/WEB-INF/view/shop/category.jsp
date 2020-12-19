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
          <div class="row bar">
            <div class="col-md-12">
              <p class="text-muted lead">Be the first to have a bite of the unique, chewy all-black NO food coloring version of the traditional Pinoy kakanin, paired with a sweet Dulce de Leche dip and crispy Toasted Coconut sprinkles.</p>
              <div class="row products products-big">
              <c:forEach items="${productList}" var="product">
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="image"><a href="<%=request.getContextPath()%>/shop/detail/${product.code}" %><img src="<c:url value="/resources/img/product/cover/product${product.code}.png" />" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="<%=request.getContextPath()%>/shop/detail/${product.code}" %>${product.name}</a></h3>
                      <p class="price">P${product.price}</p>
                    </div>
                    <div class="ribbon-holder">
                      <div class="ribbon sale">SALE</div>
                      <div class="ribbon new">NEW</div>
                    </div>
                  </div>
                </div>
                </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>

</body>
</html>