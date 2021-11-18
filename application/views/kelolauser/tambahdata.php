<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message'); ?>

        </div>

    </div>
    <form class="suratp" method="POST" action="<?= base_url('kelolauser/tambahdata'); ?>">
        <div class="form-group">
            <label for="exampleInputNIM">NIM</label>
            <input type="text" class="form-control" id="nim" name="nim">
            <?= form_error('nim', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputThnLulus">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama">
            <?= form_error('nama', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail">Email</label>
            <input type="text" class="form-control" id="email" name="email">
            <?= form_error('email', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputJurusan">Jurusan</label>
            <input type="text" class="form-control" id="jurusan" name="jurusan">
            <?= form_error('jurusan', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->