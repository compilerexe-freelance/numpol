<?php
$this->session->select_menu = "usermanager";
include('header.php');
include('menu_admin.php');
?>

<div class="container">
  <div class="table-responsive">
    <table class="table table-bordered table-hover">
      <tr>
        <th>ID</th>
        <th>USERNAME</th>
        <th>PASSWORD</th>
        <th>LOGIN</th>
        <th>COUNT</th>
        <th>LAST LOGIN</th>
        <th></th>
      </tr>

      <?php $this->Admin_model->fetch_usermanager(); ?>

    </table>
  </div>
</div>

<?php include('footer.php'); ?>
