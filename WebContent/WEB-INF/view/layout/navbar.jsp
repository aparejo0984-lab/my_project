<!-- Navbar Start-->
<header class="nav-holder make-sticky">
   <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
      <div class="container">
         <a href="index.html" class="navbar-brand home">
            <img src="
            <c:url value="/resources/img/product/logo-company.png" />
            " alt="Universal logo" class="d-none d-md-inline-block"><img src="
            <c:url value="/resources/img/product/logo-company.png" />
            " alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">J&G - go to homepage</span>
         </a>
         <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
         <div id="navigation" class="navbar-collapse collapse">
            <ul class="nav navbar-nav ml-auto">
               <li class="nav-item">
                  <a href="<%=request.getContextPath() + "/shop" %>"  class="nav-link" >Home <b class="caret"></b></a>
               </li>
               <li class="nav-item">
                  <a href="<%=request.getContextPath() + "/shop" %>" class="nav-link" >Products<b class="caret"></b></a>
               </li>
               <li class="nav-item">
                  <a href="<%=request.getContextPath() + "/shop/review" %>" class="nav-link" >Reviews <b class="caret"></b></a>
               </li>
            </ul>
         </div>
         <div id="search" class="collapse clearfix">
            <form role="search" class="navbar-form">
               <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                  <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
               </div>
            </form>
         </div>
      </div>
   </div>
</header>
<!-- Navbar End-->
<div id="heading-breadcrumbs">
   <div class="container">
      <div class="row d-flex align-items-center flex-wrap">
            <img src="
            <c:url value="/resources/img/product/banner-final1.png" />
            " alt="J&G Company" class="d-none d-md-inline-block" />
      </div>
   </div>
</div>