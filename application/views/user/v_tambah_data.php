<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <form class="suratp" method="POST" action="<?= base_url('user/tambahdata'); ?>">
        <div class="form-group">
            <label for="exampleInputNIM">NIM</label>
            <input type="number" class="form-control" id="nim" name="nim" readonly value="<?php echo $user['nim']; ?>">
        </div>
        <div class="form-group">
            <label for="exampleInputThnLulus">Tahun Lulus</label>
            <input type="number" class="form-control" id="thn_lulus" name="thn_lulus">
        </div>
        <div class="form-group">
            <label for="exampleInputIPK">IPK</label>
            <input type="text" class="form-control" id="ipk" name="ipk">
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Status Alumni</label>
            <select class="form-control" id="status_alumni" name="status_alumni">
                <option value="Bekerja">Bekerja</option>
                <option value="Belum / Tidak Bekerja">Belum / Tidak Bekerja</option>
                <option value="Bekerja sambil Kuliah">Bekerja sambil Kuliah</option>
                <option value="Kuliah">Kuliah</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect2">Waktu Tunggu Pekerjaan Pertama</label>
            <select class="form-control" id="status_pekerjaan" name="status_pekerjaan">
                <option value="Kurang dari 6 Bulan">Kurang dari 6 Bulan</option>
                <option value="Lebih dari 6 Bulan">Lebih dari 6 Bulan</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleInputNamaInstansi">Nama Instansi</label>
            <input type="text" class="form-control" id="nama_instansi" name="nama_instansi">
        </div>
        <div class="form-group">
            <label for="exampleInputAlamatInstansi">Alamat Instansi</label>
            <textarea class="form-control" id="alamat_instansi" name="alamat_instansi"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleInputBidangIlmu">Bidang Ilmu</label>
            <textarea class="form-control" id="bidang_ilmu" name="bidang_ilmu" placeholder="Apakah pekerjaan sekarang sesuai dengan bidang studi selama kuliah ?"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleInputIlmuDidapat">Pemanfaatan Ilmu</label>
            <textarea class="form-control" id="ilmu_didapat" name="ilmu_didapat" placeholder="Apakah ilmu yang didapat selama berkuliah dapat dimanfaatkan dalam bekerja ?"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleInputKritikSaran">Kritik & Saran</label>
            <textarea class="form-control" id="kritik_saran" name="kritik_saran" placeholder="Berikan kritik dan saran tentang jurusan dan juga beri komentar terkait kurikulum"></textarea>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->