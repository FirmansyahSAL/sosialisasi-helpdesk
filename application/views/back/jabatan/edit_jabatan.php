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
                                <div id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">
                                            <?= validation_errors() ?>
                                            <form action="<?= base_url('jabatan/update_jabatan') ?>" method="POST">
                                                <label class="control-label">Jabatan</label>
                                                <div class="controls">
                                                    <input type="hidden" name="id_jabatan" value="<?= $jbt->id_jabatan ?>" class="span4">
                                                    <input type="text" name="jabatan" value="<?= $jbt->jabatan ?>" class="span4">
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
                        </div>
                        <br>
                    </div> <!-- /widget-content -->
                </div> <!-- /widget -->
            </div> <!-- /span8 -->
        </div> <!-- /row -->
    </div> <!-- /container -->
</div> <!-- /main-inner -->