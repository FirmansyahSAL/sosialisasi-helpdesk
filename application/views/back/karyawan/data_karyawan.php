<div class="subnavbar">

    <div class="container">
        <div class="row">

            <div class="span12">

                <div class="widget ">
                    <div class="widget-header"> <i class="icon-th-list"></i>
                        <h3>Data Karyawan</h3>
                    </div>


                    <div class="widget-content">
                        <div class="span11">
                            <a href="<?= base_url('karyawan/add_karyawan') ?>"><button type="button" class="btn btn-primary">Tambah Data</button></a>

                            <p>&nbsp;</p>
                            <?= $this->session->flashdata('message') ?>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hovered">
                                    <tr>
                                        <th>No</th>
                                        <th>Nik</th>
                                        <th>Nama Karyawan</th>
                                        <th>Email</th>
                                        <th>Status</th>
                                        <th>action</th>
                                    </tr>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        foreach ($karyawan as $row) { ?>
                                            <tr>
                                                <td><?= $no++ ?></td>
                                                <td><?= $row->nik ?></td>
                                                <td><?= $row->username ?></td>
                                                <td><?= $row->email ?></td>
                                                <td><?= $row->status_user ?></td>

                                                <td>
                                                    <a href="<?= base_url('karyawan/edit_karyawan/' . $row->id_users) ?>"><button type='button' class='btn btn-success'>Ubah</button></a>
                                                    <a href="<?= base_url('karyawan/delete_karyawan/' . $row->id_users) ?>"><button type='button' class='btn btn-danger' onclick="return confirm('Are you sure to delete?')">Hapus</button></a>
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