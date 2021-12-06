<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message');
            ?>
        </div>
    </div>

    <div class="h6 container" style="margin-left: 5px; word-spacing: normal; padding: 1px;">
        <form class="suratp" method="POST" action="<?= base_url('user/tambahdata'); ?>">
            <div class="form-group">
                <label for="exampleInputNIM">NIM</label>
                <input type="number" class="form-control form-control-sm" id="nim" name="nim" readonly value="<?php echo $user['nim']; ?>">
                <?= form_error('nim', '<small class="text-danger pl-2">', '</small>'); ?>
            </div>

            <div class="form-group">
                <label for="exampleFormControlSelect1">Status Alumni</label>
                <select class="form-control form-control-sm" id="status_alumni" name="status_alumni">
                    <option value="Bekerja">Bekerja</option>
                    <option value="Belum / Tidak Bekerja">Belum / Tidak Bekerja</option>
                    <option value="Bekerja sambil Kuliah">Bekerja sambil Kuliah</option>
                    <option value="Kuliah">Kuliah</option>
                </select>
            </div>
            <div class="form-inline">
                <label for="exampleInputNamaThnKerja">Tahun Kerja : </label>
                <input type="number" class="form-control form-control-sm" id="thn_kerja" name="thn_kerja" placeholder="2021">
                <pre>  </pre>
                <label for="exampleInputNamaBlnKerja">Bulan Kerja : </label>
                <input type="number" class="form-control form-control-sm" id="bln_kerja" name="bln_kerja" placeholder="8">
            </div><br>
            <div class="form-group">
                <label for="exampleInputNamaInstansi">Nama Instansi</label>
                <input type="text" class="form-control form-control-sm" id="nama_instansi" name="nama_instansi">
            </div>
            <div class="form-group">
                <label for="exampleInputAlamatInstansi">Alamat Instansi</label>
                <textarea class="form-control form-control-sm" id="alamat_instansi" name="alamat_instansi"></textarea>
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">Bidang Ilmu</label><br>
                <label for="" style="font-size: small;">Apakah pekerjaan sekarang sesuai dengan bidang studi selama kuliah ?</label>
                <select class="form-control form-control-sm" id="bidang_ilmu" name="bidang_ilmu">
                    <option value="Sesuai">Sesuai</option>
                    <option value="Tidak Sesuai">Tidak Sesuai</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">Pemanfaatan Ilmu</label><br>
                <label for="" style="font-size: small;">Apakah ilmu yang didapat selama berkuliah dapat dimanfaatkan dalam bekerja ?</label>
                <select class="form-control form-control-sm" id="ilmu_didapat" name="ilmu_didapat">
                    <option value="Ya">Ya</option>
                    <option value="Tidak">Tidak</option>
                </select>
            </div>

            <div class="form-group">
                <label for="exampleFormControlSelect2">Waktu Tunggu Pekerjaan Pertama</label>
                <select class="form-control form-control-sm" id="status_pekerjaan" name="status_pekerjaan">
                    <option value="Kurang dari 6 Bulan">Kurang dari 6 Bulan</option>
                    <option value="Lebih dari 6 Bulan">Lebih dari 6 Bulan</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleInputKritikSaran">Kritik & Saran</label>
                <textarea class="form-control form-control-sm" id="kritik_saran" name="kritik_saran" placeholder="Berikan kritik dan saran tentang jurusan dan juga beri komentar terkait kurikulum"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->