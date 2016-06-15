<?php
$this->session->select_menu = "demonstration";
include('header.php');
include('menu_admin.php');
?>
<div class="bg">
<div class='container'>
  <?php $this->Admin_model->edit_item_demonstration(); ?>
</div>

<?php include('footer.php'); ?>
