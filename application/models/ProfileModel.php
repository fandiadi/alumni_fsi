<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ProfileModel extends CI_Model
{
    private $table = "tb_data_alumni";


    public function GetData()
    {
        $data = $this->db->query("SELECT * FROM tb_data_alumni");
        return $data->row();
    }
    public function GetAllData()
    {
        $data = $this->db->query("SELECT * FROM tb_data_alumni");
        return $data->result_array();
    }

    public function getById($nim)
    {
        return $this->db->get_where($this->table, ["nim" => $nim])->row();
        //return $this->db->query("SELECT * FROM tb_data_alumni WHERE")
    }
    public function update($data, $nim)
    {
        return $this->db->update($this->table, $data, array('nim' => $nim));
        //return $this->db->query("SELECT * FROM tb_data_alumni WHERE")
    }
}
