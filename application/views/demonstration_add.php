<?php
$this->session->select_menu = "demonstration";
include('header.php');
include('menu_admin.php');
?>
    <div class="">
    <div class="container">

        <div class="col-md-12">
            <form method="POST" action="<?php echo base_url(); ?>index.php/main/add_item_demonstration" enctype="multipart/form-data">
                <div class="form-group">
                    <span id="label_">Title</span>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control input-lg" name="txt_title" maxlength="255">
                </div>
                <div class="form-group">
                    <span id="label_">Detail</span>
                </div>
                <div class="form-group">
                    <textarea class="form-control input-lg" name="txt_detail" style="resize: none;" cols="20" rows="15"></textarea>
                </div>
                <div class="form-group">
                    <span id="label_">Image Preview</span>
                </div>
                <div class="form-group">
                    <input type="file" name="filePreviewUpload" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <span id="label_">Image Content</span>
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload" class="form-control input-lg">
                </div>
                <!-- <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>
                <div class="form-group">
                    <input type="file" name="fileUpload[]" class="form-control input-lg">
                </div>-->
                <div class="form-group">
                    <button type="submit" class="btn btn-success" style="width: 100%; height: 45px; font-size: 18px;">Add Product</button>
                </div>
            </form>
        </div>

    </div>

    <?php include('footer.php'); ?>
