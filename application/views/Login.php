<?php $this->load->view('Head') ?>

<body>

  <?php $this->load->view('Header') ?>



    <!-- main wrapper start -->
    <main>
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area common-bg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <h1>Login</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">login</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- login register wrapper start -->
        <div class="login-register-wrapper section-space pb-0">
            <div class="container">
                <div class="member-area-from-wrap">
                    <div class="row">
                        <div class="col-lg-6" style="margin-left:290px">
                            <div class="login-reg-form-wrap">
                                <h2>Masuk</h2>
                                <form action="<?=base_url()?>Login/cekLogin" method="post">
                                    <div class="single-input-item">
                                        <input type="text" placeholder="Username Anda" required name="username"/>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="password" placeholder="Password Anda" required name="password"/>
                                    </div>
                                    <div class="single-input-item">
                                        <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                            <div class="remember-meta">
                                                <div class="custom-control custom-checkbox">
                                                    <!-- <input type="checkbox" class="custom-control-input" id="rememberMe">
                                                    <label class="custom-control-label" for="rememberMe">Remember Me</label> -->
                                                </div>
                                            </div>
                                            <a href="<?=base_url()?>Register" class="forget-pwd">Tidak punya akun?</a>
                                        </div>
                                    </div>
                                    <div class="single-input-item">
                                        <button class="btn btn__bg">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- login register wrapper end -->
    </main>
    <!-- main wrapper end -->

  <?php $this->load->view('Footer') ?>
