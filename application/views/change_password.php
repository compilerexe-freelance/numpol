<?php
$this->session->select_menu = "privacy";
include('header.php');
include('menu_admin.php');
?>
<div class="">
<div class="container">
  <form method="POST" action="<?php echo base_url(); ?>index.php/main/db_password_save">
    <div class="col-md-12 form-group">
      <span style="font-weight: bold;">Change Password</span>
    </div>
    <div class="col-md-4 form-group">
      <input type="text" class="form-control input-lg" name="txt_pass" value="<?php $this->Admin_model->fetch_password(); ?>">
    </div>
    <div class="col-md-12"></div>
    <div class="col-md-4 form-group text-right">
      <button type="submit" class="btn btn-success" style="width:100%;">Save</button>
    </div>
  </form>
</div>

<?php include('footer.php'); ?>
