<header class="header-area">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <p>Welcome to Floda online store</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-right">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center justify-content-end">
                                <li class="language">
                                    <span>Language:</span>
                                    <img src="assets/img/icon/en.png" alt="flag"> English
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <li><a href="#"><img src="assets/img/icon/en.png" alt="flag"> english</a></li>
                                        <li><a href="#"><img src="assets/img/icon/fr.png" alt="flag"> french</a></li>
                                    </ul>
                                </li>
                                <li class="curreny-wrap">
                                    <span>Currency:</span>
                                    $ USD
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list curreny-list">
                                        <li><a href="#">$ usd</a></li>
                                        <li><a href="#"> € EURO</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- start logo area -->
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="index.html">
                                <img src="assets/img/logo/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li><a href="<?=base_url()?>Welcome">BERANDA</i></a></li>
                                        <li><a href="<?=base_url()?>Welcome/lpumkm">UMKM </a></li>
                                        <li><a href="<?=base_url()?>Welcome/lpproduk">PRODUK</a></li>
                                        <li><a href="<?=base_url()?>Welcome/lpartikel">ARTIKEL UMKM</a></li>
                                        <li><a href="<?=base_url()?>Welcome/lpkontak">KONTAK KAMI</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-3">
                        <div class="header-configure-wrapper">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                                    <li>
                                        <a href="#" class="offcanvas-btn">
                                            <i class="lnr lnr-magnifier"></i>
                                        </a>
                                    </li>
                                    <li class="user-hover">
                                        <a href="#">
                                            <i class="lnr lnr-user"></i>
                                        </a>
                                        <ul class="dropdown-list">
                                            <li><a href="<?=base_url()?>Login">Login</a></li>
                                            <li><a href="<?=base_url()?>Register">Register</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="wishlist.html">
                                            <i class="lnr lnr-heart"></i>
                                            <div class="notification">0</div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="minicart-btn">
                                            <i class="lnr lnr-cart"></i>
                                            <div class="notification">2</div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->

                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->

    <!-- mobile header start -->
    <div class="mobile-header d-lg-none d-md-block sticky">
        <!--mobile header top start -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="mobile-main-header">
                        <div class="mobile-logo">
                            <a href="index.html">
                                <img src="assets/img/logo/logo.png" alt="Brand Logo">
                            </a>
                        </div>
                        <div class="mobile-menu-toggler">
                            <div class="mini-cart-wrap">
                                <a href="cart.html">
                                    <i class="lnr lnr-cart"></i>
                                </a>
                            </div>
                            <div class="mobile-menu-btn">
                                <div class="off-canvas-btn">
                                    <i class="lnr lnr-menu"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- mobile header top start -->
    </div>
    <!-- mobile header end -->
</header>

