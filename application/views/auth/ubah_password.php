<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <?= $this->session->flashdata('message'); ?>
    <form class="suratp" method="POST" action="<?= base_url('Myprofile/ubahpassword'); ?>">
        <div class="form-group">
            <label for="exampleInputNIM" hidden>NIM</label>
            <input type="text" hidden class="form-control" id="nim" name="nim" readonly value="<?php echo $user['nim']; ?>">

        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">New Password</label>
            <input type="text" class="form-control" id="password1" name="password1">
            <?= form_error('password1', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword2">Retry New Password</label>
            <input type="text" class="form-control" id="password2" name="password2">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->