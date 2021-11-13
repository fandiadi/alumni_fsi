<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class ImportModel extends CI_Model
{
    public function view()
    {
        return $this->db->get('tb_user')->result();
    }
}
