<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

  public function __construct()
  {
      parent::__construct();
      $this->load->model('Model_register');
  }
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('Register');
	}

  public function Login()
  {
    $this->load->view('Login');
  }

  public function regUMKM()
  {
    $data = array(
      'register' => $this->Model_register->idUser(),
      'kategori'     => $this->Model_register->kategoriUMKM()
    );
    $this->load->view('RegisterUMKM',$data);
  }

  public function regAdmin()
  {
    $data = array(
      'register' => $this->Model_register->idUser()
    );
    $this->load->view('RegisterAdmin',$data);
  }

  public function registKonsumen()
  {
    $data = array(
      'nama_konsumen' => $this->input->post('namalengkap'),
      'username_konsumen' => $this->input->post('username'),
      'password_konsumen' => md5($this->input->post('password')),
      'email_konsumen' => $this->input->post('email'),
      'foto_konsumen' => 'konsumen.jpg',
      'nomor_telp_konsumen' => $this->input->post('notelp'),
      'status_konsumen' => 'aktif'
    );
    if($this->input->post('password') == $this->input->post('passwords')){
      $cek = $this->Model_register->create_konsumen($data);
      if(!$cek){
        echo"<script type='text/javascript'>
        alert('Registrasi gagal');
        window.location='registrasi';
        </script>";
      }else{
        echo"<script type='text/javascript'>
        alert('Registrasi berhasil');
        window.location='login';
        </script>";
      }
    }else{
      echo"<script type='text/javascript'>
      alert('Password tidak sama,ulangi');
      window.location='index';
      </script>";
    }
  }

  public function registerAdmin()
  {
    $data = array(
      'id_user' => $this->input->post('iduser'),
      'nama_lengkap' => $this->input->post('namalengkap'),
      'username' => $this->input->post('username'),
      'password' => md5($this->input->post('password')),
      'email' => $this->input->post('email'),
      'level' => 'Admin',
      'foto_user' => 'admin.jpg',
      'status' => 'aktif'
    );
    $admin = array(
      'id_user' => $this->input->post('iduser'),
      'nomor_telp_admin' => $this->input->post('notelp')
    );
    if($this->input->post('password') == $this->input->post('passwords')){
      $cek = $this->Model_register->create_user($data);
      $cekadmin = $this->Model_register->create_admin($admin);
      if(!$cek){
        echo"<script type='text/javascript'>
        alert('Registrasi gagal');
        window.location='regAdmin';
        </script>";
      }else{
        echo"<script type='text/javascript'>
        alert('Registrasi berhasil');
        window.location='login';
        </script>";
      }
    }else{
      echo"<script type='text/javascript'>
      alert('Password tidak sama,ulangi');
      window.location='regAdmin';
      </script>";
    }
  }

  public function registUMKM()
  {
    $data = array(
      'id_user' => $this->input->post('iduser'),
      'nama_lengkap' => $this->input->post('namalengkap'),
      'username' => $this->input->post('username'),
      'password' => md5($this->input->post('password')),
      'email' => $this->input->post('email'),
      'level' => 'UMKM',
      'foto_user' => 'umkm.jpg',
      'status' => 'aktif'
    );
    $umkm = array(
      'id_user' => $this->input->post('iduser'),
      'nama_umkm' =>  $this->input->post('namaumkm'),
      'alamat_umkm' => $this->input->post('alamat'),
      'deskripsi_umkm' => $this->input->post('deskripsi'),
      'nomor_telp_umkm' => $this->input->post('notelp'),
      'id_kategori_umkm' => $this->input->post('kategori')
    );
    if($this->input->post('password') == $this->input->post('passwords')){
      $cek = $this->Model_register->create_user($data);
      $cekumkm = $this->Model_register->create_umkm($umkm);
      if(!$cek){
        echo"<script type='text/javascript'>
        alert('Registrasi gagal');
        window.location='regUMKM';
        </script>";
      }else{
        echo"<script type='text/javascript'>
        alert('Registrasi berhasil');
        window.location='login';
        </script>";
      }
    }else{
      echo"<script type='text/javascript'>
      alert('Password tidak sama,ulangi');
      window.location='regUMKM';
      </script>";
    }
  }

}
