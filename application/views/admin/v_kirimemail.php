<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="container-fluid" style="margin: auto; font-size: small;">
        <div class="content">
            <table id="myTable" class="table table-striped table-bordered nowrap" style="width:100%">
                <thead>
                    <tr>
                        <th>NIM</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Jurusan</th>
                        <th>Data ditambahkan</th>
                        <th>Status Email</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $count = 0;
                    foreach ($user1 as $u) : ?>
                        <tr>
                            <td><?= $u['nim'] ?></td>
                            <td><?= $u['nama'] ?></td>
                            <td><?= $u['email'] ?></td>
                            <td><?= $u['jurusan'] ?></td>
                            <td><?= date('d F Y', $u['date_created']); ?></td>
                            <th><?= $u['status_email'] ?></th>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>NIM</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Jurusan</th>
                        <th>Data ditambahkan</th>
                        <th>Status Email</th>
                    </tr>
                </tfoot>
            </table>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->