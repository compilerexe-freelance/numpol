<?php
$this->session->select_menu = "product";
include('header.php');
include('menu_admin.php');
?>
<div class="bg">
<div class='container'>
  <?php $this->Admin_model->edit_item_product(); ?>
</div>

<?php include('footer.php'); ?>
