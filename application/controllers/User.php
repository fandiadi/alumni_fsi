<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('ProfileModel');
    }

    public function index()
    {
        $data['title'] = 'User';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->db->get_where('tb_data_alumni', ['nim' => $this->session->userdata('nim')])->row_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('template/footer');
    }

    public function tambahdata()
    {
        $data['title'] = 'Isi Data Alumni';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->db->get_where('tb_data_alumni', ['nim' => $this->session->userdata('nim')])->row_array();


        $this->form_validation->set_rules('nim', 'NIM', 'required|trim|is_unique[tb_data_alumni.nim]', [
            'is_unique' => 'Anda sudah pernah mengisi data! Silahkan masuk ke menu Edit Profile'
        ]);
        $this->form_validation->set_rules('thn_lulus', 'Thn Lulus', 'required');
        $this->form_validation->set_rules('thn_kerja', 'Thn Kerja', 'trim');
        $this->form_validation->set_rules('bln_kerja', 'Bln Kerja', 'trim');
        $this->form_validation->set_rules('ipk', 'IPK', 'required|trim');
        $this->form_validation->set_rules('status_alumni', 'Status Alumni');
        $this->form_validation->set_rules('status_pekerjaan', 'Status Pekerjaan');
        $this->form_validation->set_rules('nama_instansi', 'Nama Instansi');
        $this->form_validation->set_rules('alamat_instansi', 'Alamat Instansi');
        $this->form_validation->set_rules('bidang_ilmu', 'Bidang Ilmu');
        $this->form_validation->set_rules('ilmu_didapat', 'Ilmu Didapat');
        $this->form_validation->set_rules('kritik_saran', 'Kritik Saran');

        // Jika form kosong maka kembali ke halaman awal
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Isi Data Alumni';
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('user/v_tambah_data', $data);
            $this->load->view('template/footer');
            // $this->session->set_flashdata('message', '<div class="alert alert-failed" role="alert">Harap mengisi form!</div>');
        } else {
            $data = [
                'nim' => $this->input->post('nim'),
                'thn_lulus' => $this->input->post('thn_lulus'),
                'thn_kerja' => $this->input->post('thn_kerja'),
                'bln_kerja' => $this->input->post('bln_kerja'),
                'ipk' => $this->input->post('ipk'),
                'status_alumni' => $this->input->post('status_alumni'),
                'status_pekerjaan' => $this->input->post('status_pekerjaan'),
                'nama_instansi' => $this->input->post('nama_instansi'),
                'alamat_instansi' => $this->input->post('alamat_instansi'),
                'bidang_ilmu' => $this->input->post('bidang_ilmu'),
                'ilmu_didapat' => $this->input->post('ilmu_didapat'),
                'kritik_saran' => $this->input->post('kritik_saran'),
                'create_date' => time()
            ];
            $this->db->insert('tb_data_alumni', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Berhasil ditambahkan!</div>');
            redirect('User/edit');
        }
    }

    public function edit()
    {
        $data['title'] = 'Edit Profile';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $data['user1'] = $this->db->get_where('tb_data_alumni', ['nim' => $this->session->userdata('nim')])->row_array();

        //$data['user1'] = $this->ProfileModel->GetData();

        $this->form_validation->set_rules('nim', 'NIM', 'required|trim[tb_data_alumni.nim]', [
            'required' => 'Anda belum mengisi data!'
        ]);
        $this->form_validation->set_rules('thn_lulus', 'Thn Lulus', 'required');
        $this->form_validation->set_rules('thn_kerja', 'Thn Kerja', 'trim');
        $this->form_validation->set_rules('bln_kerja', 'Bln Kerja', 'trim');
        $this->form_validation->set_rules('ipk', 'IPK', 'required|trim|decimal');
        $this->form_validation->set_rules('status_alumni', 'Status Alumni');
        $this->form_validation->set_rules('status_pekerjaan', 'Status Pekerjaan');
        $this->form_validation->set_rules('nama_instansi', 'Nama Instansi');
        $this->form_validation->set_rules('alamat_instansi', 'Alamat Instansi');
        $this->form_validation->set_rules('bidang_ilmu', 'Bidang Ilmu');
        $this->form_validation->set_rules('ilmu_didapat', 'Ilmu Didapat');
        $this->form_validation->set_rules('kritik_saran', 'Kritik Saran');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Edit Profile';
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('user/edit', $data);
            $this->load->view('template/footer');
            // $this->session->set_flashdata('message', '<div class="alert alert-failed" role="alert">Harap mengisi form!</div>');
        } else {
            $nim = $this->input->post('nim');
            $thn_lulus = $this->input->post('thn_lulus');
            $thn_kerja = $this->input->post('thn_kerja');
            $bln_kerja = $this->input->post('bln_kerja');
            $ipk = $this->input->post('ipk');
            $status_alumni = $this->input->post('status_alumni');
            $status_pekerjaan = $this->input->post('status_pekerjaan');
            $nama_instansi = $this->input->post('nama_instansi');
            $alamat_instansi = $this->input->post('alamat_instansi');
            $bidang_ilmu = $this->input->post('bidang_ilmu');
            $ilmu_didapat = $this->input->post('ilmu_didapat');
            $kritik_saran = $this->input->post('kritik_saran');
            $update_date = time();

            $this->db->set('thn_lulus', $thn_lulus);
            $this->db->set('thn_kerja', $thn_kerja);
            $this->db->set('bln_kerja', $bln_kerja);
            $this->db->set('ipk', $ipk);
            $this->db->set('status_alumni', $status_alumni);
            $this->db->set('status_pekerjaan', $status_pekerjaan);
            $this->db->set('nama_instansi', $nama_instansi);
            $this->db->set('alamat_instansi', $alamat_instansi);
            $this->db->set('bidang_ilmu', $bidang_ilmu);
            $this->db->set('ilmu_didapat', $ilmu_didapat);
            $this->db->set('kritik_saran', $kritik_saran);
            $this->db->set('update_date', $update_date);
            $this->db->where('nim', $nim);
            $this->db->update('tb_data_alumni');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Berhasil Diubah!</div>');
            redirect('User/edit');
        }
    }
}
