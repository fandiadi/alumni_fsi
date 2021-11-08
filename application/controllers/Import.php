<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Import extends CI_Controller
{
    public function index()
    {
        $data['title'] = 'Import';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('import/index', $data);
        $this->load->view('template/footer');
    }
}
