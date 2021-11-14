<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Export extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('ExportModel');
    }

    public function index()
    {
        $data['title'] = 'Export Data Alumni';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $data['user1'] = $this->ExportModel->GetData();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/export', $data);
        $this->load->view('template/footer');
    }
}
