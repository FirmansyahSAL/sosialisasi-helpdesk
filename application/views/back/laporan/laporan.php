<div class="main-inner">
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="widget ">
                    <div class="widget-header">
                        <i class="icon-user"></i>
                        <h3>Filter Laporan</h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">

                        <div class="tab table">
                            <br>

                            <div class="tab-content">
                                <form id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">
                                            <form action="<?= base_url('laporan/print_laporan') ?>" method="post" target="_blank">
                                                <label class="control-label">Tanggal Awal</label>
                                                <div class="controls">
                                                    <input type="date" name="tgl_awal" id="tgl_awal" value="<?= date('Y-m-d')?>" class="span4">
                                                </div> <!-- /controls -->
                                                <br>
                                                <label class="control-label">Tanggal Akhir</label>
                                                <div class="controls">
                                                    <input type="date" name="tgl_akhir" id="tgl_akhir" value="<?= date('Y-m-d')?>" class="span4">
                                                </div>
                                        </div> <!-- /control-group -->

                                        <br />

                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Print</button>
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