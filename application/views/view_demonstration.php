<?php
$this->session->select_menu = "demonstration";
include('header.php');
include('menu.php');
?>
<div class="bg">
<div class="container">
<div class="col-md-7 form-group">
<?php $this->Main_model->fetch_view_img_demonstration($this->input->get('id')); ?>
</div>
<div class="col-md-5 form-group">
<div class="col-md-12" style="background-color: #000; color: #fff;">
<br />
<?php $this->Main_model->fetch_view_title_demonstraion($this->input->get('id')); ?>
<br />
<br />
</div>
<div class="col-md-12">
<br />
<?php $this->Main_model->fetch_view_detail_demonstration($this->input->get('id')); ?>
</div>
</div>
</div>

<?php include('footer.php'); ?>
