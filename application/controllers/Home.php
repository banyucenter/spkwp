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

	public function tambah_alternatif()
	{
		$data['data'] = $this->ModelData->tampil_data_alternatif()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/tambah_alternatif',$data);
		$this->load->view('component/footer');
	}

	function aksi_tambah(){
		$nama = $this->input->post('nama');
		$ijazah = $this->input->post('ijazah');
		$skill = $this->input->post('skill');
		$motivasi = $this->input->post('motivasi');
		$etoskerja = $this->input->post('etoskerja');
		$dipercaya = $this->input->post('dipercaya');
 
		$data = array(
			'nama' => $nama,
			'ijazah' => $ijazah,
			'skill' => $skill,
			'motivasi' => $motivasi,
			'etoskerja' => $etoskerja,
			'dipercaya' => $dipercaya,

			);
		$this->ModelData->input_data($data,'alternatif');
		redirect('home/vectorv');
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

	public function bobotpangkat()
	{
		$data['data'] = $this->ModelData->tampil_data_pangkat()->result();
		$this->load->view('component/header');
		$this->load->view('component/sidebar'); 
		$this->load->view('component/topbar'); 
		$this->load->view('public/nilaibobotpangkat',$data);
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
