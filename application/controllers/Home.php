<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();		
		$this->load->model('ModelData');
                $this->load->helper('url');
	}

	public function index()
	{
		$data['data'] = $this->ModelData->tampil_data()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/home',$data);
		$this->load->view('component/footer');
	}

	public function alternatif()
	{
		$data['data'] = $this->ModelData->tampil_data_alternatif()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/alternatif',$data);
		$this->load->view('component/footer');
	}

	public function bobot()
	{
		$data['data'] = $this->ModelData->tampil_data_bobot()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/nilaibobot',$data);
		$this->load->view('component/footer');
	}

	public function vectors()
	{
		$data['data'] = $this->ModelData->tampil_data_vectors()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/vectors',$data);
		$this->load->view('component/footer');
	}

	public function vectorv()
	{
		$data['data'] = $this->ModelData->tampil_data_vectorv()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/vectorv',$data);
		$this->load->view('component/footer');
	}
}
