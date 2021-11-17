<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MyProfileModel extends CI_Model
{
    public function GetUser()
    {
        $data = $this->db->query("SELECT * FROM `tb_user` ORDER BY `idUser`  ASC");
        return $data->result_array();
    }
}
