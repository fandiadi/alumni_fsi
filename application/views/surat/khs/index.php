<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">NIM</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>

            </tr>
        </thead>
        <tbody>
            <?php
            $n = $user['nim'];
            if ($user['nim']) {
            }

            ?>
            <tr>
                <th scope="row"></th>
                <td><?= $user['nim']; ?></td>
                <td></td>
                <td><a class="btn btn-primary" href="<?= base_url() . 'assets/khs/' . $n . '.pdf'; ?>" role="button">Download</a></td>
            </tr>
        </tbody>
    </table>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->