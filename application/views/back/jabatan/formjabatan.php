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

                        <div class="tabbable">
                            <br>

                            <div class="tab-content">
                                <form id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">
                                            <form action="<?= base_url('jabatan/simpan_jabatan') ?>" method="post">
                                                <label class="control-label">Jabatan</label>
                                                <div class="controls">
                                                    <input type="text" class="span4" id="jabatan" name="jabatan">
                                                </div> <!-- /controls -->
                                        </div> <!-- /control-group -->

                                        <br />

                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                            <button class="btn">Cancel</button>
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