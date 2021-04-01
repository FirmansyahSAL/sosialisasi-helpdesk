<div class="subnavbar">

  <div class="container">
    <div class="row">

      <div class="span12">

        <div class="widget ">
          <div class="widget-header"> <i class="icon-th-list"></i></div>

          <div class="widget-content">

            <div class="span5">
              <div class="widget widget-nopad">
                <div class="widget-header"> <i class="icon-list-alt"></i>
                  <h3>Statistik</h3>
                </div>
                <!-- /widget-header -->
                <div class="widget-content">
                  <div class="widget big-stats-container">

                    <h6 class="bigstats">Selamat Datang <?= $this->session->username; ?></h6>
                    <div id="big_stats" class="cf">
                      <div class="stat"> <i class="icon-anchor"></i> <span class="value">851</span> </div>
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

            <div class="span6">
              <div class="widget-header"> <i class="icon-signal"></i>
                <h3>Grafik</h3>
              </div>
              <!-- /widget-header -->
              <div class="widget-content">
                <canvas id="area-chart" class="chart-holder" height="250" width="530"> </canvas>
              </div>
            </div>
          </div>
          <p>&nbsp;</p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>