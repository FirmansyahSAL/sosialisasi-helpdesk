<div class="subnavbar">

    <div class="container">
        <div class="row">

            <div class="span12">

                <div class="widget ">
                    <div class="widget-header"> <i class="icon-th-list"></i>
                        <h3>Data Jabatan</h3>
                    </div>


                    <div class="widget-content">
                        <div class="span5">

                            <a href="<?= base_url('jabatan/add_jabatan') ?>"><button type="button" class="btn btn-primary">Tambah Data</button></a>

                            <p>&nbsp;</p>

                            <div class="table-responsive">
                                <table class="table table-bordered table-hovered">
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Jabatan</th>
                                        <th>action</th>
                                    </tr>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        foreach ($jabatan as $row) { ?>
                                            <tr>
                                                <td><?= $no++ ?></td>
                                                <td><?= $row->jabatan ?></td>
                                                <td>
                                                    <a href="<?= base_url('jabatan/edit_jabatan/' . $row->id_jabatan) ?>"><button type='button' class='btn btn-success'>Ubah</button></a>
                                                    <a href="<?= base_url('jabatan/delete_jabatan/' . $row->id_jabatan) ?>"><button type='button' class='btn btn-danger' onclick="return confirm('Are you sure to delete?')">Hapus</button></a>
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