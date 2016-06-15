<?php
$this->session->select_menu = "demonstration";
include('header.php');
include('menu_admin.php');
?>
    <div class="">
    <div class="container">

      <div class="col-md-12 form-group">
              <form method="POST" action="<?php echo base_url(); ?>index.php/main/db_demonstration_banner" enctype="multipart/form-data">
                  <div class="form-group">
                      <span id="label_">Demonstration Banner</span>
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload1" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload2" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload3" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload4" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload5" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload6" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload7" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload8" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload9" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <input type="file" name="fileUpload10" class="form-control input-lg">
                  </div>
                  <div class="form-group">
                      <button type="submit" class="btn btn-success" style="width: 100%; height: 45px; font-size: 18px;">Save</button>
                  </div>
              </form>
          </div>

    </div>

    <?php include('footer.php'); ?>
