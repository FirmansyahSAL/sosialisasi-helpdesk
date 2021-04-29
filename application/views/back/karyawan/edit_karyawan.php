<div class="main-inner">
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="widget ">
                    <div class="widget-header">
                        <i class="icon-user"></i>
                        <h3>edit Karyawan <?= $users->username ?></h3>
                    </div> <!-- /widget-header -->

                    <div class="widget-content">
                        <div class="tab table">
                            <br>

                            <div class="tab-content">
                                <div id="edit-profile" class="form-horizontal">
                                    <fieldset>

                                        <div class="control-group">
                                            <form action="<?= base_url('karyawan/update_karyawan') ?>" method="POST">

                                                <label class="control-label">Nik</label>
                                                <div class="controls">
                                                    <input type="hidden" name="id_users" value="<?= $users->id_users ?>" class="span4" class="form-control" placeholder="Nik">
                                                    <input type="text" name="nik" value="<?= $users->nik ?>" class="span4" class="form-control" placeholder="Nik">
                                                </div> <!-- /controls -->
                                                <br>

                                                <label class="control-label">Username</label>
                                                <div class="controls">
                                                    <input type="text" name="username" value="<?= $users->username ?>" class="span4" class="form-control">
                                                </div>
                                                <br>

                                                <label class="control-label">Email</label>
                                                <div class="controls">
                                                    <input type="text" name="email" value="<?= $users->email ?>" class="span4" class="form-control">
                                                </div>
                                                <br>


                                                <label class="control-label">jabatan</label>
                                                <div class="controls">
                                                    <select name="jabatan_id" class="span4">
                                                        <option value="">---Pilih Jabatan---</option>
                                                        <?php foreach ($jabatan as $key => $row) { ?>

                                                            <option value="<?= $row->id_jabatan ?>" <?= $row->id_jabatan == $users->jabatan_id ? 'selected' : null ?>>
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

                                                            <option value="<?= $row->id_divisi ?>" <?= $row->id_divisi == $users->divisi_id ? 'selected' : null ?>>
                                                                <?= $row->divisi ?>
                                                            </option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <br>

                                                <label class="control-label">Status User</label>
                                                <div class="controls">
                                                    <select name="status_user" class="span4">
                                                        <option value="">Status User</option>
                                                        <option value="1" <?= $users->status_user == '1' ? 'selected' : '' ?>>Active</option>
                                                        <option value="0" <?= $users->status_user == '0' ? 'selected' : '' ?>>Non Active</option>
                                                    </select>
                                                </div>
                                                <br>

                                                <label class="control-label">Level User</label>
                                                <div class="controls">
                                                    <select name="level_user" class="span4">
                                                        <option value="">Level User</option>
                                                        <option value="1" <?= $users->level_user == '1' ? 'selected' : '' ?>>IT</option>
                                                        <option value="2" <?= $users->level_user == '2' ? 'selected' : '' ?>>Staff</option>
                                                    </select>
                                                </div>
                                                <br>

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