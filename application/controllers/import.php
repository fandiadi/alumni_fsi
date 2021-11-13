<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Import extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('ImportModel');
    }

    public function import()
    {
        $data['title'] = 'Import Data';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('import/import');
        $this->load->view('template/footer');
    }
    public function index()
    {
        $data['title'] = 'Import Data Alumni';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->ImportModel->view();


        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('import/index', $data);
        $this->load->view('template/footer');
    }

    public function upload()
    {
        // Load plugin PHPExcel nya
        include APPPATH . 'third_party/PHPExcel/PHPExcel.php';

        $config['upload_path'] = realpath('excel');
        $config['allowed_types'] = 'xlsx|xls|csv';
        $config['max_size'] = '10000';
        $config['encrypt_name'] = true;

        $this->load->library('upload', $config);


        if (!$this->upload->do_upload()) {

            //upload gagal
            $this->session->set_flashdata('notif', '<div class="alert alert-danger"><b>PROSES IMPORT GAGAL!</b> ' . $this->upload->display_errors() . '</div>');
            //redirect halaman


            redirect('import/import');
        } else {
            // if (!empty($valid)) {
            //     try {
            //     $objPHPExcel = PHPExcel_IOFactory::load($file);
            //     } catch (Exception $e) {
            //     die("Error loading file :". $e->getMessage());
            //     }

            $data_upload = $this->upload->data();

            $excelreader     = new PHPExcel_Reader_Excel2007();
            $loadexcel       = $excelreader->load('excel/' . $data_upload['file_name']); // Load file yang telah diupload ke folder excel
            $sheet           = $loadexcel->getActiveSheet()->toArray(null, true, true, true, true, true, true);

            $data = array();

            $numrow = 1;
            foreach ($sheet as $row) {
                if ($numrow > 1) {
                    array_push($data, array(
                        'password'               => password_hash("123456", PASSWORD_DEFAULT),
                        'nim'      => $row['A'],
                        'nama'             => $row['C'],
                        'email'             => $row['D'],
                        'jurusan'             => $row['B'],
                        'date_created' => time(),
                        'role_id' => 2,
                        'is_active' => 1,
                    ));
                }
                $numrow++;
            }
            $this->db->insert_batch('tb_user', $data);
            //delete file from server
            unlink(realpath('excel/' . $data_upload['file_name']));

            //upload success
            $this->session->set_flashdata('notif', '<div class="alert alert-success"><b>PROSES IMPORT BERHASIL!</b> Data berhasil diimport!</div>');
            //redirect halaman
            redirect('import');
        }
    }
}
