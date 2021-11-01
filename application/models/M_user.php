<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_user extends CI_Model
{
    public function GetUser()
    {
        $data = $this->db->query("SELECT * FROM tb_user");
        return $data->result_array();
    }
}
