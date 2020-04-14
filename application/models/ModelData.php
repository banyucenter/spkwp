<?php 
 
class ModelData extends CI_Model{
	function tampil_data(){
		return $this->db->get('kriteria');
    }
    
    function tampil_data_alternatif(){
		return $this->db->get('alternatif');
    }
    
        
    function tampil_data_bobot(){
		return $this->db->get('v_bobot');
    }
    
    function tampil_data_pangkat(){
		return $this->db->get('v_pangkat');
    }
    
    function tampil_data_vectors(){
		return $this->db->get('v_vector');
    }
    
    function tampil_data_vectorv(){
		return $this->db->get('v_vectorv');
    }
  
    function input_data($data,$table){
		$this->db->insert($table,$data);
	  }
}