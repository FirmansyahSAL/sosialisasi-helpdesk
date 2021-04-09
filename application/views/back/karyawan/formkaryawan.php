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

                            <div class="tab-content">
                                <form id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">

                                            <?= $this->session->flashdata('message') ?>
                                            <?= validation_errors() ?>
                                            <form action="<?= base_url('karyawan/save_karyawan') ?>" method="post">

                                                <label class="control-label">Nik</label>
                                                <div class="controls">
                                                    <input type="text" id="nik" name="nik" class="span4" placeholder="NIK">
                                                </div> <!-- /controls -->
                                                <br>
                                                <label class="control-label">Username</label>
                                                <div class="controls">
                                                    <input type="text" id="username" name="username" class="span4" placeholder="Username">
                                                </div>
                                                <br>
                                                <label class="control-label">Email</label>
                                                <div class="controls">
                                                    <input type="text" id="email" name="email" class="span4" placeholder="Email">
                                                </div>
                                                <br>
                                                <label class="control-label">Password</label>
                                                <div class="controls">
                                                    <input type="password" id="password" name="password" class="span4" placeholder="Password">
                                                </div>
                                                <br>
                                                <label class="control-label">Confirm Password</label>
                                                <div class="controls">
                                                    <input type="password" name="confirmpassword" class="span4" placeholder="Confirm Password">
                                                </div>
                                                <br>
                                                <label class="control-label">jabatan</label>
                                                <div class="controls">
                                                    <select name="jabatan_id" class="span4">
                                                        <option value="">---Pilih Jabatan---</option>
                                                        <?php foreach ($jabatan as $key => $row) { ?>

                                                            <option value="<?= $row->id_jabatan ?>">
                                                                <?= $row->jabatan ?>
                                                            </option>
                                                        <?php } ?>
                                                    </select>

                                                </div>
                                                <br>
                                                <label class="control-label">Divisi</label>
                                                <div class="controls">
                                                    <select name="divisi_id" class="span4">
                                                        <option value="">---Pilih Divisi---</option>
                                                        <?php foreach ($divisi as $key => $row) { ?>

                                                            <option value="<?= $row->id_divisi ?>">
                                                                <?= $row->divisi ?>
                                                            </option>
                                                        <?php } ?>
                                                    </select>


                                                </div>
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