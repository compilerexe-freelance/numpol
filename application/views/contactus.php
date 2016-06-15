<?php
$this->session->select_menu = "contactus";
include('header.php');
echo $this->session->flashdata('email_sent');
include('menu.php');
?>
    <div class="bg">
    <div class="container">
        <div class="col-md-12 form-group">
            <img src="<?php echo base_url('assets/images/contactus/ct_main.jpg'); ?>" class="img-responsive" style="width: 100%; height:300px; ">
        </div>
        <div class="col-md-4 form-group">
            <div class="col-md-12 text-center form-group" style="background-color: #000;">
                <br />
                <span style="color:#fff; font-size: 20px; font-weight: bold;">CONTACT US</span>
                <br />
                <br />
            </div>
            <div class="col-md-12 form-group">
                <span>
                <h4><b>HEAD OFFICE</b></h4><br />
                No. 90/1-4, Phraruang Road, Tambon Naimuang<br />
                Amphoe Muang Pitsanuloke<br />
                Pitsanuloke Province 65000<br />
                Tel. 66-55-283111<br />
                Fax. 66-55-243526<br />
                Mobile 66-81-5966121<br />
                Email: info@numpol.co.th<br />
                </span>
            </div>
            <div class="col-md-12 form-group">
                <div id="map_headoffice" style="width: 100%; height: 200px;"></div>
            </div>
            <div class="col-md-12 form-group">
                <span>
                <h4><b>BANGKOK BRANCH</b></h4><br />
                432 Dumrongrak Rd.<br />
                Mahanak Pomparbsatupai<br />
                Bangkok 10100<br />
                Tel <br />
                66-81-5966121 <br />
                66-81-5966121 <br />
                Email info@numpol.co.th<br />
                numpol@numpol.co.th Director<br />
                philippe@numpol.co.th <br />
                Business Development Manager<br />
                </span>
            </div>
            <div class="col-md-12 form-group">
                <div id="map_bkkoffice" style="width: 100%; height: 200px;"></div>
            </div>
        </div>
        <div class="col-md-8 form-group">
            <div class="col-md-12 form-group">
                <img src="<?php echo base_url('assets/images/contactus/ab_topic.png'); ?>" class="img-responsive" style="width: 100%; height:80px;">
            </div>
            <div class="col-md-12 text-center form-group" style="background-color: #000;">
                <br />
                <span style="color:#fff; font-size: 18px; font-weight: bold;">MAIL US</span>
                <br />
                <br />
            </div>
            <div class="col-md-12 text-center form-group">
                <form action="<?php echo base_url(); ?>index.php/main/send_email" method="POST">
                    <div class="table-responsive">
                        <table class="table table-borderless">
                            <tr>
                                <th></th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group"><span style="font-size: 18px;"><b>Name :&ensp;</b></span></div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" name="txt_name">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group"><span style="font-size: 18px;"><b>Email :&ensp;</b></span></div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" name="txt_email">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group"><span style="font-size: 18px;"><b>Telephone :&ensp;</b></span></div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" name="txt_tel">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group"><span style="font-size: 18px;"><b>Topic :&ensp;</b></span></div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <input type="text" class="form-control input-lg" name="txt_topic">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group"><span style="font-size: 18px;"><b>Detail :&ensp;</b></span></div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <textarea type="text" class="form-control" name="txt_detail" style="resize: none;" cols="15" rows="10"></textarea>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success" style="width: 100%; height: 40px; font-size: 16px;">Send</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-group">
                                        <button type="reset" class="btn btn-default" style="width: 100%; height: 40px; font-size: 16px;">Clear</button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="<?php echo base_url('assets/js/jquery-2.2.3.min.js'); ?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap.min.js'); ?>"></script>

    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?v=3&sensor=true"></script>
        <script type="text/javascript">

            function initialize() {

                var bkkLatlng = new google.maps.LatLng(16.816021,100.257875);
                var myOptions = { zoom: 16, center: bkkLatlng, mapTypeId: google.maps.MapTypeId.ROADMAP, panControl: false,
                    zoomControl: false,
                    mapTypeControl: false,
                    scaleControl: false,
                    streetViewControl: false,
                    overviewMapControl: false
                }

                var map = new google.maps.Map(document.getElementById("map_headoffice"), myOptions);
                setMarkers(map,bkkLatlng,"https://maps.google.co.th/maps/ms?msid=217273161594459842990.0004cb1f732639c0c9b1d&msa=0&ll=16.816021,100.257875&spn=0.001656,0.00284");

                bkkLatlng = new google.maps.LatLng(13.7542956623436,100.51548510789871);
                myOptions = { zoom: 16, center: bkkLatlng, mapTypeId: google.maps.MapTypeId.ROADMAP, panControl: false,
                  zoomControl: false,
                  mapTypeControl: false,
                  scaleControl: false,
                  streetViewControl: false,
                  overviewMapControl: false
                }
                map = new google.maps.Map(document.getElementById("map_bkkoffice"), myOptions);
                setMarkers(map,bkkLatlng,"https://maps.google.co.th/maps/ms?msid=217273161594459842990.0004cb1f994fac47fde56&msa=0");

            }

            function setMarkers(map,bkkLatlng,location) {
                marker = new google.maps.Marker({
                    position: bkkLatlng,
                    map: map,
                    url: location
                });
                google.maps.event.addListener(marker, 'click', function() {
                    window.open(this.url)
                });
            }

            $(document).ready(function(e) {
                initialize();
            });

        </script>

  </body>

  <?php include('footer.php'); ?>
