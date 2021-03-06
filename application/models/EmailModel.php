<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class EmailModel extends CI_Model
{

    public function GetUser()
    {
        // GET USER
        $data = $this->db->query("SELECT * FROM tb_user WHERE role_id=2 ORDER BY `tb_user`.`idUser` DESC");
        return $data->result_array();
    }

    public function GetEmailBelumGagal()
    {
        $data = $this->db->query("SELECT * FROM tb_user WHERE role_id=2 AND status_email IN ('Belum', 'Gagal') ORDER BY `idUser` ASC");
        return $data->result_array();
    }

    public function GetEmailTerkirim()
    {
        $data = $this->db->query("SELECT * FROM tb_user WHERE role_id=2 AND status_email='Terkirim' ORDER BY `idUser` DESC");
        return $data->result_array();
    }

    /*public function getUserById($nim)
    {
        return $this->db->get_where('tb_user', ['nim' => $nim])->row_array();
    }*/
}
