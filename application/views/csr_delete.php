<?php
$this->session->select_menu = "csr";
include('header.php');
include('menu_admin.php');
?>
<div class="">
<div class="container">
  <div class="table table-responsive">
    <table class="table table-bordered table-hover">
      <tr>
        <th>ID</th>
        <th>TITLE</th>
        <th></th>
      </tr>
      <?php $this->Admin_model->list_csr_delete(); ?>
    </table>
  </div>
</div>

<?php include('footer.php'); ?>
