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
		if ($this->session->state_login == "admin") {
			$this->load->view('manager');
		} else {
			$this->login();
		}
	}

	public function usermanager() {
		if ($this->session->state_login == "admin") {
			$this->load->view('usermanager');
		} else {
			$this->load->view('login');
		}
	}

	public function usermanager_save() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_usermanager_save();
			$this->usermanager();
		} else {
			$this->load->view('login');
		}

	}

	public function home_banner() {
		if ($this->session->state_login == "admin") {
			$this->load->view('home_banner');
		} else {
			$this->load->view('login');
		}
	}

	public function db_home_banner() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_home_banner();
		} else {
			$this->load->view('login');
		}

	}

	public function product_add() {
		if ($this->session->state_login == "admin") {
			$this->load->view('product_add');
		} else {
			$this->load->view('login');
		}

	}

	public function add_item_product() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->add_item_product();
		} else {
			$this->load->view('login');
		}

	}

	public function product_edit() {
		if ($this->session->state_login == "admin") {
			$this->load->view('product_edit');
		} else {
			$this->load->view('login');
		}

	}

	public function edit_item_product() {
		if ($this->session->state_login == "admin") {
			$this->load->view('edit_item_product');
		} else {
			$this->load->view('login');
		}

		// $this->Admin_model->edit_item_product();
	}

	public function edit_save_product() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_edit_save_product();
		} else {
			$this->load->view('login');
		}

	}

	public function product_delete() {
		if ($this->session->state_login == "admin") {
			$this->load->view('product_delete');
		} else {
			$this->load->view('login');
		}

	}

	public function delete_item_product() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->delete_item_product();
		} else {
			$this->load->view('login');
		}

	}

	public function product_banner() {
		if ($this->session->state_login == "admin") {
			$this->load->view('product_banner');
		} else {
			$this->load->view('login');
		}

	}

	public function db_product_banner() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_product_banner();
		} else {
			$this->load->view('login');
		}

	}

	// CSR
	public function csr_add() {
		if ($this->session->state_login == "admin") {
			$this->load->view('csr_add');
		} else {
			$this->load->view('login');
		}

	}

	public function add_item_csr() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->add_item_csr();
		} else {
			$this->load->view('login');
		}

	}

	public function csr_edit() {
		if ($this->session->state_login == "admin") {
			$this->load->view('csr_edit');
		} else {
			$this->load->view('login');
		}

	}

	public function edit_item_csr() {
		if ($this->session->state_login == "admin") {
			$this->load->view('edit_item_csr');
		} else {
			$this->load->view('login');
		}

		// $this->Admin_model->edit_item_product();
	}

	public function edit_save_csr() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_edit_save_csr();
		} else {
			$this->load->view('login');
		}

	}

	public function csr_delete() {
		if ($this->session->state_login == "admin") {
			$this->load->view('csr_delete');
		} else {
			$this->load->view('login');
		}

	}

	public function delete_item_csr() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->delete_item_csr();
		} else {
			$this->load->view('login');
		}

	}

	public function csr_banner() {
		if ($this->session->state_login == "admin") {
			$this->load->view('csr_banner');
		} else {
			$this->load->view('login');
		}

	}

	public function db_csr_banner() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_csr_banner();
		} else {
			$this->load->view('login');
		}

	}

	public function change_email() {
		if ($this->session->state_login == "admin") {
			$this->load->view('change_email');
		} else {
			$this->load->view('login');
		}

	}

	// END CSR

	public function db_email_save() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_email_save();
		} else {
			$this->load->view('login');
		}

	}

	public function change_password() {
		if ($this->session->state_login == "admin") {
			$this->load->view('change_password');
		} else {
			$this->load->view('login');
		}

	}

	public function db_password_save() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_password_save();
		} else {
			$this->load->view('login');
		}

	}

	// END ADMIN

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

	public function send_email() {

		$db_read_email;

		$sql = "SELECT email FROM np_email";
		$query = $this->db->query($sql);
		foreach ($query->result() as $row) {
			$db_read_email = $row->email;
		}

		$getName = $this->input->post('txt_name');
		$getEmail = $this->input->post('txt_email');
		$getTel = $this->input->post('txt_tel');
		$getTopic = $this->input->post('txt_topic');
		$getDetail = $this->input->post('txt_detail');

		$from_email = "$getEmail";
		$to_email = "compilerexe@gmail.com";

		//Load email library
		$this->load->library('email');
   	$this->email->from($from_email, "$getName");
   	$this->email->to($to_email);
   	$this->email->subject("$getTopic");
   	$this->email->message("$getDetail");

   	//Send mail
   	if ($this->email->send()) {
   		$this->session->set_flashdata("email_sent","Email sent successfully.");
		}	else {
   		$this->session->set_flashdata("email_sent","Error in sending Email.");
		}

		$this->load->view('contactus');

	}

	// ===== demonstration =====

	public function view_demonstration() {
		if ($this->session->state_login != "") {
			$this->load->view('view_demonstration');
		} else {
			$this->login();
		}
	}

	public function demonstration() {
		if ($this->session->state_login != "") {
			$this->load->view('demonstration');
		} else {
			$this->login();
		}
	}

	public function demonstration_add() {
		if ($this->session->state_login == "admin") {
			$this->load->view('demonstration_add');
		} else {
			$this->load->view('login');
		}

	}

	public function add_item_demonstration() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->add_item_demonstration();
		} else {
			$this->load->view('login');
		}

	}

	public function demonstration_edit() {
		if ($this->session->state_login == "admin") {
			$this->load->view('demonstration_edit');
		} else {
			$this->load->view('login');
		}

	}

	public function edit_item_demonstration() {
		if ($this->session->state_login == "admin") {
			$this->load->view('edit_item_demonstration');
		} else {
			$this->load->view('login');
		}

		// $this->Admin_model->edit_item_product();
	}

	public function edit_save_demonstration() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_edit_save_demonstration();
		} else {
			$this->load->view('login');
		}

	}

	public function demonstration_delete() {
		if ($this->session->state_login == "admin") {
			$this->load->view('demonstration_delete');
		} else {
			$this->load->view('login');
		}

	}

	public function delete_item_demonstration() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->delete_item_demonstration();
		} else {
			$this->load->view('login');
		}

	}

	public function demonstration_banner() {
		if ($this->session->state_login == "admin") {
			$this->load->view('demonstration_banner');
		} else {
			$this->load->view('login');
		}

	}

	public function db_demonstration_banner() {
		if ($this->session->state_login == "admin") {
			$this->Admin_model->db_demonstration_banner();
		} else {
			$this->load->view('login');
		}

	}

	// end demonstration

}
