<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kelolauser extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('KelolauserModel');
    }
    public function index()
    {
        $data['title'] = 'Kelola User';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->KelolauserModel->view();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('kelolauser/index', $data);
        $this->load->view('template/footer');
    }

    public function tambahdata()
    {
        $data['title'] = 'Tambah Data';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $this->form_validation->set_rules('nim', 'NIM', 'required|trim|is_unique[tb_data_alumni.nim]', [
            'is_unique' => 'NIM ini sudah terdaftar!'
        ]);
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|trim');
        $this->form_validation->set_rules('Jurusan', 'Jurusan');
        $this->form_validation->set_rules('status_pekerjaan', 'Status Pekerjaan');
        $this->form_validation->set_rules('nama_instansi', 'Nama Instansi');
        $this->form_validation->set_rules('alamat_instansi', 'Alamat Instansi');
        $this->form_validation->set_rules('bidang_ilmu', 'Bidang Ilmu');
        $this->form_validation->set_rules('ilmu_didapat', 'Ilmu Didapat');
        $this->form_validation->set_rules('kritik_saran', 'Kritik Saran');

        // Jika form kosong maka kembali ke halaman awal
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Tambah Data Alumni';
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('kelolauser/tambahdata', $data);
            $this->load->view('template/footer');
            // $this->session->set_flashdata('message', '<div class="alert alert-failed" role="alert">Harap mengisi form!</div>');
        } else {
            $data = [
                'nim'               => $this->input->post('nim'),
                'nama'              => $this->input->post('nama'),
                'email'             => $this->input->post('email'),
                'jurusan'           => $this->input->post('jurusan'),
                'date_created'       => time(),
                'password'          => password_hash("123456", PASSWORD_DEFAULT),
                'role_id'           => 2,
                'is_active'         => 1,
                'status_email'      => "Belum",
            ];
            $this->db->insert('tb_user', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Berhasil ditambahkan!</div>');
            redirect('kelolauser');
        }
    }
    public function hapus($nim)
    {
        $this->KelolauserModel->hapus($nim);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Berhasil Dihapus!</div>');
        redirect('kelolauser');
    }
    public function edit($nim)
    {
        $data['title'] = 'Edit Profile';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->KelolauserModel->edit($nim);

        //$data['user1'] = $this->ProfileModel->GetData();

        $this->form_validation->set_rules('nim', 'NIM', 'required|trim[tb_user.nim]', [
            'required' => 'Anda belum mengisi data!'
        ]);
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|trim');
        $this->form_validation->set_rules('jurusan', 'Jurusan', 'required|trim');


        if ($this->form_validation->run() == false) {
            $data['title'] = 'Edit Profile';
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('kelolauser/edit', $data);
            $this->load->view('template/footer');
            // $this->session->set_flashdata('message', '<div class="alert alert-failed" role="alert">Harap mengisi form!</div>');
        } else {
            $nim = $this->input->post('nim');
            $nama = $this->input->post('nama');
            $email = $this->input->post('email');
            $jurusan = $this->input->post('jurusan');

            $data = array(
                'nim' => $nim,
                'nama' => $nama,
                'email' => $email,
                'jurusan' => $jurusan
            );
            // $this->db->set('nim', $nim);
            // $this->db->set('nama', $nama);
            // $this->db->set('email', $email);
            // $this->db->set('jurusan', $jurusan);
            // $this->db->where('nim', $nim);
            // 
            $this->KelolauserModel->update($nim, $data);

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Berhasil Diubah!</div>');
            redirect('kelolauser');
        }
    }
}
