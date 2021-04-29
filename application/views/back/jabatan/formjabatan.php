<div class="main-inner">
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="widget ">
                    <div class="widget-header">
                        <i class="icon-user"></i>
                        <h3>form tambah data</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">
                        <div class="tab table">
                            <br>

                            <div class="tab-pane" id="formcontrols">
                                <div id="edit-profile" class="form-horizontal">
                                    <fieldset>



                                        <?= validation_errors() ?>

                                        <form action="<?= base_url('jabatan/save_jabatan') ?>" method="post">
                                            <div class="control-group">

                                                <label class="control-label">Jabatan</label>
                                                <div class="controls">
                                                    <input type="text" name="jabatan" class="span4" placeholder="Jabatan">
                                                </div> <!-- /controls -->
                                                <br>

                                            </div>

                                            <div class="form-actions">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                <button type="reset" class="btn btn-danger">Reset</button>
                                            </div> <!-- /form-actions -->
                                        </form>
                                </div> <!-- /control-group -->
                                <br />

                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <br>
                </div> <!-- /widget-content -->
            </div> <!-- /widget -->
        </div> <!-- /span12 -->
    </div> <!-- /row -->
</div> <!-- /container -->
</div> <!-- /main-inner -->