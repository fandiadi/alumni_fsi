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
                        <th>Select</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $count = 0;
                    foreach ($user1 as $u) : ?>
                        <?php $count = $count + 1; ?>
                        <tr>
                            <td><?= $u['nim'] ?></td>
                            <td><?= $u['nama'] ?></td>
                            <td><?= $u['email'] ?></td>
                            <td><?= $u['jurusan'] ?></td>
                            <td><?= date('d F Y', $u['date_created']); ?></td>
                            <th><?= $u['status_email'] ?></th>
                            <td><input type="checkbox" name="single_select" class="single_select" data-nim="<?= $u['nim']; ?>" data-name="<?= $u['nama'] ?>" data-email="<?= $u['email']; ?>" /></td>
                            <td><button type="button" name="email_button" class="btn btn-info btn-xs email_button" id="<?= $count ?>" data-nim="<?= $u['nim']; ?>" data-name="<?= $u['nama'] ?>" data-email="<?= $u['email']; ?>" data-action="single" style="font-size: small; padding: 5px;">Send Single</button></td>
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
                        <th></th>
                        <th><button type="button" name="bulk_email" class="btn btn-info email_button" id="bulk_email" data-action="bulk">Send Bulk</button></th>
                    </tr>
                </tfoot>
            </table>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
<script>
    $(document).ready(function() {
        $('.email_button').click(function() {
            $(this).attr('disabled', 'disabled');
            var id = $(this).attr("id");
            var action = $(this).data("action");
            var email_data = [];
            if (action == 'single') {
                email_data.push({
                    nim: $(this).data("nim"),
                    nama: $(this).data("nama"),
                    email: $(this).data("email")
                });
            } else {
                $('.single_select').each(function() {
                    if ($(this).prop("checked") == true) {
                        email_data.push({
                            nim: $(this).data("nim"),
                            nama: $(this).data('nama'),
                            email: $(this).data("email")
                        });
                    }
                });
            }

            $.ajax({
                url: "<?php echo base_url() ?>index.php/email/kirimemail",
                method: "POST",
                data: {
                    email_data: email_data
                },
                beforeSend: function() {
                    $('#' + id).html('Mengirim...');
                    $('#' + id).addClass('btn-danger');
                },
                success: function(data) {
                    if (data !== 'ok') {
                        $('#' + id).text('Terkirim');
                        $('#' + id).removeClass('btn-danger');
                        $('#' + id).removeClass('btn-info');
                        $('#' + id).addClass('btn-success');
                    } else {
                        $('#' + id).text("Gagal");
                        //$('#' + id).text(data);
                    }
                    $('#' + id).attr('disabled', false);
                }
            })

        });
    });
</script>