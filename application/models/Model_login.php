<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_Model {

  public function cekAkun($user,$pass)
  {
    return $this->db->query("SELECT * FROM tb_konsumen WHERE username_konsumen = '$user' AND password_konsumen = '$pass'")->row();
  }

  public function cekAkun2($user,$pass)
  {
    return $this->db->query("SELECT * FROM tb_user WHERE username = '$user' AND password = '$pass'")->row();
  }

}
