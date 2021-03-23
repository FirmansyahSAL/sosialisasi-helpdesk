<?php $this->load->view('back/template/meta');?>
<div class="main">
    <?php $this->load->view('back/template/header');?>
    <?php $this->load->view('back/template/sidebar');?>
    <?php echo $contents; ?>
    <?php $this->load->view('back/template/footer');?>
</div>
<?php $this->load->view('back/template/script');?>