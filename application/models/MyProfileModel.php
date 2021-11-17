<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MyProfileModel extends CI_Model
{
    public function GetUser()
    {
        $data = $this->db->query("SELECT * FROM `tb_user` ORDER BY `idUser`  ASC");
        return $data->result();
    }
    /*public function edit($nim)
    {
        $this->db->where('nim', $nim);
        return $this->db->get('tb_user');
    }*/
    /*function update($nim, $data)
    {
        $this->db->where('nim', $nim);
        return $this->db->update('tb_user', $data);
    }*/
}
