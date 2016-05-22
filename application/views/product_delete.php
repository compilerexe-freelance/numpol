<?php
$this->session->select_menu = "product";
include('header.php');
include('menu_admin.php');
?>

<div class="container">
  <div class="table table-responsive">
    <table class="table table-bordered table-hover">
      <tr>
        <th>ID</th>
        <th>TITLE</th>
        <th></th>
      </tr>
      <?php $this->Admin_model->list_product_delete(); ?>
    </table>
  </div>
</div>

<?php include('footer.php'); ?>
