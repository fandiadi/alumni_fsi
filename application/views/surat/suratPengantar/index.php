<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <form class="suratp" method="POST" action="<?= base_url('surat/prosesSuratPengantar'); ?>">
        <div class="form-group">
            <label for="exampleInputEmail1">Nama Lengkap</label>
            <input type="text" class="form-control" id="nama" name="nama">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">NIM</label>
            <input type="text" class="form-control" id="nim" name="nim">
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Semester</label>
            <select class="form-control" id="semester" name="semester">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Tahun Akademik</label>
            <input type="text" class="form-control" id="tahun_akd" name="tahun_akd" placeholder="2019/2020">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Nama Instansi</label>
            <input type="text" class="form-control" id="nama_instansi" name="nama_instansi">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Unit</label>
            <input type="text" class="form-control" id="unit" name="unit">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Alamat</label>
            <input type="text" class="form-control" id="alamat" name="alamat">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Pihak Instansi</label>
            <input type="text" class="form-control" id="pihak_instansi" name="pihak_instansi">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->