<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
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
                    <?php $count = 1;
                    foreach ($user1 as $row) : ?>
                        <tr>
                            <td><?= $row['nim']; ?></td>
                            <td><?= $row['nama']; ?></td>
                            <td><?= $row['email']; ?></td>
                            <td><?= $row['jurusan']; ?></td>
                            <td>
                                <a href="<?= site_url('Myprofile/editprofile/' . $row['nim']) ?>" class="btn btn-primary" style="font-size: small; padding: 5px;">edit</a>
                                <button type="button" class="btn btn-danger" action="<?php echo base_url() ?>index.php/KelolaUser/hapususer" style="font-size: small; padding: 5px;">hapus</button>
                            </td>
                        </tr>
                        <?php $count = $count + 1; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->