<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model{

  public function __construct()
  {
    parent::__construct();
    //Codeigniter : Write Less Do More
  }

  public function db_check_login() {
    $getUser = $this->input->post('username');
    $getPass = $this->input->post('password');

    $query = $this->db->query('SELECT * FROM np_admin');

    foreach ($query->result() as $row) {
      if ($getUser == $row->username && $getPass == $row->password) {
        $this->session->state_login = $getUser;
        if ($getUser == "admin") {
          $this->load->view('manager');
        }
      }
    }

    if ($this->session->state_login == "") {
      $check_user = 0;

      $query = $this->db->query('SELECT * FROM np_users');
      foreach ($query->result() as $row) {
        if ($getUser == $row->u_username && $getPass == $row->u_pwd) {
          $this->session->state_login = $getUser;
          $check_user = 1;
        }
      }

      if ($check_user == 1) {
        $counting = 0;
        $sql = "SELECT u_loingtimes FROM np_users WHERE u_username='$getUser'";
        $query = $this->db->query($sql);
        foreach ($query->result() as $row) {
          $counting = $row->u_loingtimes;
        }

        $counting = $counting - 1;
        $sql = "UPDATE np_users SET u_loingtimes=$counting, u_lastlogin=NOW() WHERE u_username='$getUser'";
        $this->db->query($sql);
        $this->load->view('index');
      }

    }

  }

  public function fetch_usermanager() {
    $sql = "SELECT * FROM np_users";
    $query = $this->db->query($sql);
    foreach ($query->result() as $row) {
      echo "
        <tr>
          <form method='POST' action='".base_url()."index.php/main/usermanager_save'>
          <td>".$row->u_id."</td>
          <td>".$row->u_username."</td>
          <td><input type='text' name='txt_pass' class='form-control' value='".$row->u_pwd."'></td>
          <td><input type='text' name='txt_count' class='form-control' value='".$row->u_login."'></td>
          <td>".$row->u_loingtimes."</td>
          <td>".$row->u_lastlogin."</td>
          <input type='hidden' name='u_id' value='".$row->u_id."'>
          <td><button class='btn btn-success'>SAVE</button></td>
          </form>
        </tr>
      ";
    }
  }

  public function db_usermanager_save() {
    $getId = $this->input->post('u_id');
    $getPass = $this->input->post('txt_pass');
    $getCount = $this->input->post('txt_count');

    $sql = "UPDATE np_users SET u_pwd='$getPass', u_login='$getCount', u_loingtimes='$getCount' WHERE u_id=$getId";
    $this->db->query($sql);

  }

  public function db_home_banner() {
	   $counting = 1;

  	 for ($i = 1; $i <= 10; $i++) {
        $genName = "fileUpload" . $i;
  	    if ($_FILES[$genName]["name"] != "") {
          $name_file = $_FILES[$genName]["name"];
    			$url = $this->upload_home_banner($genName);
          $sql = "UPDATE np_home_banner SET image='$url' WHERE id=$i";
          $this->db->query($sql);
          // echo $i. "<br>" .$_FILES[$genName]["name"];
    			$counting++;
  		  }
  	 }

    $this->load->view('home_banner');

  }

  private function upload_home_banner($genName) {
		$type = explode('.', $_FILES[$genName]["name"]);
		$type = strtolower($type[count($type)-1]);
		$url = "assets/images/home_banner/".uniqid(rand()).'.'.$type;
		if(in_array($type, array("jpg", "jpeg", "gif", "png")))
			if(is_uploaded_file($_FILES[$genName]["tmp_name"]))
				if(move_uploaded_file($_FILES[$genName]["tmp_name"],$url))
					return $url;
		return "";
	}

  public function add_item_product() {
    $title = $this->input->post('txt_title');
    $detail = $this->input->post('txt_detail');

    $safe_title = $this->db->escape($title);
    $safe_detail = $this->db->escape($detail);

    // echo $safe_title.$safe_detail;

     if ($_FILES["filePreviewUpload"]["name"] != "" && $_FILES["fileUpload"]["name"] != "") {
       $url = $this->upload_item_product("filePreviewUpload","product_preview");
       $img_name = $_FILES["filePreviewUpload"]["name"];
       $sql = "INSERT INTO np_pd_preview (title,image) VALUES($safe_title,'$img_name');";
       $this->db->query($sql);
      // echo $sql."<br>";

       $url = $this->upload_item_product("fileUpload", "product_content");
       $img_name = $_FILES["fileUpload"]["name"];
       $sql = "INSERT INTO np_img_product (title,detail,image) VALUES($safe_title,$safe_detail,'$img_name');";
       $this->db->query($sql);
      // echo $sql."<br>";

       $sql = "INSERT INTO np_product (title,detail) VALUES($safe_title,$safe_detail);";
       $this->db->query($sql);
      // echo $sql."<br>";

     }

     $this->load->view('product_add');
  }

  private function upload_item_product($genName,$getDir) {
		$type = explode('.', $_FILES[$genName]["name"]);
		$type = strtolower($type[count($type)-1]);
		$url = "assets/images/".$getDir."/".$_FILES[$genName]["name"];
		if(in_array($type, array("jpg", "jpeg", "gif", "png")))
			if(is_uploaded_file($_FILES[$genName]["tmp_name"]))
				if(move_uploaded_file($_FILES[$genName]["tmp_name"],$url))

					return $url;
		return "";
	}

  public function fetch_list_product() {
    $sql = "SELECT id,title FROM np_product";
    $qeury = $this->db->query($sql);
    foreach ($qeury->result() as $row) {
      echo "
      <tr>
        <form method='POST' action='".base_url()."index.php/main/edit_item_product'>
        <td>".$row->id."</td>
        <td>".$row->title."</td>
        <input type='hidden' name='itemId' value='".$row->id."'>
        <td><button class='btn btn-warning' type='submit'>EDIT</button></td>
        </form>
      </tr>
      ";
    }
  }

  public function edit_item_product() {
    $id = $this->input->post('itemId');

    $sql = "SELECT id,title,detail FROM np_product WHERE id=$id";
    $qeury = $this->db->query($sql);

    foreach ($qeury->result() as $row) {
      echo "
      <div class='container'>
      <form method='POST' action='".base_url()."index.php/main/edit_save_product'>
      <div class='col-md-12 form-group'>
        <span>Title</span>
      </div>
      <div class='col-md-12 form-group'>
        <input type='text' class='form-control' name='edit_title' value='".$row->title."'>
      </div>
      <div class='col-md-12 form-group'>
        <span>Detail</span>
      </div>
      <div class='col-md-12 form-group'>
          <textarea class='form-control input-lg' name='edit_detail' style='resize: none;' cols='20' rows='15'>".$row->detail."</textarea>
      </div>
      <div class='col-md-12 form-group'>
          <input type='hidden' name='id' value='".$row->id."'>
          <button type='submit' class='btn btn-success' style='width: 100%; height: 45px; font-size: 18px;'>Save</button>
      </div>
      </form>
      </div>
      ";
    }

  }

  public function db_edit_save_product() {
    $id = $this->input->post('id');
    $title = $this->input->post('edit_title');
    $detail = $this->input->post('edit_detail');

    $safe_title = $this->db->escape($title);
    $safe_detail = $this->db->escape($detail);

    $sql = "UPDATE np_product SET title=$safe_title, detail=$safe_detail WHERE id=$id";
    $this->db->query($sql);

    $sql = "UPDATE np_pd_preview SET title=$safe_title WHERE id=$id";
    $this->db->query($sql);

    $sql = "UPDATE np_img_product SET title=$safe_title, detail=$safe_detail WHERE id=$id";
    $this->db->query($sql);
    $this->load->view('product_edit');
  }

  public function list_product_delete() {
    $sql = "SELECT id,title FROM np_product";
    $qeury = $this->db->query($sql);
    foreach ($qeury->result() as $row) {
      echo "
      <tr>
        <form method='POST' action='".base_url()."index.php/main/delete_item_product'>
        <td>".$row->id."</td>
        <td>".$row->title."</td>
        <input type='hidden' name='itemId' value='".$row->id."'>
        <td><button class='btn btn-danger' type='submit'>DELETE</button></td>
        </form>
      </tr>
      ";
    }
  }

  public function delete_item_product() {
    $id = $this->input->post('itemId');
    $sql = "DELETE FROM np_product WHERE id=$id";
    $this->db->query($sql);

    $sql = "DELETE FROM np_pd_preview WHERE id=$id";
    $this->db->query($sql);

    $sql = "DELETE FROM np_img_product WHERE id=$id";
    $this->db->query($sql);

    $this->load->view('product_delete');
  }

  public function db_product_banner() {
	   $counting = 1;

  	 for ($i = 1; $i <= 10; $i++) {
        $genName = "fileUpload" . $i;
  	    if ($_FILES[$genName]["name"] != "") {
          $name_file = $_FILES[$genName]["name"];
    			$url = $this->upload_product_banner($genName);
          $sql = "UPDATE np_pd_banner SET image='$name_file' WHERE id=$i";
          $this->db->query($sql);
          // echo $i. "<br>" .$_FILES[$genName]["name"];
    			$counting++;
  		  }
  	 }

    $this->load->view('product_banner');

  }

  private function upload_product_banner($genName) {
		$type = explode('.', $_FILES[$genName]["name"]);
		$type = strtolower($type[count($type)-1]);
    $url = "assets/images/product_banner/".$_FILES[$genName]["name"];
		if(in_array($type, array("jpg", "jpeg", "gif", "png")))
			if(is_uploaded_file($_FILES[$genName]["tmp_name"]))
				if(move_uploaded_file($_FILES[$genName]["tmp_name"],$url))
					return $url;
		return "";
	}

}
