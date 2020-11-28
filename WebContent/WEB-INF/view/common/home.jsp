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
          <div class="row bar">
            <div class="col-md-12">
              <p class="text-muted lead">In our Ladies department we offer wide selection of the best products we have found and carefully selected worldwide. Pellentesque habitant morbi tristique senectus et netuss.</p>
              <div class="row products products-big">
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="image"><a href="shop-detail.html"><img src="<c:url value="/resources/img/product1.jpg" />" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="shop-detail.html">Fur coat with very but very very long name</a></h3>
                      <p class="price">$143.00</p>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-6">
                  <div class="product">
                    <div class="image"><a href="shop-detail.html"><img src="<c:url value="/resources/img/product2.jpg" />" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="shop-detail.html">White Blouse Armani</a></h3>
                      <p class="price">
                        <del>$280</del> $143.00
                      </p>
                    </div>
                    <div class="ribbon-holder">
                      <div class="ribbon sale">SALE</div>
                      <div class="ribbon new">NEW</div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 banner mb-small"><a href="#"><img src="<c:url value="/resources/img/product/banner-final.jpg" />" alt="" class="img-fluid"></a></div>
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