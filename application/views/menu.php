<?php require('config.php'); ?>
<div class="container">
    <div class="col-md-9">
        <img src="<?php echo base_url('assets/images/logo/logo.jpg'); ?>" class="img-responsive">
    </div>
    <div class="col-md-3">
        <img src="<?php echo base_url('assets/images/logo/logo-new.jpg'); ?>" style="width:280px; margin-top: 20px;" class="img-responsive">
    </div>
</div>
<!-- <hr size="1"> -->

<nav class="navbar navbar-inverse">
    <div class="container">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li <?php if ($this->session->select_menu == "home") {echo "class='active'";} ?> >
                    <a href="<?php echo base_url('index.php/main/index'); ?>">HOME <span class="sr-only">(current)</span></a>
                </li>
                <li <?php if ($this->session->select_menu == "aboutus") {echo "class='active'";} ?> >
                    <a href="<?php echo base_url('index.php/main/aboutus'); ?>">ABOUT US</a>
                </li>

                <li <?php if ($this->session->select_menu == "product") {echo "class='dropdown active'";} else {echo "class='dropdown'";} ?> >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PRODUCT <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <?php $this->Main_model->fetch_menu_product(); ?>
                    </ul>
                </li>

                <li <?php if ($this->session->select_menu == "csr") {echo "class='dropdown active'";} else {echo "class='dropdown'";} ?> >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CSR <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <?php $this->Main_model->fetch_menu_csr(); ?>
                    </ul>
                </li>

                <li <?php if ($this->session->select_menu == "contactus") {echo "class='active'";} ?> >
                    <a href="<?php echo base_url('index.php/main/contactus'); ?>">CONTACT US</a>
                </li>
                <li <?php if ($this->session->select_menu == "demonstration") {echo "class='active'";} ?> >
                    <a href="<?php echo base_url('index.php/main/demonstration'); ?>">SHOW AND DEMONSTRATION</a>
                </li>

            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- <hr size="1"> -->
