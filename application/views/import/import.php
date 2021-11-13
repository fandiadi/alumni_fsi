<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="container-fluid" style="margin: auto; font-size: small;">
        <div class="content">
            <?php echo $this->session->flashdata('notif') ?>
            <form method="POST" action="<?php echo base_url() ?>index.php/import/upload" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="exampleInputEmail1">UNGGAH FILE EXCEL</label>
                    <input type="file" name="userfile" class="form-control">
                </div>

                <button type="submit" class="btn btn-success">UPLOAD</button>
            </form>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->