<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct() {
		parent:: __construct();
	}

	public function login() {
		$this->load->view('login');
	}

	public function check_login() {
		$this->Admin_model->db_check_login();
	}

	public function manager() {
		if ($this->session->state_login != "") {
			$this->load->view('manager');
		} else {
			$this->login();
		}
	}

	public function usermanager() {
		$this->load->view('usermanager');
	}

	public function usermanager_save() {
		$this->Admin_model->db_usermanager_save();
		$this->usermanager();
	}

	public function home_banner() {
		$this->load->view('home_banner');
	}

	public function db_home_banner() {
		$this->Admin_model->db_home_banner();
	}

	public function product_add() {
		$this->load->view('product_add');
	}

	public function add_item_product() {
		$this->Admin_model->add_item_product();
	}

	public function product_edit() {
		$this->load->view('product_edit');
	}

	public function edit_item_product() {
		$this->load->view('edit_item_product');
		// $this->Admin_model->edit_item_product();
	}

	public function edit_save_product() {
		$this->Admin_model->db_edit_save_product();
	}

	public function product_delete() {
		$this->load->view('product_delete');
	}

	public function delete_item_product() {
		$this->Admin_model->delete_item_product();
	}

	public function product_banner() {
		$this->load->view('product_banner');
	}

	public function db_product_banner() {
		$this->Admin_model->db_product_banner();
	}

	public function logout() {
		$this->session->state_login = "";
		$this->index();
	}

	public function index()
	{
		$this->load->view('index');
	}

	public function aboutus() {
		$this->load->view('aboutus');
	}

	public function product() {
		if ($this->session->state_login != "") {
			$this->load->view('product');
		} else {
			$this->login();
		}
	}

	public function view_product() {
		if ($this->session->state_login != "") {
			$this->load->view('view_product');
		} else {
			$this->login();
		}
	}

	public function csr() {
		if ($this->session->state_login != "") {
			$this->load->view('csr');
		} else {
			$this->login();
		}
	}

	public function view_csr() {
		if ($this->session->state_login != "") {
			$this->load->view('view_csr');
		} else {
			$this->login();
		}
	}

	public function contactus() {
		$this->load->view('contactus');
	}

	public function demonstration() {
		if ($this->session->state_login != "") {
			$this->load->view('demonstration');
		} else {
			$this->login();
		}
	}

}
