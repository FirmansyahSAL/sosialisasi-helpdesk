    <?php $this->load->view('back/template/meta'); ?>

    <?php $this->load->view('back/template/header'); ?>
    <?php $this->load->view('back/template/sidebar'); ?>
    <?php echo $contents; ?>
    <?php $this->load->view('back/template/footer'); ?>


    <script src="<?= base_url() ?>assets/back/js/jquery-1.7.2.min.js"></script>

    <?php $this->load->view('back/template/script'); ?>