<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class ExportModel extends CI_Model
{

    public function GetData()
    {
        // GET USER berdasarkan role_id=2 diurut DESC dari variabel idUser
        $data = $this->db->query("SELECT tb_data_alumni.nim, tb_data_alumni.thn_lulus, tb_data_alumni.ipk, tb_data_alumni.status_alumni, tb_data_alumni.status_pekerjaan, tb_data_alumni.nama_instansi, tb_data_alumni.alamat_instansi, tb_data_alumni.bidang_ilmu, tb_data_alumni.ilmu_didapat, tb_data_alumni.kritik_saran, tb_user.nama, tb_user.jurusan FROM tb_data_alumni INNER JOIN tb_user USING (nim)");
        return $data->result_array();
    }
}
