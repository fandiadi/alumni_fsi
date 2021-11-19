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

    public function kirimemail()
    {
        $data['user'] = $this->db->get_where('tb_user', ['nim' => $this->session->userdata('nim')])->row_array();


        if (isset($_POST['email_data'])) {
            $data['user1'] = $this->EmailModel->GetEmailBelumGagal();
            //$data['user2'] = $this->EmailModel->getNIM();
            $output = '';
            $password = 123456;

            foreach ($_POST['email_data'] as $row) {
                $this->load->library('PHPMailer_load'); //Load Library PHPMailer
                $mail = $this->phpmailer_load->load(); // Mendefinisikan Variabel Mail
                $mail->isSMTP();  // Mengirim menggunakan protokol SMTP
                $mail->SMTPDebug = SMTP::DEBUG_SERVER;
                $mail->Host = 'smtp.gmail.com'; // Host dari server SMTP
                //$mail->Host = 'mail.alumnifsi.masuk.id'; // Host dari server SMTP
                $mail->SMTPAuth = true; // Autentikasi SMTP
                //$mail->Username = 'fsi_alumni@alumnifsi.masuk.id';
                $mail->Username = 'fandiadi@student.unjani.ac.id';
                $mail->Password = 'qwerty8869po';
                //$mail->SMTPSecure = 'ssl';
                $mail->SMTPSecure = 'tsl';
                //$mail->Port = 465;
                $mail->Port = 587;
                $mail->setFrom('fsi_alumni@alumnifsi.masuk.id', 'Admin FSI Unjani'); // Sumber email
                $mail->addAddress($row['email'], $row['nama']); // Masukkan alamat email dari variabel $email
                $mail->Subject = "Profile Alumni Unjani"; // Subjek Email
                $mail->msgHtml("
			    <h3>Pemberitahuan Pengisian Data Profile Alumni</h3><hr>
				Kepada Yth. " . $row['nama'] . "<br><br>

				Kami memberitahukan anda untuk mengisi profile data diri alumni Universitas Jenderal Achmad Yani, dengan detail sebagai berikut: <br><br>
				** Harap Login Melalui Link dibawah **<br>
				http://alumnifsi.masuk.id/<br>
				
				NIM : " . $row['nim'] . "<br>
				Password : $password <br><br>

				Anda dapat mengkonfirmasi kehadiran dengan membalas e-mail ini.<br>
				Terima Kasih
			    "); // Isi email dengan format HTML

                /*$result = $mail->Send();

                if ($result['code'] == '400') {
                    $output = html_entity_decode($result['full_error']);
                }*/

                if (!$mail->send()) {
                    echo "Mailer Error: " . $mail->ErrorInfo;
                } else {
                    $nim = $row['nim'];
                    $status_email = "Terkirim";
                    $this->db->set('status_email', $status_email);
                    $this->db->where('nim', $nim);
                    $this->db->update('tb_user');
                    echo "Message sent!";
                }
            }
            /*if ($output == '') {
                echo 'ok';
            } else {
                echo $output;
            } // Kirim email dengan cek kondisi */
        }
    }
}
