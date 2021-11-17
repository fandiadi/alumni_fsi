<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <form class="suratp" method="POST" action="<?= base_url('Myprofile/editprofile'); ?>">
        <div class="form-group">
            <label for="exampleInputNIM">NIM</label>
            <input type="number" class="form-control" id="nim" name="nim" readonly value="<?php echo $user['nim']; ?>">
        </div>
        <div class="form-group">
            <label for="exampleInputNama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $user['nama']; ?>">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail">Email</label>
            <input type="text" class="form-control" id="email" name="email" value="<?php echo $user['email']; ?>">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="password1" placeholder="Password" name="password1">
            <?= form_error('password1', '<small class="text-danger pl-2">', '</small>'); ?>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword2">Ulangi Password</label>
            <input type="password" class="form-control" id="password2" placeholder="Ulangi Password" name="password2">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->