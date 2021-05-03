<?php
    include('koneksi.php');
    require_once("dompdf/autoload.inc.php");
    use Dompdf\Dompdf;
    $dompdf = new Dompdf();
//    $query = mysqli_query($koneksi,"select * from percobaan");

    $html= 
    ' <style>
    p.a {
  font-family: "Calibri";
}
    .left    { text-align: left;}
    .right   { text-align: right;}
    .center  { text-align: center;}
    .justify { text-align: justify;}
</style>
<body>
    <table width="550" >
        <tr>
            <td><img src="logo2.png" style=" width:65px; height :auto;" > </td>
            <td style="text-align:center; font-size:16px" ><b>YAYASAN KARTIKA EKA PAKSI <br> 
            UNIVERSITAS JENDERAL ACHMAD YANI (UNJANI) <br>
            FAKULTAS SAINS DAN INFORMATIKA <br>
            (FSI)</b> <br> <p style="text-align:center; font-size:12px"> 
            Kampus Cimahi : Jl. Terusan Jenderal Sudirman PO. BOX 148 Telp. (022) 6650646 </p></td>
            <td> <img src="logo.jpg"style=" width:80px; height :auto;"> </td>
        </tr>
    <font face="Calibri" >
    </table>
    <hr > 
    <table  width="500" class="a">
    <tr>
        <td rowspan="4" width="50">  </td>
        <td class="a" width="50"> Nomor  </td>               
        <td width="5">:</td>
        <td>B- 140 /F.SI - UNJANI / VI / 2020 </td>
        <td rowspan="5"> Cimahi, <br> <br> Kepada :<br>  Yth. Pimpinan ......skldufhsiukfgyhiaustfgipgPwf. <br> di <br> <u> Tempat</u> </td>
    </tr>
    <tr>
        <td width="50"> Klasifikasi </td>
        <td> : </td>
        <td>Biasa</td>
    </tr>
    <tr>
        <td width="50"> Lampiran </td>
        <td width="5">  : </td>
        <td>   -    </td>
    </tr>
    <tr>
        <td width="50">  Perihal  </td>
        <td width="5"> : </td>
        <td width ="200"> <u>Permohonan Ijin Kerja Praktek </u> </td>
    </tr>
    <tr>
        <td colspan="4" height="20">  </td>
    </tr>
</table> 
<table width="450" >
    <tr>
        <td rowspan="5" width="70"> </td>
        <td colspan="2">Dengan Hormat, <br><br>  </td>
        
    </tr>
    <tr>  
        <td width="10"  style= "vertical-align:top;"> 1. </td>
        <td colspan="2" class="justify" > Dasar Surat Ketua Jurusan Informatika Nomor 
        : B-99 /IF-F.SI /VI/2020 tanggal 8 Juni 2020 perihal Permohonan Surat Pengantar Kerja Praktek.</td>
    </tr>
    <tr>
        <td style= "vertical-align:top;" rowspan="2" ><br> 2.</td>
        <td class="justify" width="360"><br> Atas dasar tersebut diatas, bersama ini kami sampaikan permohonan
         ijin Untuk melaksanakan Kerja Praktek yang akan dilaksanakan di instansi yang Bapak/Ibu pimpin kepada
        mahasiswa sebagai berikut :<br> </td>
    </tr> 
    <tr>
        <td colspan="2"> <br> INI DIISI TABEL MAHASISWA BOY  </td>
    </tr>
    <tr>
        <td style= "vertical-align:top;"> <br> 3. </td>
        <td colspan="2" class="justify" > <br> Demikian surat permohonan ini kami sampaikan, 
        atas perhatian dan kerjasamanya, diucapkan terima kasih. </td>
    </tr>
</table><br><br>

<table >
    <tr>
        <td width="70" rowspan="2">  </td>
        <td width="230"> </td>
        <td rowspan="2"> An. Dekan <br> Wakil Dekan I <br><br><br><br> <u>DATABASE NAMA DEKAN I </u> <br> NID DEKAN I DARI DATABASE</td>
    </tr>
</table>
<table>
    <tr>
        <td width="50"> </td>
        <td> <u>Tembusan Yth : </u> <br> 1. DekanF.SI (Sebagai Laporan) <br> <u> 2. Ketua Jurusan Informatika F.SI</u></td>
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
?>
