<!-- FOOTER -->
<footer class="main-footer">
   <div class="container">
      <div class="row">
         <div class="col-lg-3">
            <h4 class="h6">About Us</h4>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
            <hr>
            <h4 class="h6">Join Our Monthly Newsletter</h4>
            <form>
               <div class="input-group">
                  <input type="text" class="form-control">
                  <div class="input-group-append">
                     <button type="button" class="btn btn-secondary"><i class="fa fa-send"></i></button>
                  </div>
               </div>
            </form>
            <hr class="d-block d-lg-none">
         </div>
         <div class="col-lg-3">
            <h4 class="h6">Blog</h4>
            <ul class="list-unstyled footer-blog-list">
               <li class="d-flex align-items-center">
                  <div class="image"><img src="<c:url value="/resources/img/product/detail-square1.png" />" alt="..." class="img-fluid"></div>
                  <div class="text">
                     <h5 class="mb-0"> <a href="<%=request.getContextPath() + "/user/blog-post" %>">Blog post name</a></h5>
                  </div>
               </li>
               <li class="d-flex align-items-center">
                  <div class="image"><img src="<c:url value="/resources/img/product/detail-square2.png" />" alt="..." class="img-fluid"></div>
                  <div class="text">
                     <h5 class="mb-0"> <a href="<%=request.getContextPath() + "/user/blog-post" %>">Blog post name</a></h5>
                  </div>
               </li>
               <li class="d-flex align-items-center">
                  <div class="image"><img src="<c:url value="/resources/img/product/detail-square1.png" />" alt="..." class="img-fluid"></div>
                  <div class="text">
                     <h5 class="mb-0"> <a href="<%=request.getContextPath() + "/user/blog-post" %>">Very very long blog post name</a></h5>
                  </div>
               </li>
            </ul>
            <hr class="d-block d-lg-none">
         </div>
         <div class="col-lg-3">
            <h4 class="h6">Contact</h4>
            <p class="text-uppercase"><strong>J&G Company</strong><br>766 Plaridel St<br>Cambaro <br>Mandaue 6014 <br>Cebu <br><strong>Philippines</strong></p>
            <a href="<%=request.getContextPath()%>/shop-review" class="btn btn-template-main">Go to contact page</a>
            <hr class="d-block d-lg-none">
         </div>
         <div class="col-lg-3">
            <ul class="list-inline photo-stream">
               <li class="list-inline-item"><a href="#"><img src="<c:url value="/resources/img/product/detail-square1.png" />" alt="..." class="img-fluid"></a></li>
               <li class="list-inline-item"><a href="#"><img src="<c:url value="/resources/img/product/detail-square2.png" />" alt="..." class="img-fluid"></a></li>
               <li class="list-inline-item"><a href="#"><img src="<c:url value="/resources/img/product/detail-square1.png" />" alt="..." class="img-fluid"></a></li>
               <li class="list-inline-item"><a href="#"><img src="<c:url value="/resources/img/product/detail-square2.png" />" alt="..." class="img-fluid"></a></li>
               <li class="list-inline-item"><a href="#"><img src="<c:url value="/resources/img/product/detail-square1.png" />" alt="..." class="img-fluid"></a></li>
               <li class="list-inline-item"><a href="#"><img src="<c:url value="/resources/img/product/detail-square2.png" />" alt="..." class="img-fluid"></a></li>
            </ul>
         </div>
      </div>
   </div>
   <div class="copyrights">
      <div class="container">
         <div class="row">
            <div class="col-lg-4 text-center-md">
               <p>&copy; 2020. J&G Company</p>
            </div>
         </div>
      </div>
   </div>
</footer>