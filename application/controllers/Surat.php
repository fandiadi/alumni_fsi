<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Surat extends CI_Controller
{
    public function index()
    {
        $data['title'] = 'Surat';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $data['surat'] = $this->db->get('tb_surat')->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('surat/index', $data);
        $this->load->view('template/footer');
    }

    public function khs()
    {
        $data['title'] = 'KHS';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('surat/khs/index', $data);
        $this->load->view('template/footer');
    }

    public function suratPengantar()
    {
        $data['title'] = 'Surat Pengantar';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['surat'] = $this->db->get('tb_user')->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('surat/suratPengantar/index', $data);
        $this->load->view('template/footer');
    }

    public function prosesSuratPengantar()
    {
        $data['title'] = 'Proses Surat Pengantar';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['surat'] = $this->db->get('tb_user')->result_array();

        $data = [
            'nama' => $this->input->post('nama'),
            'nim' => $this->input->post('nim'),
            'semester' => $this->input->post('semester'),
            'tahun_akd' => $this->input->post('tahun_akd'),
            'nama_instansi' => $this->input->post('nama_instansi'),
            'unit' => $this->input->post('unit'),
            'alamat' => $this->input->post('alamat'),
            'pihak_instansi' => $this->input->post('pihak_instansi'),
            'tgl_surat_p' => time()
        ];

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('surat/suratPengantar/index', $data);
        $this->load->view('template/footer');

        $this->db->insert('tb_s_pengantar', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Input Data!</div>');
        redirect('surat/suratPengantar');
    }
}
