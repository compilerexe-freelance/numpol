<?php
$this->session->select_menu = 'product';
include('header.php');
include('menu.php');
?>

    <div class="container">
        <div class="col-md-3">
            <div class="form-group text-center" style="margin-top: 15px; background-color:#000;">
                <br />
                <span style="color:#fff; font-size: 20px; font-weight: bold;">PRODUCT</span>
                <br />
                <br />
            </div>
            <div class="form-group" style="background-color: #fff;">
                <span>
                We design, produce, import best qualities products that serve Thai Government and the Military. Our commitment in superior product quality has made us stay in the business for over 25 years. Customer satisfaction is our top priority. We offer our customers warranty on all products, along with on-time delivery service.
                </span>
            </div>
        </div>

        <div class="col-md-9">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="7"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="8"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="9"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <?php $this->Main_model->fetch_banner_product(); ?>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="row col-md-12">
            <hr size="1">
            <?php $this->Main_model->fetch_product_preview(); ?>
        </div>
    </div>

    <?php include('footer.php'); ?>
