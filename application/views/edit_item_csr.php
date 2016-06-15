<?php
$this->session->select_menu = "csr";
include('header.php');
include('menu_admin.php');
?>
<div class="bg">
<div class='container'>
  <?php $this->Admin_model->edit_item_csr(); ?>
</div>

<?php include('footer.php'); ?>
