<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Monitoring extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('MonitoringModel');
    }

    public function index()
    {
        $data['title'] = 'Monitoring Data Alumni';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $data['user1'] = $this->MonitoringModel->GetData();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/monitoring', $data);
        $this->load->view('template/footer');
    }
}
