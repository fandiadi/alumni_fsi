<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message'); ?>
        </div>

    </div>
    <form class="suratp" method="POST" action="<?= base_url('User/edit'); ?>">
        <div class="form-group">
            <label for="exampleInputNIM">NIM</label>
            <input type="number" class="form-control" id="nim" name="nim" readonly value="<?php echo $user1['nim']; ?>">
            <?= form_error('nim', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputThnLulus">Tahun Lulus</label>
            <input type="number" class="form-control" id="thn_lulus" name="thn_lulus" value="<?php echo $user1['thn_lulus']; ?>">
            <?= form_error('thn_lulus', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputIPK">IPK</label>
            <input type="text" class="form-control" id="ipk" name="ipk" value="<?php echo $user1['ipk']; ?>">
            <?= form_error('ipk', '<small class="text-danger pl-2">', '</small>'); ?>
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
            <label for="exampleFormControlSelect2">Status Pekerjaan</label>
            <select class="form-control" id="status_pekerjaan" name="status_pekerjaann" aria-placeholder="Kapan anda mulai bekerja setelah lulus ?">
                <option value="Kurang dari 6 Bulan">Kurang dari 6 Bulan</option>
                <option value="Lebih dari 6 Bulan">Lebih dari 6 Bulan</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleInputNamaInstansi">Nama Instansi</label>
            <input type="text" class="form-control" id="nama_instansi" name="nama_instansi" value="<?php echo $user1['nama_instansi']; ?>">
        </div>
        <div class="form-group">
            <label for="exampleInputAlamatInstansi">Alamat Instansi</label>
            <textarea class="form-control" id="alamat_instansi" name="alamat_instansi" value="<?php echo $user1['alamat_instansi']; ?>"></textarea>
        </div>
        <div class="form-group">
            <label for="exampleInputBidangIlmu">Bidang Ilmu</label>
            <input type="text" class="form-control" id="bidang_ilmu" name="bidang_ilmu" placeholder="Apakah pekerjaan sekarang sesuai dengan bidang studi selama kuliah ?" value="<?php echo $user1['bidang_ilmu']; ?>"></input>
        </div>
        <div class="form-group">
            <label for="exampleInputIlmuDidapat">Pemanfaatan Ilmu</label>
            <input type="text" class="form-control" id="ilmu_didapat" name="ilmu_didapat" placeholder="Apakah ilmu yang didapat selama berkuliah dapat dimanfaatkan dalam bekerja ?" value="<?php echo $user1['ilmu_didapat']; ?>"></input>
        </div>
        <div class="form-group">
            <label for="exampleInputKritikSaran">Kritik & Saran</label>
            <input type="text" class="form-control" id="kritik_saran" name="kritik_saran" placeholder="Berikan kritik dan saran tentang jurusan dan juga beri komentar terkait kurikulum" value="<?php echo $user1['kritik_saran']; ?>"></input>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->