<?php
$this->session->select_menu = "home";
include('header.php');
include('menu.php');
?>
<div class="bg">
<div class="container">
    <div class="col-md-4">
        <div class="form-group text-center" style="margin-top: 0px; background-color:#000;">
            <br />
            <span style="color:#fff; font-size: 20px; font-weight: bold;">BACKGROUND</span>
            <br />
            <br />
        </div>
        <div class="form-group" style="background-color: #fff;">
            <span>
              Nampol Intertrade was established in 15 June 1984. It has been in business for more than 25 years. We are a professional construction contractor and are a distribution agent for the goods. With a track record of quality performance, we have earned the trust and recognition of our clients to be capped off with being a party to the contracts with both governmental and private sector organizations such as the Royal Thai Army and the Command Headquarters of the Thai Armed Forces,
              <a href="<?php echo base_url('index.php/main/aboutus'); ?>">MORE >></a>
            </span>
        </div>
    </div>

    <div class="col-md-8">
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
              <?php $this->Main_model->fetch_banner_home(); ?>
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
        <div class="row">
          <div class='col-md-4 form-group'>
            <span style='font-size: 16px; font-weight: bold;'>ABOUT US</span>
            <img src='<?php echo base_url('assets/images/home/tb_aboutus.jpg'); ?>' class='img-responsive' onClick='aboutus(this)' style='width: 100%; border-radius: 5px;'></img>
          </div>
          <div class='col-md-4 form-group'>
            <span style='font-size: 16px; font-weight: bold;'>PRODUCT</span>
            <img src='<?php echo base_url('assets/images/home/tb_product.jpg'); ?>' class='img-responsive' onClick='product(this)' style='width: 100%; border-radius: 5px;'></img>
          </div>
          <div class='col-md-4 form-group'>
            <span style='font-size: 16px; font-weight: bold;'>CSR</span>
            <img src='<?php echo base_url('assets/images/home/tb_csr.jpg'); ?>' class='img-responsive' onClick='csr(this)' style='width: 100%; border-radius: 5px;'></img>
          </div>
        </div>
    </div>
</div>

<script type='text/javascript'>
  function aboutus(img) {
    window.open('<?php echo base_url('index.php/main/aboutus'); ?>');
  }
  function product(img) {
    window.open('<?php echo base_url('index.php/main/product'); ?>');
  }
  function csr(img) {
    window.open('<?php echo base_url('index.php/main/csr'); ?>');
  }
</script>

<?php include('footer.php'); ?>
