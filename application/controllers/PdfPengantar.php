<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PdfPengantar extends CI_Controller
{
    public function index()
    {
        // panggil library yang kita buat sebelumnya yang bernama pdfgenerator
        $this->load->library('pdfgenerator');
        $this->load->model("m_pengantar");
        $this->m_pengantar->GetPengantar();

        // title dari pdf
        $this->data['title_pdf'] = 'Laporan Penjualan Toko Kita';
        // filename dari pdf ketika didownload
        $file_pdf = 'laporan_penjualan_toko_kita';
        // setting paper
        $paper = 'A4';
        //orientasi paper potrait / landscape
        $orientation = "portrait";

        $html = $this->load->view('/surat/suratPengantar/kp1.php', $this->data, true);

        // run dompdf
        $this->pdfgenerator->generate($html, $file_pdf, $paper, $orientation);
    }
}
