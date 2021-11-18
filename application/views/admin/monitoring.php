<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="container-fluid" style="margin: auto; font-size: small; padding: 7px; ">
        <div class="content">
            <table id="myTable2" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>NIM</th>
                        <th>Nama Lengkap</th>
                        <th>Jurusan</th>
                        <th>IPK</th>
                        <th>Tahun Lulus</th>
                        <th>Status Alumni</th>
                        <th>Bulan/Tahun Kerja</th>
                        <th>Nama Instansi</th>
                        <th>Alamat Instansi</th>
                        <th>Bidang Ilmu</th>
                        <th>Pemanfaatan Ilmu</th>
                        <th>Waktu Tunggu Pekerjaan</th>
                        <th>Kritik dan Saran</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $count = 0;
                    foreach ($user1 as $u) : ?>
                        <tr>
                            <td><?= $u['nim'] ?></td>
                            <td><?= $u['nama'] ?></td>
                            <td><?= $u['jurusan'] ?></td>
                            <td><?= $u['ipk'] ?></td>
                            <td><?= $u['thn_lulus'] ?></td>
                            <td><?= $u['status_alumni'] ?></td>
                            <td><?= $u['bln_kerja'] ?>/<?= $u['thn_kerja'] ?></td>
                            <td><?= $u['nama_instansi'] ?></td>
                            <td><?= $u['alamat_instansi'] ?></td>
                            <td><?= $u['bidang_ilmu'] ?></td>
                            <td><?= $u['ilmu_didapat'] ?></td>
                            <td><?= $u['status_pekerjaan'] ?></td>
                            <td><?= $u['kritik_saran'] ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->