<aside class="off-canvas-wrapper">
    <div class="off-canvas-overlay"></div>
    <div class="off-canvas-inner-content">
        <div class="btn-close-off-canvas">
            <i class="lnr lnr-cross"></i>
        </div>

        <div class="off-canvas-inner">
            <!-- search box start -->
            <div class="search-box-offcanvas">
                <form>
                    <input type="text" placeholder="Search Here...">
                    <button class="search-btn"><i class="lnr lnr-magnifier"></i></button>
                </form>
            </div>
            <!-- search box end -->

            <!-- mobile menu start -->
            <div class="mobile-navigation">

                <!-- mobile menu navigation start -->
                <nav>
                    <ul class="mobile-menu">
                        <li class="menu-item-has-children"><a href="index.html">Home</a>
                            <ul class="dropdown">
                                <li><a href="index.html">Home version 01</a></li>
                                <li><a href="index-2.html">Home version 02</a></li>
                                <li><a href="index-3.html">Home version 03</a></li>
                                <li><a href="index-4.html">Home version 04</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children"><a href="#">pages</a>
                            <ul class="megamenu dropdown">
                                <li class="mega-title menu-item-has-children"><a href="#">column 01</a>
                                    <ul class="dropdown">
                                        <li><a href="shop.html">shop grid left
                                                sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">shop grid right
                                                sidebar</a></li>
                                        <li><a href="shop-list-left-sidebar.html">shop list left sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">shop list right sidebar</a></li>
                                    </ul>
                                </li>
                                <li class="mega-title menu-item-has-children"><a href="#">column 02</a>
                                    <ul class="dropdown">
                                        <li><a href="product-details.html">product details</a></li>
                                        <li><a href="product-details-affiliate.html">product
                                                details
                                                affiliate</a></li>
                                        <li><a href="product-details-variable.html">product details
                                                variable</a></li>
                                        <li><a href="product-details-group.html">product details
                                                group</a></li>
                                    </ul>
                                </li>
                                <li class="mega-title menu-item-has-children"><a href="#">column 03</a>
                                    <ul class="dropdown">
                                        <li><a href="cart.html">cart</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="compare.html">compare</a></li>
                                        <li><a href="wishlist.html">wishlist</a></li>
                                    </ul>
                                </li>
                                <li class="mega-title menu-item-has-children"><a href="#">column 04</a>
                                    <ul class="dropdown">
                                        <li><a href="my-account.html">my-account</a></li>
                                        <li><a href="login-register.html">login-register</a></li>
                                        <li><a href="contact-us.html">contact us</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children "><a href="#">shop</a>
                            <ul class="dropdown">
                                <li class="menu-item-has-children"><a href="#">shop grid layout</a>
                                    <ul class="dropdown">
                                        <li><a href="shop.html">shop grid left sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">shop grid right sidebar</a></li>
                                        <li><a href="shop-grid-full-3-col.html">shop grid full 3 col</a></li>
                                        <li><a href="shop-grid-full-4-col.html">shop grid full 4 col</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">shop list layout</a>
                                    <ul class="dropdown">
                                        <li><a href="shop-list-left-sidebar.html">shop list left sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">shop list right sidebar</a></li>
                                        <li><a href="shop-list-full-width.html">shop list full width</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#">products details</a>
                                    <ul class="dropdown">
                                        <li><a href="product-details.html">product details</a></li>
                                        <li><a href="product-details-affiliate.html">product details affiliate</a></li>
                                        <li><a href="product-details-variable.html">product details variable</a></li>
                                        <li><a href="product-details-group.html">product details group</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children "><a href="#">Blog</a>
                            <ul class="dropdown">
                                <li><a href="blog-left-sidebar.html">blog left sidebar</a></li>
                                <li><a href="blog-right-sidebar.html">blog right sidebar</a></li>
                                <li><a href="blog-grid-full-width.html">blog grid no sidebar</a></li>
                                <li><a href="blog-details.html">blog details</a></li>
                                <li><a href="blog-details-left-sidebar.html">blog details left sidebar</a></li>
                            </ul>
                        </li>
                        <li><a href="contact-us.html">Contact us</a></li>
                    </ul>
                </nav>
                <!-- mobile menu navigation end -->
            </div>
            <!-- mobile menu end -->

            <div class="mobile-settings">
                <ul class="nav">
                    <li>
                        <div class="dropdown mobile-top-dropdown">
                            <a href="#" class="dropdown-toggle" id="currency" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Currency
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="currency">
                                <a class="dropdown-item" href="#">$ USD</a>
                                <a class="dropdown-item" href="#">$ EURO</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown mobile-top-dropdown">
                            <a href="#" class="dropdown-toggle" id="myaccount" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                My Account
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="myaccount">
                                <a class="dropdown-item" href="my-account.html">my account</a>
                                <a class="dropdown-item" href="login-register.html"> login</a>
                                <a class="dropdown-item" href="login-register.html">register</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- offcanvas widget area start -->
            <div class="offcanvas-widget-area">
                <div class="off-canvas-contact-widget">
                    <ul>
                        <li><i class="fa fa-mobile"></i>
                            <a href="#">0123456789</a>
                        </li>
                        <li><i class="fa fa-envelope-o"></i>
                            <a href="#">info@yourdomain.com</a>
                        </li>
                    </ul>
                </div>
                <div class="off-canvas-social-widget">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
            </div>
            <!-- offcanvas widget area end -->
        </div>
    </div>
</aside>
