<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
  {
      parent::__construct();
      $this->load->model('Model_login');
  }

	public function index()
	{
		$this->load->view('Login');
	}

	public function cekLogin()
	{
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$cek = $this->Model_login->cekAkun($username,md5($password));
		if(!$cek){
				$cek2 = $this->Model_login->cekAkun2($username,md5($password));
				if(!$cek2){
					echo "gaada";
				}else if($cek2->level == 'Admin'){
					echo "admin";
				}else if($cek2->level == 'UMKM'){
					echo "umkm";
				}
		}else{
			echo "berhasil";
		}
	}

}
