<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main_model extends CI_Model{

  public function __construct()
  {
    parent::__construct();
    //Codeigniter : Write Less Do More
  }

  public function fetch_menu_product() {
    $query = $this->db->query('SELECT id, title FROM np_product');
    echo "<li><a href='".base_url('index.php/main/product')."'>ALL PRODUCT</a></li>";
    foreach ($query->result() as $row) {
      echo "<li><a href='".base_url('index.php/main/view_product?id=').$row->id."'>".$row->title."</a></li>";
    }
  }

  public function fetch_menu_csr() {
    $query = $this->db->query('SELECT id, title FROM np_csr');
    echo "<li><a href='".base_url('index.php/main/csr')."'>ALL CSR</a></li>";
    foreach ($query->result() as $row) {
      echo "<li><a href='".base_url('index.php/main/view_csr?id=').$row->id."'>".$row->title."</a></li>";
    }
  }

  public function fetch_menu_demonstration() {
    $query = $this->db->query('SELECT id, title FROM np_demon');
    echo "<li><a href='".base_url('index.php/main/demonstration')."'>ALL DEMONSTRATION</a></li>";
    foreach ($query->result() as $row) {
      echo "<li><a href='".base_url('index.php/main/view_demonstration?id=').$row->id."'>".$row->title."</a></li>";
    }
  }

  public function fetch_banner_home() {
    $i = 0;
    $query = $this->db->query('SELECT id, image FROM np_home_banner');
    foreach ($query->result() as $row) {
      if ($i == 0) {
        echo "
        <div class='item active'>
        <img
        src='".base_url().$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      } else {
        echo "
        <div class='item'>
        <img
        src='".base_url().$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      }
      $i++;
    }
  }

  public function fetch_banner_product() {
    $i = 0;
    $query = $this->db->query('SELECT id, image FROM np_pd_banner');
    foreach ($query->result() as $row) {
      if ($i == 0) {
        echo "
        <div class='item active'>
        <img
        src='".base_url()."assets/images/product_banner/".$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      } else {
        echo "
        <div class='item'>
        <img
        src='".base_url()."assets/images/product_banner/".$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      }
      $i++;
    }
  }

  public function fetch_banner_csr() {
    $i = 0;
    $query = $this->db->query('SELECT id, image FROM np_csr_banner');
    foreach ($query->result() as $row) {
      if ($i == 0) {
        echo "
        <div class='item active'>
        <img
        src='".base_url()."assets/images/csr_banner/".$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      } else {
        echo "
        <div class='item'>
        <img
        src='".base_url()."assets/images/csr_banner/".$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      }
      $i++;
    }
  }

  public function fetch_product_preview() {
    $n_line = 1;
    $query = $this->db->query('SELECT * FROM np_pd_preview');

    foreach ($query->result() as $row) {

      if ($n_line == 1) {
        echo "<div class='row'>";
      }

      if ($n_line == 1) {
        echo "
        <div class='col-md-4 form-group'>
        <span style='font-size: 16px; font-weight: bold;'>".$row->title."</span>
        <img src='".base_url()."assets/images/product_preview/".$row->image."' class='img-responsive' onClick='image".$row->id."(this)' style='width: 100%; border-radius: 5px;'></img>
        </div>
        <script type='text/javascript'>
          function image".$row->id."(img) {
            window.open('".base_url()."index.php/main/view_product?id=".$row->id."');
          }
        </script>
        ";
      } else {
        echo "
        <div class='col-md-4 form-group'>
        <span style='font-size: 16px; font-weight: bold;'>".$row->title."</span>
        <img src='".base_url()."assets/images/product_preview/".$row->image."' class='img-responsive' onClick='image".$row->id."(this)' style='width: 100%; border-radius: 5px;'></img>
        </div>
        <script type='text/javascript'>
          function image".$row->id."(img) {
            window.open('".base_url()."index.php/main/view_product?id=".$row->id."');
          }
        </script>
        ";
      }

      if ($n_line == 3) {
        echo "</div>";
        $n_line = 0;
      }

      $n_line++;

    }

    if ($n_line == 2) {
      echo "</div>";
    }

  }

  public function fetch_csr_preview() {
    $n_line = 1;
    $query = $this->db->query('SELECT * FROM np_csr_preview');

    foreach ($query->result() as $row) {

      if ($n_line == 1) {
        echo "<div class='row'>";
      }

      if ($n_line == 1) {
        echo "
        <div class='col-md-4 form-group'>
        <span style='font-size: 16px; font-weight: bold;'>".$row->title."</span>
        <img src='".base_url()."assets/images/csr_preview/".$row->image."' class='img-responsive' onClick='image".$row->id."(this)' style='width: 100%; border-radius: 5px;'></img>
        </div>
        <script type='text/javascript'>
          function image".$row->id."(img) {
            window.open('".base_url()."index.php/main/view_csr?id=".$row->id."');
          }
        </script>
        ";
      } else {
        echo "
        <div class='col-md-4 form-group'>
        <span style='font-size: 16px; font-weight: bold;'>".$row->title."</span>
        <img src='".base_url()."assets/images/csr_preview/".$row->image."' class='img-responsive' onClick='image".$row->id."(this)' style='width: 100%; border-radius: 5px;'></img>
        </div>
        <script type='text/javascript'>
          function image".$row->id."(img) {
            window.open('".base_url()."index.php/main/view_csr?id=".$row->id."');
          }
        </script>
        ";
      }

      if ($n_line == 3) {
        echo "</div>";
        $n_line = 0;
      }

      $n_line++;

    }
    // echo $n_line;
    $n_line--;
    if ($n_line == 1 || $n_line == 2) {
      echo "</div>";
    }

  }

  public function fetch_view_img_product($getId) {
    $sql = "SELECT * FROM np_img_product WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "
      <img src='".base_url()."assets/images/product_content/".$row->image."' class='img-responsive' style='width: 100%;' onClick='callImg()'>
      <script type='text/javascript'>
      function callImg() {
      window.open('".base_url('assets/images/product_content').$row->image."','_blank');
      }
      </script>
      ";
    }

  }

  public function fetch_view_title_product($getId) {
    $sql = "SELECT * FROM np_img_product WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "<span style='font-size: 20px; font-weight: bold;'>".$row->title."</span>";
    }
  }

  public function fetch_view_detail_product($getId) {
    $sql = "SELECT * FROM np_img_product WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "<span style='font-size: 16px; font-weight: bold;'>".$row->detail."</span>";
    }

  }

  //======

  public function fetch_view_img_csr($getId) {
    $sql = "SELECT * FROM np_img_csr WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "
      <img src='".base_url()."assets/images/csr_content/".$row->image."' class='img-responsive' style='width: 100%;' onClick='callImg()'>
      <script type='text/javascript'>
      function callImg() {
      window.open('".base_url('assets/images/csr_content').$row->image."','_blank');
      }
      </script>
      ";
    }

  }

  public function fetch_view_title_csr($getId) {
    $sql = "SELECT * FROM np_img_csr WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "<span style='font-size: 20px; font-weight: bold;'>".$row->title."</span>";
    }
  }

  public function fetch_view_detail_csr($getId) {
    $sql = "SELECT * FROM np_img_csr WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "<span style='font-size: 16px; font-weight: bold;'>".$row->detail."</span>";
    }

  }

  // ===== demonstration =====

  public function fetch_banner_demonstration() {
    $i = 0;
    $query = $this->db->query('SELECT id, image FROM np_demon_banner');
    foreach ($query->result() as $row) {
      if ($i == 0) {
        echo "
        <div class='item active'>
        <img
        src='".base_url()."assets/images/demonstration_banner/".$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      } else {
        echo "
        <div class='item'>
        <img
        src='".base_url()."assets/images/demonstration_banner/".$row->image."'
        class='img-responsive'
        style='width: 100%; height: 220px;'
        >
        </div>
        ";
      }
      $i++;
    }
  }

  public function fetch_demonstration_preview() {
    $n_line = 1;
    $query = $this->db->query('SELECT * FROM np_demon_preview');

    foreach ($query->result() as $row) {

      if ($n_line == 1) {
        echo "<div class='row'>";
      }

      if ($n_line == 1) {
        echo "
        <div class='col-md-4 form-group'>
        <span style='font-size: 16px; font-weight: bold;'>".$row->title."</span>
        <img src='".base_url()."assets/images/demonstration_preview/".$row->image."' class='img-responsive' onClick='image".$row->id."(this)' style='width: 100%; border-radius: 5px;'></img>
        </div>
        <script type='text/javascript'>
          function image".$row->id."(img) {
            window.open('".base_url()."index.php/main/view_demonstration?id=".$row->id."');
          }
        </script>
        ";
      } else {
        echo "
        <div class='col-md-4 form-group'>
        <span style='font-size: 16px; font-weight: bold;'>".$row->title."</span>
        <img src='".base_url()."assets/images/demonstration_preview/".$row->image."' class='img-responsive' onClick='image".$row->id."(this)' style='width: 100%; border-radius: 5px;'></img>
        </div>
        <script type='text/javascript'>
          function image".$row->id."(img) {
            window.open('".base_url()."index.php/main/view_demonstration?id=".$row->id."');
          }
        </script>
        ";
      }

      if ($n_line == 3) {
        echo "</div>";
        $n_line = 0;
      }

      $n_line++;

    }

    if ($n_line == 2) {
      echo "</div>";
    }
  }

  public function fetch_view_img_demonstration($getId) {
    $sql = "SELECT * FROM np_img_demon WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "
      <img src='".base_url()."assets/images/demonstration_content/".$row->image."' class='img-responsive' style='width: 100%;' onClick='callImg()'>
      <script type='text/javascript'>
      function callImg() {
      window.open('".base_url('assets/images/demonstration_content').$row->image."','_blank');
      }
      </script>
      ";
    }

  }

  public function fetch_view_title_demonstraion($getId) {
    $sql = "SELECT * FROM np_img_demon WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "<span style='font-size: 20px; font-weight: bold;'>".$row->title."</span>";
    }
  }

  public function fetch_view_detail_demonstration($getId) {
    $sql = "SELECT * FROM np_img_demon WHERE id=$getId";
    $query = $this->db->query($sql);

    foreach ($query->result() as $row) {
      echo "<span style='font-size: 16px; font-weight: bold;'>".$row->detail."</span>";
    }

  }

  // end demonstration
}
