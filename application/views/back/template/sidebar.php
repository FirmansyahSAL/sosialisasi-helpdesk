<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li class="active"><a href="<?= base_url() ?>dashboard"><i class="icon-dashboard"></i><span>Dashboard</span> </a> </li>
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-folder-close"></i><span>Data Master</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<?= base_url('jabatan') ?>">Data Jabatan</a></li>
            <li><a href="<?= base_url('divisi') ?>">Data Divisi</a></li>
            <li><a href="<?= base_url('karyawan') ?>">Data Karyawan</a></li>
          </ul>
        </li>
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-credit-card"></i><span>Master Ticket</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<?= base_url('tiket') ?>">Data Ticket</a></li>
          </ul>
        </li>
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-list-alt"></i><span>Laporan Ticket</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="<?= base_url('laporan') ?>">Laporan</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>