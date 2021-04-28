    <div class="main-inner">

        <div class="container">

            <div class="row">

                <div class="span12">
                    <div class="row">
                        <div class="span6">

                            <div class="widget">

                                <div class="widget-header">
                                    <i class="icon-list-alt"></i>
                                    <h3>Form Jabatan</h3>
                                </div> <!-- /widget-header -->

                                <div class="widget-content">
                                    <div class="tab table">
                                        <br>

                                        <div class="tab-pane" id="formcontrols">
                                            <div id="edit-profile" class="form-horizontal">
                                                <fieldset>
                                                    <form action="<?= base_url('jabatan/save_jabatan') ?>" method="post">

                                                        <div class="control-group">
                                                            <?= $this->session->flashdata('message'); ?>
                                                            <?= validation_errors() ?>

                                                            <label class="control-label">Jabatan:</label>
                                                            <div class="controls">
                                                                <input type="text" id="jabatan" name="jabatan" value="" placeholder="Jabatan" />
                                                            </div> <!-- /field -->

                                                        </div> <!-- /login-fields -->

                                                        <div class="form-actions">
                                                            <button type="submit" class="button btn btn-primary btn-large">submit</button>
                                                        </div> <!-- .actions -->
                                                    </form>
                                                    <br />
                                                </fieldset>
                                            </div>

                                        </div>
                                    </div>
                                </div> <!-- /widget-content -->
                            </div> <!-- /widget -->
                        </div> <!-- /span6 -->

                        <div class="span6">
                            <div class="widget">
                                <div class="widget-header">
                                    <i class="icon-list-alt"></i>
                                    <h3>Data jabatan</h3>
                                </div> <!-- /widget-header -->

                                <div class="widget-content">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hovered">
                                            <tr>
                                                <th>No</th>
                                                <th>Jabatan</th>
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
                                </div> <!-- /widget-content -->
                            </div> <!-- /widget -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>