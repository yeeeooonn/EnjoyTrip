<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <li><a href="projects.jsp" class="active">핫플자랑하기</a></li>
          </ul>
          <ul>
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
        </nav>
        <!-- .navbar -->
      </div>
    </header>
    <!-- End Header -->

    <main id="main">
      <!-- ======= Breadcrumbs ======= -->
      <div
        class="breadcrumbs d-flex align-items-center"
        style="background-image: url('assets/img/가로수길.jpg')"
      >
        <div
          class="container position-relative d-flex flex-column align-items-center"
          data-aos="fade"
        >
          <h2>Hot Place</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>hot place</li>
          </ol>
        </div>
      </div>
      <!-- End Breadcrumbs -->

      <!-- ======= Our Projects Section ======= -->
      <section id="projects" class="projects">
        <div class="container" data-aos="fade-up">
          <div
            class="portfolio-isotope"
            data-portfolio-filter="*"
            data-portfolio-layout="masonry"
            data-portfolio-sort="original-order"
          >
            <ul class="portfolio-flters" data-aos="fade-up" data-aos-delay="100">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-remodeling">Remodeling</li>
              <li data-filter=".filter-construction">Construction</li>
              <li data-filter=".filter-repairs">Repairs</li>
              <li data-filter=".filter-design">Design</li>
            </ul>
            <!-- End Projects Filters -->

            <div class="row gy-4 portfolio-container" data-aos="fade-up" data-aos-delay="200">
              <div class="col-lg-4 col-md-6 portfolio-item filter-remodeling">
                <div class="portfolio-content h-100">
                  <img src="assets/img/경복궁.jpg" class="img-fluid" alt="" />
                  <div class="portfolio-info">
                    <h4>Trip1</h4>
                    <p>경복궁</p>
                    <a
                      href="assets/img/경복궁.jpg"
                      title="경복궁"
                      data-gallery="portfolio-gallery-remodeling"
                      class="glightbox preview-link"
                      ><i class="bi bi-zoom-in"></i
                    ></a>
                    <a href="project-details.html" title="More Details" class="details-link"
                      ><i class="bi bi-link-45deg"></i
                    ></a>
                  </div>
                </div>
              </div>
              <!-- End Projects Item -->

              <div class="col-lg-4 col-md-6 portfolio-item filter-construction">
                <div class="portfolio-content h-100">
                  <img src="assets/img/창덕궁.jpg" class="img-fluid" alt="" />
                  <div class="portfolio-info">
                    <h4>Trip2</h4>
                    <p>창덕궁</p>
                    <a
                      href="assets/img/창덕궁.jpg"
                      title="창덕궁"
                      data-gallery="portfolio-gallery-construction"
                      class="glightbox preview-link"
                      ><i class="bi bi-zoom-in"></i
                    ></a>
                    <a href="project-details.html" title="More Details" class="details-link"
                      ><i class="bi bi-link-45deg"></i
                    ></a>
                  </div>
                </div>
              </div>
              <!-- End Projects Item -->

              <div class="col-lg-4 col-md-6 portfolio-item filter-repairs">
                <div class="portfolio-content h-100">
                  <img src="assets/img/남산타워.jpg" class="img-fluid" alt="" />
                  <div class="portfolio-info">
                    <h4>Trip3</h4>
                    <p>남산타워</p>
                    <a
                      href="assets/img/남산타워.jpg"
                      title="남산타워"
                      data-gallery="portfolio-gallery-repairs"
                      class="glightbox preview-link"
                      ><i class="bi bi-zoom-in"></i
                    ></a>
                    <a href="project-details.html" title="More Details" class="details-link"
                      ><i class="bi bi-link-45deg"></i
                    ></a>
                  </div>
                </div>
              </div>
              <!-- End Projects Item -->

              <div class="col-lg-4 col-md-6 portfolio-item filter-design">
                <div class="portfolio-content h-100">
                  <img src="assets/img/한옥마을.jpg" class="img-fluid" alt="" />
                  <div class="portfolio-info">
                    <h4>Trip 4</h4>
                    <p>한옥마을</p>
                    <a
                      href="assets/img/한옥마을.jpg"
                      title="한옥마을"
                      data-gallery="portfolio-gallery-book"
                      class="glightbox preview-link"
                      ><i class="bi bi-zoom-in"></i
                    ></a>
                    <a href="project-details.html" title="More Details" class="details-link"
                      ><i class="bi bi-link-45deg"></i
                    ></a>
                  </div>
                </div>
              </div>
              <!-- End Projects Item -->

              <div class="col-lg-4 col-md-6 portfolio-item filter-remodeling">
                <div class="portfolio-content h-100">
                  <img src="assets/img/가로수길.jpg" class="img-fluid" alt="" />
                  <div class="portfolio-info">
                    <h4>Trip 5</h4>
                    <p>가로수길</p>
                    <a
                      href="assets/img/가로수길.jpg"
                      title="가로수길"
                      data-gallery="portfolio-gallery-remodeling"
                      class="glightbox preview-link"
                      ><i class="bi bi-zoom-in"></i
                    ></a>
                    <a href="project-details.html" title="More Details" class="details-link"
                      ><i class="bi bi-link-45deg"></i
                    ></a>
                  </div>
                </div>
              </div>
              <!-- End Projects Item -->

              <div class="col-lg-4 col-md-6 portfolio-item filter-design">
                <div class="portfolio-content h-100">
                  <img src="assets/img/남산타워.jpg" class="img-fluid" alt="" />
                  <div class="portfolio-info">
                    <h4>Trip 6</h4>
                    <p>남산타워</p>
                    <a
                      href="assets/img/남산타워.jpg"
                      title="Repairs 3"
                      data-gallery="portfolio-gallery-book"
                      class="glightbox preview-link"
                      ><i class="bi bi-zoom-in"></i
                    ></a>
                    <a href="project-details.html" title="More Details" class="details-link"
                      ><i class="bi bi-link-45deg"></i
                    ></a>
                  </div>
                </div>
              </div>
              <!-- End Projects Item -->
            </div>
            <!-- End Projects Container -->
          </div>
        </div>
      </section>
      <!-- End Our Projects Section -->
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
