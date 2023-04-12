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
            <li><a href="blog.jsp" class="active">나의여행계획</a></li>
            <li><a href="services.jsp">여행정보공유</a></li>
            <li><a href="projects.jsp">핫플자랑하기</a></li>
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
        style="background-image: url('assets/img/남산타워.jpg')"
      >
        <div
          class="container position-relative d-flex flex-column align-items-center"
          data-aos="fade"
        >
          <h2>My Plan</h2>
          <ol>
            <li><a href="index.jsp">Home</a></li>
            <li>My Plan</li>
          </ol>
        </div>
      </div>
      <!-- End Breadcrumbs -->

      <!-- ======= Blog Section ======= -->
      <section id="blog" class="blog">
        <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="row gy-4 posts-list">
            <div class="col-xl-4 col-md-6">
              <div class="post-item position-relative h-100">
                <div class="post-img position-relative overflow-hidden">
                  <img src="assets/img/blog/blog-1.jpg" class="img-fluid" alt="" />
                  <span class="post-date">December 12</span>
                </div>

                <div class="post-content d-flex flex-column">
                  <h3 class="post-title">
                    Dolorum optio tempore voluptas dignissimos cumque fuga qui quibusdam quia
                  </h3>

                  <div class="meta d-flex align-items-center">
                    <div class="d-flex align-items-center">
                      <i class="bi bi-person"></i> <span class="ps-2">John Doe</span>
                    </div>
                    <span class="px-3 text-black-50">/</span>
                    <div class="d-flex align-items-center">
                      <i class="bi bi-folder2"></i> <span class="ps-2">Politics</span>
                    </div>
                  </div>

                  <p>
                    Similique neque nam consequuntur ad non maxime aliquam quas. Quibusdam animi
                    praesentium. Aliquam et laboriosam eius aut nostrum quidem aliquid dicta.
                  </p>

                  <hr />

                  <a href="blog-details.jsp" class="readmore stretched-link"
                    ><span>Read More</span><i class="bi bi-arrow-right"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End post list item -->

            <div class="col-xl-4 col-md-6">
              <div class="post-item position-relative h-100">
                <div class="post-img position-relative overflow-hidden">
                  <img src="assets/img/blog/blog-2.jpg" class="img-fluid" alt="" />
                  <span class="post-date">March 19</span>
                </div>

                <div class="post-content d-flex flex-column">
                  <h3 class="post-title">Nisi magni odit consequatur autem nulla dolorem</h3>

                  <div class="meta d-flex align-items-center">
                    <div class="d-flex align-items-center">
                      <i class="bi bi-person"></i> <span class="ps-2">Julia Parker</span>
                    </div>
                    <span class="px-3 text-black-50">/</span>
                    <div class="d-flex align-items-center">
                      <i class="bi bi-folder2"></i> <span class="ps-2">Economics</span>
                    </div>
                  </div>

                  <p>
                    Incidunt voluptate sit temporibus aperiam. Quia vitae aut sint ullam quis illum
                    voluptatum et. Quo libero rerum voluptatem pariatur nam.
                  </p>

                  <hr />

                  <a href="blog-details.jsp" class="readmore stretched-link"
                    ><span>Read More</span><i class="bi bi-arrow-right"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End post list item -->

            <div class="col-xl-4 col-md-6">
              <div class="post-item position-relative h-100">
                <div class="post-img position-relative overflow-hidden">
                  <img src="assets/img/blog/blog-3.jpg" class="img-fluid" alt="" />
                  <span class="post-date">June 24</span>
                </div>

                <div class="post-content d-flex flex-column">
                  <h3 class="post-title">
                    Possimus soluta ut id suscipit ea ut. In quo quia et soluta libero sit sint.
                  </h3>

                  <div class="meta d-flex align-items-center">
                    <div class="d-flex align-items-center">
                      <i class="bi bi-person"></i> <span class="ps-2">Maria Doe</span>
                    </div>
                    <span class="px-3 text-black-50">/</span>
                    <div class="d-flex align-items-center">
                      <i class="bi bi-folder2"></i> <span class="ps-2">Sports</span>
                    </div>
                  </div>

                  <p>
                    Aut iste neque ut illum qui perspiciatis similique recusandae non. Fugit autem
                    dolorem labore omnis et. Eum temporibus fugiat voluptate enim tenetur sunt
                    omnis.
                  </p>

                  <hr />

                  <a href="blog-details.jsp" class="readmore stretched-link"
                    ><span>Read More</span><i class="bi bi-arrow-right"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End post list item -->

            <div class="col-xl-4 col-md-6">
              <div class="post-item position-relative h-100">
                <div class="post-img position-relative overflow-hidden">
                  <img src="assets/img/blog/blog-4.jpg" class="img-fluid" alt="" />
                  <span class="post-date">August 05</span>
                </div>

                <div class="post-content d-flex flex-column">
                  <h3 class="post-title">
                    Non rem rerum nam cum quo minus. Dolor distinctio deleniti explicabo eius
                    exercitationem.
                  </h3>

                  <div class="meta d-flex align-items-center">
                    <div class="d-flex align-items-center">
                      <i class="bi bi-person"></i> <span class="ps-2">Maria Doe</span>
                    </div>
                    <span class="px-3 text-black-50">/</span>
                    <div class="d-flex align-items-center">
                      <i class="bi bi-folder2"></i> <span class="ps-2">Sports</span>
                    </div>
                  </div>

                  <p>
                    Aspernatur rerum perferendis et sint. Voluptates cupiditate voluptas atque quae.
                    Rem veritatis rerum enim et autem. Saepe atque cum eligendi eaque iste omnis a
                    qui.
                  </p>

                  <hr />

                  <a href="blog-details.jsp" class="readmore stretched-link"
                    ><span>Read More</span><i class="bi bi-arrow-right"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End post list item -->

            <div class="col-xl-4 col-md-6">
              <div class="post-item position-relative h-100">
                <div class="post-img position-relative overflow-hidden">
                  <img src="assets/img/blog/blog-5.jpg" class="img-fluid" alt="" />
                  <span class="post-date">September 17</span>
                </div>

                <div class="post-content d-flex flex-column">
                  <h3 class="post-title">
                    Accusamus quaerat aliquam qui debitis facilis consequatur
                  </h3>

                  <div class="meta d-flex align-items-center">
                    <div class="d-flex align-items-center">
                      <i class="bi bi-person"></i> <span class="ps-2">John Parker</span>
                    </div>
                    <span class="px-3 text-black-50">/</span>
                    <div class="d-flex align-items-center">
                      <i class="bi bi-folder2"></i> <span class="ps-2">Politics</span>
                    </div>
                  </div>

                  <p>
                    In itaque assumenda aliquam voluptatem qui temporibus iusto nisi quia. Autem
                    vitae quas aperiam nesciunt mollitia tempora odio omnis. Ipsa odit sit ut amet
                    necessitatibus. Quo ullam ut corrupti autem consequuntur totam dolorem.
                  </p>

                  <hr />

                  <a href="blog-details.jsp" class="readmore stretched-link"
                    ><span>Read More</span><i class="bi bi-arrow-right"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End post list item -->

            <div class="col-xl-4 col-md-6">
              <div class="post-item position-relative h-100">
                <div class="post-img position-relative overflow-hidden">
                  <img src="assets/img/blog/blog-6.jpg" class="img-fluid" alt="" />
                  <span class="post-date">December 07</span>
                </div>

                <div class="post-content d-flex flex-column">
                  <h3 class="post-title">Distinctio provident quibusdam numquam aperiam aut</h3>

                  <div class="meta d-flex align-items-center">
                    <div class="d-flex align-items-center">
                      <i class="bi bi-person"></i> <span class="ps-2">Julia White</span>
                    </div>
                    <span class="px-3 text-black-50">/</span>
                    <div class="d-flex align-items-center">
                      <i class="bi bi-folder2"></i> <span class="ps-2">Economics</span>
                    </div>
                  </div>

                  <p>
                    Expedita et temporibus eligendi enim molestiae est architecto praesentium
                    dolores. Illo laboriosam officiis quis. Labore officia quia sit voluptatem nisi
                    est dignissimos totam. Et voluptate et consectetur voluptatem id dolor magni
                    impedit. Omnis dolores sit.
                  </p>

                  <hr />

                  <a href="blog-details.jsp" class="readmore stretched-link"
                    ><span>Read More</span><i class="bi bi-arrow-right"></i
                  ></a>
                </div>
              </div>
            </div>
            <!-- End post list item -->
          </div>
          <!-- End blog posts list -->

          <div class="blog-pagination">
            <ul class="justify-content-center">
              <li><a href="#">1</a></li>
              <li class="active"><a href="#">2</a></li>
              <li><a href="#">3</a></li>
            </ul>
          </div>
          <!-- End blog pagination -->
        </div>
      </section>
      <!-- End Blog Section -->
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