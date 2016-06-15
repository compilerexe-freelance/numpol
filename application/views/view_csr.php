<?php
$this->session->select_menu = "csr";
include('header.php');
include('menu.php');
?>
<div class="bg">
<div class="container">
<div class="col-md-7 form-group">
<?php $this->Main_model->fetch_view_img_csr($this->input->get('id')); ?>
</div>
<div class="col-md-5 form-group">
<div class="col-md-12" style="background-color: #000; color: #fff;">
<br />
<?php $this->Main_model->fetch_view_title_csr($this->input->get('id')); ?>
<br />
<br />
</div>
<div class="col-md-12">
<br />
<?php $this->Main_model->fetch_view_detail_csr($this->input->get('id')); ?>
</div>
</div>
</div>

<?php include('footer.php'); ?>
