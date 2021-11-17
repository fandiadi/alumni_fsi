<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Myprofile extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('MyProfileModel');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = 'Myprofile';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->MyProfileModel->GetUser();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('template/footer');
    }

    public function editprofile()
    {
        $data['title'] = 'Edit MyProfile';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        //$data['user1'] = $this->MyProfileModel->edit($nim);
        //        $data['user2'] = $this->db->get_where('tb_user', ['idUser' => $this->session->userdata('idUser')])->row_array();

        $this->form_validation->set_rules('nim', 'NIM', 'required|trim[tb_user.nim]', [
            'required' => 'Anda belum mengisi data!'
        ]);
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email', [
            'valid_email' => 'Format email salah!'
        ]);

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Edit Myprofile';
            //$data['user1'] = $this->KelolaUserModel->GetUser();
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/myprofileedit', $data);
            $this->load->view('template/footer');
        } else {
            $nim = $this->input->post('nim');
            $nama = $this->input->post('nama');
            $email = $this->input->post('email');
            /*$data = array(
                'nim' => $this->input->post('nim'),
                'nama' => $this->input->post('nama'),
                'email' => $this->input->post('email')
            );*/
            $this->db->set('nama', $nama);
            $this->db->set('email', $email);
            //$this->db->set('password', $password);
            $this->db->where('nim', $nim);
            //$this->db->update('tb_user');
            //$this->MyProfileModel->update($nim, $data);
            $this->db->update('tb_user');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Berhasil Diubah!</div>');
            redirect('Myprofile/editprofile');
        }
    }
}
