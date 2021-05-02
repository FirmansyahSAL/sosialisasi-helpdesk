<div class="subnavbar">

    <div class="container">
        <div class="row">

            <div class="span12">

                <div class="widget ">
                    <div class="widget-header"> <i class="icon-th-list"></i>
                        <h3>Data Divisi</h3>
                    </div>



                    <div class="widget-content">
                        <div class="span11">
                            <a href="<?= base_url('divisi/add_divisi') ?>"><button type="button" class="btn btn-primary">Tambah Data</button></a>
                            <div class="control-group">
                                <?= $this->session->flashdata('message'); ?>


                                <p>&nbsp;</p>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hovered">
                                        <tr>
                                            <th>No</th>
                                            <th>Nama Divisi</th>
                                            <th>action</th>
                                        </tr>
                                        <tbody>
                                            <?php
                                            $no = 1;
                                            foreach ($divisi as $row) { ?>
                                                <tr>
                                                    <td><?= $no++ ?></td>
                                                    <td><?= $row->divisi ?></td>
                                                    <td>
                                                        <a href="<?= base_url('divisi/edit_divisi/' . $row->id_divisi) ?>"><button type='button' class='btn btn-success'>Ubah</button></a>
                                                        <a href="<?= base_url('divisi/delete_divisi/' . $row->id_divisi) ?>"><button type='button' class='btn btn-danger' onclick="return confirm('Are you sure to delete?')">Hapus</button></a>
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