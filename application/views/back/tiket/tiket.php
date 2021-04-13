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
                                        <th>Deskripsi</th>
                                        <th>Status Tiket</th>
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
                                                <td><?= $row->deskripsi ?></td>
                                                <td>
                                                    <?php if ($row->status_tiket == 0) {
                                                        echo '<span class="badge badge-warning"> Waiting...</span>';
                                                    } else if ($row->status_tiket == '1') {
                                                        echo '<span class="badge badge-info"> Response...</span>';
                                                    } else if ($row->status_tiket == '2') {
                                                        echo '<span class="badge badge-success"> Process...</span>';
                                                    } else {
                                                        echo '<span class="badge badge-danger"> solved...</span>';
                                                    } ?>
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
                        <label>Keluhan</label>
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