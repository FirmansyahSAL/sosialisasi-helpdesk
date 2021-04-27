<div class="main-inner">
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="widget ">
                    <div class="widget-header">
                        <i class="icon-user"></i>
                        <h3>form edit data</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <div class="tab table">
                            <br>

                            <div class="tab-content">
                                <form id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">
                                            <?= $this->session->flashdata('message'); ?>
                                            <?= validation_errors() ?>
                                            <form action="<?= base_url('divisi/update_divisi') ?>" method="POST">
                                                <label class="control-label">Divisi</label>
                                                <div class="controls">
                                                    <input type="hidden" name="id_divisi" value="<?= $div->id_divisi ?>" class="span4">
                                                    <input type="text" name="divisi" value="<?= $div->divisi ?>" class="span4">
                                                </div> <!-- /controls -->
                                                <!-- /control-group -->

                                                <br />

                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-primary">Save</button>
                                                    <button type="reset" class="btn btn-danger">Reset</button>
                                                </div> <!-- /form-actions -->
                                            </form>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="span12">

                    <?php $this->load->view('back/divisi/data_divisi') ?>
                </div>
                <br>
            </div> <!-- /widget-content -->
        </div> <!-- /widget -->
    </div> <!-- /span8 -->
</div> <!-- /row -->
</div> <!-- /container -->
</div> <!-- /main-inner -->