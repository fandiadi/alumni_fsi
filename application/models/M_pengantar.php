<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_pengantar extends CI_Model
{
    public function GetPengantar()
    {
        $data = $this->db->query("SELECT * FROM tb_s_pengantar");
        return $data->result_array();
    }

    public function GetPengantar1()
    {
        $data = $this->db->query("SELECT * FROM tb_s_pengantar where p_role_id=1");
        return $data->result_array();
    }

    public function GetPengantar2()
    {
        $data = $this->db->query("SELECT * FROM tb_s_pengantar where p_role_id=2");
        return $data->result_array();
    }

    public function GetPengantar3()
    {
        $data = $this->db->query("SELECT * FROM tb_s_pengantar where p_role_id=3");
        return $data->result_array();
    }
}
