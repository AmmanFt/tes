<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class prodList extends CI_Controller {
  public function __construct(){
    parent::__construct();
    $this->load->helper('url');
    // Load model
    $this->load->model('M');
  }
  public function prodList(){
    // POST data
    $postData = $this->input->post();
    // Get data
    $data = $this->M->getData($postData);
    echo json_encode($data);
  }
 
}