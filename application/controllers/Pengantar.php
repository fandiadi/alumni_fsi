<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengantar extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model("m_pengantar");
    }

    public function index()
    {
        $data['title'] = 'Permohonan Surat';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $surat['surat'] = $this->db->get('tb_s_pengantar')->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('surat/suratPengantar/pengantar', $data); //Konten
        $this->load->view('template/footer');
    }

    public function listpengantar1()
    {
        $data['title'] = "List Permohonan Surat Pengantar";
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        $data['surat'] = $this->m_pengantar->GetPengantar1();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('surat/suratPengantar/pengantar', $data); //Konten
        $this->load->view('template/footer');
    }

    public function pengantar1()
    {
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();

        // panggil library yang kita buat sebelumnya yang bernama pdfgenerator
        $this->load->library('pdfgenerator');
        // title dari pdf
        $this->data['title_pdf'] = 'SuratPengantar1';

        // filename dari pdf ketika didownload
        $file_pdf = 'surat_pengantar_1';
        // setting paper
        $paper = 'A4';
        //orientasi paper potrait / landscape
        $orientation = "portrait";

        $html = $this->load->view('/surat/suratPengantar/kp1.php', $this->data, true);

        // run dompdf
        $this->pdfgenerator->generate($html, $file_pdf, $paper, $orientation);
    }
}
