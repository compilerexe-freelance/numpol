<?php include('header.php'); ?>
    <div class="container">
        <div class="row" style="margin-top: 50px;">
            <div class="col-md-4"><img src="<?php echo base_url('assets/images/logo/logo.png'); ?>" class="img-responsive"></div>
            <div class="col-md-8" style="margin-top: 30px;">
                <form action="<?php echo base_url('index.php/main/check_login'); ?>" method="POST">
                    <div class="col-md-12">
                        <div class="col-md-4">
                          <div class="form-group"><span style="font-weight: bold;">Username</span></div>
                          <div class="form-group">
                              <input type="text" class="form-control" name="username" autofocus>
                          </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                          <div class="form-group"><span style="font-weight: bold;">Password</span></div>
                          <div class="form-group">
                              <input type="password" class="form-control" name="password">
                          </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4 form-group">
                            <button type="submit" class="btn btn-success" style="width: 100%;">Login</button>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <button type="reset" class="btn btn-danger" style="width: 100%;">Clear</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>
