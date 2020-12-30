<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Model_register extends CI_Model {

    public function idUser()
    {
      return $this->db->query("SELECT id_user FROM tb_user ORDER BY id_user DESC")->row();
    }

    public function create_user($data)
    {
      return $this->db->insert('tb_user',$data);
    }

    public function create_umkm($data)
    {
      return $this->db->insert('tb_umkm',$data);
    }

    public function create_admin($data)
    {
      return $this->db->insert('tb_admin',$data);
    }

    public function create_konsumen($data)
    {
      return $this->db->insert('tb_konsumen',$data);
    }

    public function kategoriUMKM()
    {
      return $this->db->query("SELECT * FROM tb_kategori_umkm")->result();
    }

}
