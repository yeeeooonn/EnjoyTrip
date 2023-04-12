<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jstl 사용하기 위한 코드 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 프로젝트의 context 경로를 편하게 사용하기 위한 코드 --%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

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
            <li><a href="${root}/regionalgroups?action=triplist&pgno=1&sido_code=&content_type_id=&word=&sort=">지역별여행지</a></li>
            <li><a href="blog.jsp">나의여행계획</a></li>
            <li><a href="services.jsp">여행정보공유</a></li>
            <li><a href="projects.jsp">핫플자랑하기</a></li>
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
	              <a href='${root}/member?action=memberlist'>회원관리</a>
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

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="hero">
      <div class="info d-flex align-items-center">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
              <h2 data-aos="fade-down">우리나라 관광지를 <span>찾아보세요!</span></h2>
              <p data-aos="fade-up">회원가입을 하고 로그인 후 사용할 수 있습니다.</p>
              <a
                data-aos="fade-up"
                data-aos-delay="200"
                data-bs-toggle="modal"
                data-bs-target="#signInModal"
                href="#"
                class="btn-get-started"
                >Get Started</a
              >
            </div>
          </div>
        </div>
      </div>

      <div
        id="hero-carousel"
        class="carousel slide"
        data-bs-ride="carousel"
        data-bs-interval="5000"
      >
        <div
          class="carousel-item active"
          style="background-image: url(assets/img/경복궁.jpg)"
        ></div>
        <div class="carousel-item" style="background-image: url(assets/img/남산타워.jpg)"></div>
        <div class="carousel-item" style="background-image: url(assets/img/창덕궁.jpg)"></div>
        <div class="carousel-item" style="background-image: url(assets/img/한옥마을.jpg)"></div>
        <div class="carousel-item" style="background-image: url(assets/img/가로수길.jpg)"></div>

        <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>
      </div>
    </section>
    <!-- End Hero Section -->
    <main id="main">
      <!-- ======= 대표관광지 Section ======= -->
      <section id="constructions" class="constructions">
        <div class="container" data-aos="fade-up">
          <div class="section-header">
            <h2>대표 관광지</h2>
            <p>우리나라 대표 관광지에 대한 정보입니다.</p>
          </div>

          <div class="row gy-4">
            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
              <div class="card-item">
                <div class="row">
                  <div class="col-xl-5">
                    <div class="card-bg" style="background-image: url(assets/img/경복궁.jpg)"></div>
                  </div>
                  <div class="col-xl-7 d-flex align-items-center">
                    <div class="card-body">
                      <h4 class="card-title">경복궁</h4>
                      <p>
                        273년 동안 공터로 있다가 흥선대원군이 경복궁을 다시 지으면서 1865년(고종
                        2년)에 재건했다.<br />
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Card Item -->

            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
              <div class="card-item">
                <div class="row">
                  <div class="col-xl-5">
                    <div class="card-bg" style="background-image: url(assets/img/창덕궁.jpg)"></div>
                  </div>
                  <div class="col-xl-7 d-flex align-items-center">
                    <div class="card-body">
                      <h4 class="card-title">창덕궁</h4>
                      <p>
                        창덕궁은 1405년 경복궁의 이궁으로 지은 궁궐이다.<br />경복궁의 동쪽에
                        위치한다 하여 이웃한 창경궁과 더불어 동궐이라 불렀다.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Card Item -->

            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
              <div class="card-item">
                <div class="row">
                  <div class="col-xl-5">
                    <div
                      class="card-bg"
                      style="background-image: url(assets/img/남산타워.jpg)"
                    ></div>
                  </div>
                  <div class="col-xl-7 d-flex align-items-center">
                    <div class="card-body">
                      <h4 class="card-title">남산타워</h4>
                      <p>
                        제1의 관광명소 남산서울타워.<br />국내외 관광객들이 년 1,200만 명 방문하는
                        서울 제1의 관광명소이다
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Card Item -->

            <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
              <div class="card-item">
                <div class="row">
                  <div class="col-xl-5">
                    <div
                      class="card-bg"
                      style="background-image: url(assets/img/한옥마을.jpg)"
                    ></div>
                  </div>
                  <div class="col-xl-7 d-flex align-items-center">
                    <div class="card-body">
                      <h4 class="card-title">한옥마을</h4>
                      <p>
                        전주 풍남동 일대에 700여 채의 한옥이 군락을 이루고 있는 국내 최대 규모의
                        전통 한옥촌이며, 전국 유일의 도심 한옥군이다.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- End Card Item -->
          </div>
        </div>
      </section>
      <!-- End 대표관광지 Section -->
    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">
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
    <!-- 회원가입 modal start -->
    <div
      class="modal fade"
      id="signUpModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Sign Up</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form action="">
              <div class="form-outline mb-4">
                <label class="form-label" for="id">Id</label>
              </div>

              <div class="form-outline mb-4">
                <input type="password" id="signup-password" class="form-control form-control-lg" />
                <label class="form-label" for="password">Password</label>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="btn-user-create">Join</button>
          </div>
        </div>
      </div>
    </div>
    <!--회원가입 modal end-->

<!--로그인 modal start-->
    <div
      class="modal fade"
      id="signInModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Sign In</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <form action="${root}/member" method="post" action="">
           <input type="hidden" name="action" value="login">
            <div class="modal-body">
              <div class="form-outline mb-4">
                <label for="user_id">ID</label>
      			<input type="text" class="form-control" id="user_id" placeholder="Enter Id" name="user_id">
              </div>
              
              <div class="form-outline mb-4">
              <label for="user_password">Password</label>
      			<input type="password" class="form-control" id="user_password" placeholder="Enter Password" name="user_password">
              </div>
            </div>
	          <div class="modal-footer">
	            <a href='${root}/login/password.jsp'>forget password?</a>&nbsp;&nbsp;
	            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	            <button type="submit" class="btn btn-primary" id="btn-user-login">Log In</button>
	          </div>
          </form>
        </div>
      </div>
    </div>
    <!--로그인 modal end-->
    <!--마이페이지 modal start-->
    <div
      class="modal fade"
      id="myPageModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">My page</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form action="">
              <div class="form-outline mb-4">
                <label class="form-label" for="id">Id : </label>
                <span>SSAFY</span>
              </div>

              <div class="form-outline mb-4">
                <label class="form-label" for="password">Password : </label>
                <span>1234</span>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" id="btn-user-remove">회원탈퇴</button>
            <button type="button" class="btn btn-primary" id="btn-user-fix">수정</button>
          </div>
        </div>
      </div>
    </div>
    <!--마이페이지 modal end-->

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
    <!--kakao 지도 js-->
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7337cdf81186c6cf1a2757a5b79716a"
    ></script>
  </body>
</html>
