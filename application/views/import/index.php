<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <a href="<?= ("index.php/Import/import"); ?>"> import Data Alumni</a> <br><br>
    <div class="row">
        <div class="col-lg-6">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Nim</th>
                        <th scope="col">Jurusan</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Email</th>

                    </tr>
                </thead>
                <?php
                foreach ($user1 as $data) {
                    echo "<tr>";
                    echo "<td>" . $data->nim . "</td>";
                    echo "<td>" . $data->jurusan . "</td>";
                    echo "<td>" . $data->nama . "</td>";
                    echo "<td>" . $data->email . "</td>";
                    echo "<tr>";
                }
                ?>
            </table>
        </div>

    </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->