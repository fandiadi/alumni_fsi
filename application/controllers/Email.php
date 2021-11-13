<?php

use PHPMailer\PHPMailer\SMTP;

defined('BASEPATH') or exit('No direct script access allowed');

class Email extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('EmailModel');
    }

    public function index()
    {
        $data['title'] = 'Kirim Email';
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();
        $data['user1'] = $this->EmailModel->GetEmailBelumGagal();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/v_kirimemail', $data);
        $this->load->view('template/footer');
    }

    /*public function kirimEmail()
    {
        $user = $this->db->get_where('tb_user')->row_array();
        $emailBnG = $this->EmailModel->GetEmailBelumGagal();

        if (empty($user)) {
            if ($user['role_id'] == 2) {

                foreach ($emailBnG as $data) {
                    if ($data['idUser']) {
                        $this->_kirimEmail($i, $data);
                    }
                }
            }
        }
    }*/

    //public function _kirimEmail($i, $data);
}
