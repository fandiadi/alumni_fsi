<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class KelolauserModel extends CI_Model
{
    public function view()
    {
        $data = $this->db->query("SELECT * FROM tb_user WHERE role_id=2");
        return $data->result();
    }
    public function hapus($nim)
    {
        $this->db->where('nim', $nim);
        $this->db->delete('tb_user');
    }
    public function edit($nim)
    {
        $this->db->where('nim', $nim);
        return $this->db->get('tb_user');
    }
    function update($nim, $data)
    {
        $this->db->where('nim', $nim);
        return $this->db->update('tb_user', $data);
    }
}
