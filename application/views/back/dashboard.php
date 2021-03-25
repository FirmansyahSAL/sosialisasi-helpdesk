<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Dashboard - Bootstrap Admin Template</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <link href="<?= base_url() ?>assets/back/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/back/css/bootstrap-responsive.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/back/http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
  <link href="<?= base_url() ?>assets/back/css/font-awesome.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/back/css/style.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/back/css/pages/dashboard.css" rel="stylesheet">


  <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<body>
  <!-- /subnavbar -->
  <div class="main">
    <div class="main-inner">
      <div class="container">
        <div class="row">
          <div class="span6">
            <div class="widget widget-nopad">

              <div class="widget-header"> <i class="icon-list-alt"></i>
                <h3> Statistik </h3>
              </div>
              <!-- /widget-header -->
              <div class="widget-content">
                <div class="widget big-stats-container">
                  <div class="widget-content">
                    <h6 class="bigstats">Dashboard <?= $this->session->username; ?></h6>

                    <div id="big_stats" class="cf">
                      <div class="stat"> <i class="icon-user"></i> <span class="value">851</span> </div>
                      <!-- .stat -->

                      <div class="stat"> <i class="icon-thumbs-up-alt"></i> <span class="value">423</span> </div>
                      <!-- .stat -->

                      <div class="stat"> <i class="icon-twitter-sign"></i> <span class="value">922</span> </div>
                      <!-- .stat -->

                      <div class="stat"> <i class="icon-bullhorn"></i> <span class="value">25%</span> </div>
                      <!-- .stat -->
                    </div>
                  </div>
                  <!-- /widget-content -->

                </div>
              </div>
            </div>
            <!-- /widget -->
          </div>
          <!-- /span6 -->
          <!-- /widget -->
          <div class="row">
            <div class="span6">
              <div class="widget">
                <div class="widget-header"> <i class="icon-signal"></i>
                  <h3> Area Chart Example</h3>
                </div>
                <!-- /widget-header -->
                <div class="widget-content">
                  <canvas id="area-chart" class="chart-holder" height="250" width="538"> </canvas>
                  <!-- /area-chart -->
                </div>
                <!-- /widget-content -->
              </div>
              <!-- /widget -->
            </div>
            <!-- /span6 -->
          </div>
          <!-- /row -->
        </div>
        <!-- /container -->
      </div>
      <!-- /main-inner -->
    </div>
</body>

</html>