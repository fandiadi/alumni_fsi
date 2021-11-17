<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <a class="btn btn-primary" href="<?= base_url('Import/import'); ?>" role="button">Import Data Alumni</a><br><br>
    <div class="container-fluid" style="margin: auto; font-size: small;">
        <div class="content">
            <table class="table table-striped table-bordered nowrap" id="myTable" style="width:100%">
                <thead>
                    <tr>
                        <th>Nim</th>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Jurusan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $count = 1;
                    foreach ($user as $d) ?>

                    <th> <?= $d->nama; ?></th>
                    <th> </th>
                    <th> </th>
                    <th> </th>

                    </tr>

                </tbody>
            </table>
        </div>
    </div>


</div>
<!-- /.container-fluid -->


<!-- End of Main Content -->