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
                                <h1>Register</h1>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">register</li>
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
                        <!-- Register Content Start -->
                        <div class="col-lg-12">
                            <div class="login-reg-form-wrap sign-up-form">
                                <h2>Registrasi</h2>
                                <center>
                                <a href="<?=base_url()?>Register" class="btn btn__bg">Konsumen</a>
                                <a href="<?=base_url()?>Register/regUMKM" class="btn btn__bg">UMKM</a>
                                <a href="#" class="btn btn__bk">Admin</a>
                                </center>
                                <form action="<?=base_url()?>Register/registerAdmin" method="post">
                                  <input type="hidden" name="iduser" value="<?php echo $register->id_user+1 ?>">
                                    <div class="single-input-item">
                                        <input type="text" placeholder="Nama Lengkap" required name="namalengkap"/>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="email" placeholder="Email Anda" required name="email"/>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="text" placeholder="Username" required name="username"/>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" placeholder="Password" required name="password"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" placeholder="Konfirmasi Password" required name="passwords"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-input-item">
                                        <input type="text" placeholder="No.Telp" required name="notelp" />
                                    </div>
                                    <div class="single-input-item">
                                        <div class="login-reg-form-meta">
                                            <div class="remember-meta">
                                            Sudah punya akun? <a href="<?=base_url()?>Welcome/login" class="forget-pwd">Klik disini</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-input-item">
                                        <button class="btn btn__bg">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Register Content End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- login register wrapper end -->
    </main>
    <!-- main wrapper end -->

    <!-- Start Footer Area Wrapper -->
  <?php $this->load->view('Footer') ?>
