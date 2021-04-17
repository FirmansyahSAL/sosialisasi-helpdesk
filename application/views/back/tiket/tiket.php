<div class="subnavbar">

    <div class="container">
        <div class="row">

            <div class="span12">

                <div class="widget ">
                    <div class="widget-header"> <i class="icon-th-list"></i>
                        <h3>Data Tiket</h3>
                    </div>


                    <div class="widget-content">
                        <div class="span11">
                            <a href="<?= base_url('tiket/add_tiket') ?>"><button type="button" data-toggle="modal" data-target="#form_tiket" class="btn btn-primary">Tambah Data</button></a>

                            <p>&nbsp;</p>

                            <div class="table-responsive">
                                <table class="table table-bordered table-hovered">
                                    <tr>
                                        <th>No</th>
                                        <th>No tiket</th>
                                        <th>Judul Tiket</th>
                                        <th>Status Tiket</th>
                                        <th>Konfirmasi</th>
                                        <th>action</th>
                                    </tr>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        foreach ($tiket as $row) { ?>
                                            <tr>
                                                <td><?= $no++ ?></td>
                                                <td><?= $row->no_tiket ?></td>
                                                <td><?= $row->judul_tiket ?></td>
                                                <td>
                                                    <?php if ($row->status_tiket == '0') {
                                                        echo '<span class="badge badge-warning"> Waiting...</span>';
                                                    } else if ($row->status_tiket == '1') {
                                                        echo '<span class="badge badge-info"> Response...</span>';
                                                    } else if ($row->status_tiket == '2') {
                                                        echo '<span class="badge badge-success"> Process...</span>';
                                                    } else {
                                                        echo '<span class="badge badge-danger"> solved...</span>';
                                                    }
                                                    ?>
                                                </td>
                                                <td>
                                                    <?php
                                                    if ($row->status_tiket == '0') {
                                                        echo '<a href= "javascript:void(0);" data-toggle="modal" data-target="#modal-tiket" id="select_tiket" 
                                                    data-id_tiket="' . $row->id_tiket . '"
                                                    data-status_tiket="' . $row->status_tiket . '"
                                                    class="btn btn-success">
                                                    Confirm 
                                                </a>';
                                                    }
                                                    ?>
                                                </td>
                                                <td>
                                                    <a href="<?= base_url('tiket/detail_tiket/' . $row->no_tiket) ?>"><button type='button' class='btn btn-info'>Detail</button></a>
                                                    <a href="<?= base_url('tiket/delete_tiket/' . $row->id_tiket) ?>"><button type='button' class='btn btn-danger' onclick="return confirm('Are you sure to delete?')">Hapus</button></a>
                                                </td>
                                            </tr>
                                        <?php } ?>

                                    </tbody>
                                </table>
                                <p class='paging' align='center'> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="form_tiket">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                Form Tambah Tiket <aria-label="Close" button class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>

            </div>
            <div class="modal-body">
                <form action="<?= base_url('tiket/save_tiket') ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" name="no_tiket" value="<?= $no_tiket ?>" class="form-control"><label>Keluhan</label>
                        <input type="text" name="judul_tiket" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>keterangan</label>
                        <textarea name="deskripsi" class="form-control">
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label>Gambar</label><br>
                        <input type="file" name="gambar_tiket">
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-danger">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modal-tiket">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                Yakin Konfirmasi Tiket ini
                <aria-label="Close" button class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
            </div>
            <div class="modal-body">
                <form action="<?= base_url('tiket/save_tiket_waiting') ?>" method="POST" enctype="multipart/form-data">

                    <input type="hidden" name="id_tiket" id="id_tiket" class="form-control">
                    <br>
                    <input type="hidden" name="status_tiket" value="1" class="form-control">

                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-danger">Reset</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $(document).on('click', '#select_tiket', function() {
            var id_tiket = $(this).data('id_tiket')
            var status_tiket = $(this).data('status_tiket')

            $('#id_tiket').val(id_tiket)
            $('#status_tiket').val(status_tiket)
        })
    })
</script>