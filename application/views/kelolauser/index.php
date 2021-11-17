<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="col-lg-6">
        <?= $this->session->flashdata('message'); ?>
    </div>
    <a class="btn btn-primary" href="<?= base_url('kelolauser/tambahdata'); ?>" role="button">Tambah Data</a><br><br>
    <div class="container-fluid" style="margin: auto; font-size: small;">

        <div class="content">
            <table class="table table-striped table-bordered nowrap" id="myTable" style="width:100%">
                <thead>
                    <tr>
                        <th>Nim</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Jurusan</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($user1 as $data) : ?>
                        <tr>
                            <td><?= $data->nim ?></td>
                            <td><?= $data->nama ?></td>
                            <td><?= $data->email ?></td>
                            <td><?= $data->jurusan ?></td>

                            <td class="actions">
                                <a href="<?php echo base_url(); ?>kelolauser/edit/<?php echo $data->nim; ?>" class="btn btn-info btn-xs">Edit</a>
                                <a href="javascript:if(confirm('Anda yakin ingin menghapus ?'))
                            {document.location='<?php echo base_url(); ?>kelolauser/hapus/<?php echo $data->nim; ?>';}" class="btn btn-danger btn-xs">Hapus</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>


                </tbody>
            </table>
        </div>
    </div>


</div>
<!-- /.container-fluid -->


<!-- End of Main Content -->