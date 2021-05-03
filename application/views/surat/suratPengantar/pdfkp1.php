<?php
    include('koneksi.php');
    require_once("dompdf/autoload.inc.php");
    use Dompdf\Dompdf;
    $dompdf = new Dompdf();
//    $query = mysqli_query($koneksi,"select * from percobaan");

    $html= 
    ' <table cellspacing="0" cellpading="10">
       <tr>
           <td> <img src="logo.jpg" style=" width:70px; height :auto;">  </td>
           <td><b>
               <center>
               <font size="3">YAYASAN KARTIKA EKA PAKSI (YKEP) <br>
               UNIVERSITAS JENDERAL ACHMAD YANI (UNJANI)<br>
               FAKULTAS SAINS DAN INFORMATIKA (FSI)<br>
               JURUSAN INFORMATIKA<br> 
               </font>               
               </center></b>
           </td>
           <td>
               <table style="border-collapse:collapse;" border="1"  cellspacing="0" cellpadding="2">
                   <tr>    
                       <td> No Form </td>
                       <td> : </td>
                       <td> IF-F.SI/ADM/21 </td>
                   </tr>
                   <tr>
                       <td> Disahkan </td>
                       <td>:</td>
                       <td>20/10/2010</td>
                   </tr>
                   <tr>
                       <td>No. Revisi</td>
                       <td>:</td>
                       <td>0</td>
                   </tr>
               </table>
   </table>
   <br>
   <table border="1" style="border-collapse:collapse;" width="505"cellspacing="0" cellpading="10" >
       <tr>
           <td align="center">IF.AKD - 21</td>
           <td align="center">PERMOHONAN SURAT PENGANTAR</td>
       </tr>
   </table>
   <br>
   <table  width="505">
       <tr>
           <td>
            SAYA MAHASISWA YANG BERTANDA TANGAN DIBAWAH INI :
           </td>
       </tr>
   </table>
   <br>
   <table border="1" style="border-collapse:collapse;" width="505" cellspacing="0" cellpadding="4">
       <tr>
           <td> NAMA LENGKAP </td>
           <td> : </td>
           <td colspan="5">';$html.= 'Fandi Adi Prasetio</td>
       </tr>
       <tr>
           <td>NOMOR INDUK (NIM)</td>
           <td>:</td>
           <td>..........</td>
           <td>SEMESTER</td>
           <td>..........</td>
           <td>TA</td>
           <td>...........</td>
       </tr>
   </table>
   <table  width="505">
       <tr>
           <td>
            DENGAN INI MENGAJUKAN PERMOHONAN UNTUK DIBUATKAN SURAT PENGANTAR 
           </td>
       </tr>
       <TR>
           <TD>YANG DITUJUKAN KEPADA :</TD>
       </TR>
   </table>
   <br>
   
   <table border="1" style="border-collapse:collapse;" width="505" cellspacing="0" cellpadding="5"  >
       <tr>
           <td align="center"> NAMA INSTANSI/LEMBAGA/PERUSAHAAN</td>
           <td align="center">UNIT/BAGIAN/DIVIS</td>
       </tr>
       <tr>
           <td align="center">............</td>
           <td align="center">............</td>
       </tr>
       <tr>
           <td align="center">ALAMAT LENGKAP</td>
           <td align="center">PIHAK YANG DIHUBUNGI</td>
       </tr>
       <tr>
           <td align="center">............</td>
           <td align="center">............</td>
       </tr>
   </table>
   <br>
   <table  border="1" style="border-collapse:collapse;" width="505" cellspacing="0" cellpadding="5" >
       <tr>
           <td>MAKSUD DAN TUJUAN*</td>
           <td> : </td>
           <td>[...] SURVEY [...] INTERVIEW : </td>
       </tr>
       <tr>
           <td colspan="2"> [...] LAIN-LAIN SEBUTKAN</td>
           <td>...........</td>
       </tr>
   </table>
   <table width="505">
       <tr>
           <td >DALAM RANGKA KEGIATAN UNTUK MENYELESAIKAN PENELITIAN : *</td>
       </tr>
   </table>
   <table border="1" style="border-collapse:collapse;" width="505" cellspacing="0" cellpadding="5">
       <tr>
           <td>[...] TUGAS AKHIR (TA)-I</td>
           <td rowspan="2">[...] TUGAS BESAR MATA KULIAH (SEBUTKAN) <br>
           ...........................</td>
       </tr>
       <tr>
           <td>[...] TUGAS AKHIR (TA)-II</td>
       </tr>
   </table>
   
   <table width="505" cellspacing="0" cellpadding="5" >
       <tr>
           <td>DEMIKIAN PERMOHONAN INI SAYA BUAT. ATAS PERHATIAN DAN KERJASAMANYA DIUCAPKAN BANYAK TERMIAKASIH.</td>
       </tr>
   </table>
   <table width="505">
       <tr>
           <td></td>
           <td>CIMAHI, .................. 2021</td>
       </tr>
       <tr>
           <td colspan="2" align="center"> <br>MENGETAHUI,</td>
       </tr>
       <tr>
           <td width="250" style="text-align:center;"><br>DOSEN PEMBIMBING / PENGAMPU <br><br><br><br><br> <hr align="center" width="200"></td>
           <td style="text-align:center;"><br>YANG MENGAJUKAN <br><br><br><br><br> <hr align="center" width="200"></td>
       </tr>
    </table>';
$html .= "</html>";
$dompdf->loadHtml($html);
// Setting ukuran dan orientasi kertas
$dompdf->setPaper('A4', 'potrait');
// Rendering dari HTML Ke PDF
$dompdf->render();
// Melakukan output file Pdf
$dompdf->stream('PDF1');
