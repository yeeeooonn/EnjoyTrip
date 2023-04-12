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
            <li><a href="about.jsp" class="active">지역별여행지</a></li>
            <li><a href="blog.jsp">나의여행계획</a></li>
            <li><a href="services.jsp">여행정보공유</a></li>
            <li><a href="projects.jsp">핫플자랑하기</a></li>
            <li id="beforelogin">
              <a data-bs-toggle="modal" data-bs-target="#signInModal" href="#">로그인</a>
            </li>
            <li id="beforelogin">
              <a data-bs-toggle="modal" data-bs-target="#signUpModal" href="#">회원가입</a>
            </li>
            <li id="afterlogin">
              <a href="#">
                <span id="userName"></span>
                &nbsp마이페이지</a
              >
            </li>
            <li id="afterlogin"><a href="#" id="btn-user-logout">로그아웃</a></li>
          </ul>
          <ul>
          </ul>
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <main id="main" style="background-color: #f5f6f7">
      <!-- ======= Breadcrumbs ======= -->
      <div
        class="breadcrumbs d-flex align-items-center"
        style="background-image: url('assets/img/경복궁.jpg')"
      >
        <div
          class="container position-relative d-flex flex-column align-items-center"
          data-aos="fade"
        >
          <h2>By Regional Groups</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>by regional groups</li>
          </ol>
        </div>
      </div>
      <!-- End Breadcrumbs -->

      <!-- ======= About Section ======= -->
      <div class="container" data-aos="fade-up">
        <div class="row position-relative">
          <div class="col-lg-7 about-img" style="background-image: url(assets/img/about.jpg)"></div>
        </div>
      </div>
      <!-- End About Section -->

      <!-- 관광지 검색 start -->
      <div class="col-md-9 px-5" style="margin: auto">
        <form class="d-flex mt-3" id="form-search" action="">
        <input type="hidden" name="action" value="triplist"/>
        <input type="hidden" name="pgno" value="1"/>
        <input type="hidden" name="sort" value=""/>
          <select
          	id="search-location" 
          	class="form-select"
          	aria-label="Default select example"
          	name = "sido_code"
          >
            <option value="0" selected>검색 할 지역 선택</option>
            <option value="1">서울</option>
            <option value="2">인천</option>
            <option value="3">대전</option>
            <option value="4">대구</option>
            <option value="5">광주</option>
            <option value="6">부산</option>
            <option value="7">울산</option>
            <option value="8">세종특별자치시</option>
            <option value="9">경기도</option>
            <option value="31">강원도</option>
            <option value="32">충청북도</option>
            <option value="33">충청남도</option>
            <option value="34">경상북도</option>
            <option value="35">경상남도</option>
            <option value="36">전라북도</option>
            <option value="37">전라남도</option>
            <option value="38">제주도</option>
          </select>
          <select 
          	id="search-category" 
          	class="form-select" 
          	aria-label="Default select example"
          	name = "content_type_id"
          	>
            <option value="0" selected>관광지 유형</option>
            <option value="12">관광지</option>
            <option value="14">문화시설</option>
            <option value="15">축제공연행사</option>
            <option value="25">여행코스</option>
            <option value="28">레포츠</option>
            <option value="32">숙박</option>
            <option value="38">쇼핑</option>
            <option value="39">음식점</option>
          </select>
          <input
            id="search-keyword"
            class="form-control me-2"
            type="search"
            placeholder="검색어"
            aria-label="검색어"
            name = "word"
          />
          <button id="btn-search" class="btn btn-outline-warning" type="button">검색</button>
          
          <div class="dropdown">
			  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
			    정렬
			  </button>
			  <ul class="dropdown-menu">
			    <li><a class="dropdown-item" href="${root}/regionalgroups?action=triplist&pgno=1&sido_code=${param.sido_code}&content_type_id=${param.content_type_id}&word=${param.word}&sort=title">가나다순</a></li>
			    <li><a class="dropdown-item" href="${root}/regionalgroups?action=triplist&pgno=1&sido_code=${param.sido_code}&content_type_id=${param.content_type_id}&word=${param.word}&sort=addr1">주소 가나다순</a></li>
			  </ul>
		  </div>
        </form>
        
        

        <!-- 관광지 리스트 start -->
        <!-- ======= Services Section ======= -->
        <section id="services" class="services section-bg">
          <div class="container" data-aos="fade-up">
            <div class="row gy-4" id="search-card2">
            <c:forEach var="trip" items="${trips}"> 
            	<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
              		<div class="service-item position-relative">
              			<c:if test = "${trip.first_image eq ''}">
              				<img src="./assets/img/image-not-found.jpg" class="card-img-top" alt="..." style="margin-bottom: 10px" height="180px"/>
              			</c:if>
              			<c:if test = "${trip.first_image ne ''}">
              				<img src="${trip.first_image}" class="card-img-top" alt="..." style="margin-bottom: 10px" height="180px"/>
              			</c:if>
                		<h3>${trip.title}</h3>
                		<p>${trip.addr1}</p>
                		<a class="readmore stretched-link" data-bs-toggle="modal" data-bs-target="#moreTrip${trip.content_id}" href="#">더보기 <i class="bi bi-arrow-right"></i></a>
              		</div>
            	</div>
            </c:forEach>  
            </div>
            <div class="row" style="margin-top: 30px">
          		${navigation.navigator}
        	</div>
          </div>
        </section>
        <!-- End Services Section -->
        <!-- 관광지 리스트 end -->
      </div>
      <!-- 관광지 검색 end -->
    </main>
    <form id="form-param" method="get" action="">
      <input type="hidden" id="p-action" name="action" value="">
      <input type="hidden" id="p-pgno" name="pgno" value="">
      <input type="hidden" id="p-sido_code" name="sido_code" value="">
      <input type="hidden" id="p-content_type_id" name="content_type_id" value="">
      <input type="hidden" id="p-word" name="word" value="">
    </form>
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

    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!--더보기 modal start-->
    <div id="trips-modal">
    	<c:forEach var="trip" items="${trips}"> 
    		<div
              class="modal fade"
              id="moreTrip${trip.content_id}"
              tabindex="-1"
              aria-labelledby="exampleModalLabel"
              aria-hidden="true"
            >
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Trip Info</h5>
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
                      	<div class="form-outline mb-4" style="margin-bottom: 0px; position: absolute;">
                        	<h4>${trip.title}</h4>
                      	</div>
                      	<div>
                      		<!-- 더보기모달 맵 start-->
                      		<div id="map${trip.content_id}" class="mt-3"  style="width:100%;height:400px; margin-bottom: 10px;position: relative;"></div>
                      		<!--kakao 지도 js-->
						    <script
						      type="text/javascript"
						      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7337cdf81186c6cf1a2757a5b79716a"
						    ></script>
                      		<script type="text/javascript">
                      		
                      		var content_id = "${trip.content_id}";
                        	var mapContainer = document.getElementById("map"+content_id), // 지도를 표시할 div
                              mapOption = {
                                center: new kakao.maps.LatLng("${trip.latitude}", "${trip.longitude}"), // 지도의 중심좌표
                                level: 3, // 지도의 확대 레벨
                              };

                            // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                            var map = new kakao.maps.Map(mapContainer, mapOption);
                            
                         	// 마커가 표시될 위치입니다 
                            var markerPosition  = new kakao.maps.LatLng("${trip.latitude}", "${trip.longitude}"); 

                            // 마커를 생성합니다
                            var marker = new kakao.maps.Marker({
                                position: markerPosition
                            });

                            // 마커가 지도 위에 표시되도록 설정합니다
                            marker.setMap(map);
                            
                      		</script>
                      		<!-- 더보기모달 맵 end-->
                      	</div>
                      	<c:if test = "${trip.first_image eq ''}">
              				<img src="./assets/img/image-not-found.jpg" class="card-img-top" alt="..." />
              			</c:if>
              			<c:if test = "${trip.first_image ne ''}">
              				<img src="${trip.first_image}" class="card-img-top" alt="..." />
              			</c:if>
                      </div>
                      <div class="form-outline mb-4">
                        
                      </div>
                      
                      <div class="form-outline mb-4">
                        <div>주소 : ${trip.addr1} ${trip.addr2}</div>
                      </div>
                      <div class="form-outline mb-4">
                        <div>${trip.overview}</div>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
    	</c:forEach>
    </div>
    <!--더보기 modal end-->

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

    <!-- 수정 ver -->
    <script>
    	/*paging - start*/
	    let pages = document.querySelectorAll(".page-link");
	    pages.forEach(function (page) {
	      page.addEventListener("click", function () {
	        console.log(this.parentNode.getAttribute("data-pg"));
	        document.querySelector("#p-action").value = "triplist";
	     	document.querySelector("#p-pgno").value = this.parentNode.getAttribute("data-pg");
	     	document.querySelector("#p-sido_code").value = "${param.sido_code}";
	     	document.querySelector("#p-content_type_id").value = "${param.content_type_id}";
	     	document.querySelector("#p-word").value = "${param.word}";
	        document.querySelector("#form-param").submit();
	      });
	    });
    	/*paging - end*/
    	
    	/*버튼 start*/
    	document.querySelector("#btn-search").addEventListener("click", function () {
    	  console.log("여기");
    	  let form = document.querySelector("#form-search");
          form.setAttribute("action", "${root}/regionalgroups");
          form.submit();
      	});
    	/*버튼 end*/
      
    </script>
  </body>
</html>
