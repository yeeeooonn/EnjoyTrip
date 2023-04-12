<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Enjoy trip</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Roboto:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Work+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: UpConstruction - v1.3.0
  * Template URL: https://bootstrapmade.com/upconstruction-bootstrap-construction-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  </head>
  <body>
    <!-- ======= Header ======= -->
    <header id="header" class="header d-flex align-items-center">
      <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
        <a href="index.jsp" class="logo d-flex align-items-center">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <!-- <img src="assets/img/logo.png" alt=""> -->
          <h1>Enjoy trip<span>.</span></h1>
        </a>

        <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
        <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
        <nav id="navbar" class="navbar">
          <ul>
            <li><a href="about.jsp">지역별여행지</a></li>
            <li><a href="blog.jsp">나의여행계획</a></li>
            <li><a href="services.jsp">여행정보공유</a></li>
            <li><a href="projects.jsp" >핫플자랑하기</a></li>
          </ul>
          <ul>
		   <%if (session.getAttribute("login") == null){%>
			  <li id="beforelogin">
		      <a data-bs-toggle="modal" data-bs-target="#signInModal" href="#">로그인</a>
		      </li>
		      <li id="beforelogin">
		      <a href='${root}/member?action=registry'>회원가입</a>
		      </li>
		 <%}else {%>
		 	  <c:if test="${login.user_id eq 'admin'}">
		  	  <li id="beforelogin">
		      <a href='${root}/member?action=logout'>로그아웃</a>
		      </li>
		      <li id="beforelogin">
		      <a href='${root}/member?action=memberlist' class="active">회원관리</a>
		      </li>
		  </c:if>
		  <c:if test="${login.user_id ne 'admin'}">
		     <li id="beforelogin">
		     <a href='${root}/member?action=logout'>로그아웃</a>
		     </li>
		     </c:if>            
		   <%}%>
		 </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <main id="main">
      <!-- ======= Breadcrumbs ======= -->
      <div
        class="breadcrumbs d-flex align-items-center"
        style="background-image: url('assets/img/breadcrumbs-bg.jpg')"
      >
        <div
          class="container position-relative d-flex flex-column align-items-center"
          data-aos="fade"
        >
          <h2>MemberList</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>MemberList</li>
          </ol>
        </div>
      </div>
      <!-- End Breadcrumbs -->

      <!-- ======= Blog Section ======= -->
      <section id="blog" class="blog">
        <%@include file="../common/header.jsp" %>
		<div id="section" class = "container">
		 <div id="tboard">
		  <h1>회원목록</h1>
		 		<table>
		 		<col width="10%"><col width="10%"><col width="15%"><col width="15%"><col width="15%"><col width="20%"><col width="10%">
		 		<tr>
		 			<th>유저아이디</th><th>이름</th><th>비밀번호</th><th>이메일아이디</th><th>이메일도메인</th><th>가입날짜</th><th>수정/삭제</th>
		 		</tr>
		 		<c:forEach var="member" items="${members}">
		 			<tr>
			 			<td><a href='${root}/member?action=detail&user_id=${member.user_id}'>${member.user_id}</a></td>
			 			<td>${member.user_name}</td>
			 			<td>${member.user_password}</td>
			 			<td>${member.email_id}</td>
			 			<td>${member.email_domain}</td>
			 			<td>${member.join_date}</td>
			 			<td>
		                <div style="float: right">
						 <form  style="display: inline" action="${root}/member" method="post">
						    <input type="hidden" name="action" value="updatemember"/>
						    <input type="hidden" name="user_id" value="${member.user_id}"/>
						    <input type="submit" value="수정" />
						</form>
						<form style="display: inline" action="${root}/member" method="post">
						    <input type="hidden" name="action" value="delete"/>
						    <input type="hidden" name="user_id" value="${member.user_id}"/>
						    <input type="submit" value="삭제" />
						</form>
						</div>
		                </td>
		 			</tr>
		 		</c:forEach>
		 		</table>
		 </div>
		</div>
      </section>
      <!-- End Blog Section -->
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">
      <div class="footer-content position-relative">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-6">
              <div class="footer-info">
                <div class="social-links d-flex mt-3">
                  <a href="#" class="d-flex align-items-center justify-content-center"
                    ><i class="bi bi-twitter"></i
                  ></a>
                  <a href="#" class="d-flex align-items-center justify-content-center"
                    ><i class="bi bi-facebook"></i
                  ></a>
                  <a href="#" class="d-flex align-items-center justify-content-center"
                    ><i class="bi bi-instagram"></i
                  ></a>
                  <a href="#" class="d-flex align-items-center justify-content-center"
                    ><i class="bi bi-linkedin"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End footer info column-->

            <div class="col-lg-2 col-md-3 footer-links">
              <h4>Useful Links</h4>
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Terms of service</a></li>
                <li><a href="#">Privacy policy</a></li>
              </ul>
            </div>
            <!-- End footer links column-->

            <div class="col-lg-2 col-md-3 footer-links">
              <h4>Our Services</h4>
              <ul>
                <li><a href="#">Web Design</a></li>
                <li><a href="#">Web Development</a></li>
                <li><a href="#">Product Management</a></li>
                <li><a href="#">Marketing</a></li>
                <li><a href="#">Graphic Design</a></li>
              </ul>
            </div>
            <!-- End footer links column-->

            <div class="col-lg-2 col-md-3 footer-links">
              <h4>Hic solutasetp</h4>
              <ul>
                <li><a href="#">Molestiae accusamus iure</a></li>
                <li><a href="#">Excepturi dignissimos</a></li>
                <li><a href="#">Suscipit distinctio</a></li>
                <li><a href="#">Dilecta</a></li>
                <li><a href="#">Sit quas consectetur</a></li>
              </ul>
            </div>
            <!-- End footer links column-->

            <div class="col-lg-2 col-md-3 footer-links">
              <h4>Nobis illum</h4>
              <ul>
                <li><a href="#">Ipsam</a></li>
                <li><a href="#">Laudantium dolorum</a></li>
                <li><a href="#">Dinera</a></li>
                <li><a href="#">Trodelas</a></li>
                <li><a href="#">Flexo</a></li>
              </ul>
            </div>
            <!-- End footer links column-->
          </div>
        </div>
      </div>

      <div class="footer-legal text-center position-relative">
        <div class="container">
          <div class="copyright">
            &copy; Copyright <strong><span>UpConstruction</span></strong
            >. All Rights Reserved
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/upconstruction-bootstrap-construction-website-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> Distributed by
            <a href="https://themewagon.com">ThemeWagon</a>
          </div>
        </div>
      </div>
    </footer>
    <!-- End Footer -->

    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
