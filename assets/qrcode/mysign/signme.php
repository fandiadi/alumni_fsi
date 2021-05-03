<?php
include("lib.php");
if (isset($_POST['submit'])) {
    $dsn = explode("-", $_POST['dsn']);
    $id = getId();
    $ket = "Mahasiswa " . $_POST['mhs'] . " " . $_POST['ket'] . " untuk melanjutkan ke tahap Sidang Tugas Akhir 2 Gelombang 2 Tahun Ajaran 2019/2020";
    $data = array(
        "id" => $id,
        "nid" => $dsn[0],
        "nama" => $dsn[1],
        "ket" => $ket
    );

    $sign = saveSignature($data);

    if ($sign) {
        header("location:getsign.php?i=$id");
    } else {
        header("location:index.php?e=1");
    }
} else {
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>E-Signature IF UNJANI</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            footer {
                width: 100%;
                padding: 2px;
                position: absolute;
                bottom: 0;
                text-align: center;
                color: whitesmoke;
                background: rgba(3, 3, 3, 0.8);
                font-size: 12px;
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">MySignature</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">List</a>
                    </li>
                </ul>
            </div>
        </nav>

        <section class="container">
            <div class="box text-center">
                <!-- <img src="images/unjant.png"> -->
                <br>
                <h3>Form Pembuatan Tanda Tangan Digital</h3>
                <form action="" method="post">
                    <div class="col-sm-12 col-lg-6 mx-auto text-left">
                        <!-- <div class="form-group">
                            <label for="" class="label">NID</label>
                            <input type="text" class="form-control" name="nid">
                        </div>
                        <div class="form-group">
                            <label for="nama">NAMA DOSEN</label>
                            <input type="text" class="form-control" name="nama">
                        </div> -->
                        <div class="form-group">
                            <label for="nama">DOSEN</label>
                            <!-- <input type="text" class="form-control" name="nama"> -->
                            <select name="dsn" id="" class="form-control">
                                <?php
                                $dsn = getDosen();
                                while ($row = mysqli_fetch_array($dsn)) {
                                    echo '<option value="' . $row[1] . '-' . $row[2] . '">' . $row[1] . ' ' . $row[2] . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nama">MAHASISWA</label>
                            <!-- <input type="text" class="form-control" name="nama"> -->
                            <select name="mhs" id="" class="form-control">
                                <?php
                                $mhs = getMhs();
                                while ($row = mysqli_fetch_array($mhs)) {
                                    echo '<option value="' . $row[1] . ' ' . $row[2] . '">' . $row[1] . ' ' . $row[2] . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Keterangan</label>
                            <!-- <textarea name="ket" id="" cols="30" rows="5" class="form-control"></textarea> -->
                            <select name="ket" id="" class="form-control">
                                <option value="Layak">Maju Sidang</option>
                                <option value="Tidak Layak">Tidak Maju Sidang</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" value="Buat E-Signature" class="btn btn-primary form-control">
                        </div>


                    </div>
                </form>
            </div>
        </section>
        <!-- <footer class="footer-copyright text-center">
        MySignature &copy; 2020 JURUSAN INFORMATIKA UNIVERSITAS JENDERAL ACHMAD YANI created by HAY
    </footer> -->

    </body>

    </html>
<?php
}
?>