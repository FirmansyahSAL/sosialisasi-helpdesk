<div class="subnavbar">

    <div class="container">
        <div class="row">

            <div class="span12">

                <div class="widget ">
                    <div class="widget-header"> <i class="icon-th-list"></i>
                        <h3>Data Jabatan</h3>
                    </div>


                    <div class="widget-content">
                        <div class="span2">
                            <div class="tab-content">
                                <form id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">
                                            <?= $this->session->flashdata('message') ?>
                                            <?= validation_errors() ?>

                                            <div class="alert alert-info"> Data Berhasil disimpan </div>

                                            <form action="<?= base_url('jabatan/save_jabatan') ?>" method="post">

                                                <label class="control-label">Jabatan</label>
                                                <div class="controls">
                                                    <input type="text" name="jabatan" class="span4">
                                                </div> <!-- /controls -->
                                        </div> <!-- /control-group -->

                                        <br />

                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                            <button type="reset" class="btn btn-danger">Reset</button>
                                        </div> <!-- /form-actions -->
                                    </fieldset>
                                </form>
                            </div>



                        </div>
                        <p>&nbsp;</p>




                    </div>

                </div>
            </div>
        </div>
    </div>
</div>