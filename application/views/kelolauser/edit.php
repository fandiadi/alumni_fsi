<!--Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message'); ?>
        </div>

        <?php foreach ($user1->result() as $data) {
            $nim = $data->nim;
            $nama = $data->nama;
            $email = $data->email;
            $jurusan = $data->jurusan;
            $status_email = $data->status_email;
        } ?>
    </div>
    <form class="suratp" method="POST" action="<?= base_url('kelolauser/edit'); ?>">
        <div class="form-group">
            <label for="exampleInputNIM">NIM</label>
            <input type="text" class="form-control" id="nim" name="nim" readonly value="<?php echo $nim; ?>">
            <?= form_error('nim', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputThnLulus">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" required value="<?php echo $nama; ?>">
            <?= form_error('nama', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail">Email</label>
            <input type="text" class="form-control" id="email" name="email" required value="<?php echo $email; ?>">
            <?= form_error('email', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        
        <div class="form-group">
                <label for="exampleFormControlSelect1">Jurusan</label>
                <select class="op form-control form-control-sm" id="jurusan" name="jurusan">
                    <?php $option = array('Informatika', 'Kimia');
                    foreach ($option as $op) {
                        $selected = $jurusan == $op ? ' selected="selected"' : '';
                        echo '<option value="' . $op . '"' . $selected . '>' . $op . '</option>';
                    } ?>
                </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Status Alumni</label>
            <select class="op form-control form-control-sm" id="status_email" name="status_email">
                <?php $option = array('Terkirim', 'Belum', 'Gagal');
                foreach ($option as $op) {
                    $selected = $status_email == $op ? ' selected="selected"' : '';
                    echo '<option value="' . $op . '"' . $selected . '>' . $op . '</option>';
                } ?>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content