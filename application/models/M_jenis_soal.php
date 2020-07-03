<?php

class M_jenis_soal extends CI_model {

	public function data_jenis_soal1($id_peserta,$id_lab){
		$sql  = "SELECT `id_lab` FROM tbl_peserta WHERE id_peserta = $id_peserta";
		$temp = $this->db->query($sql)->result();
		$id_lab = $temp[0]->id_lab;
		
		$sql2  = "SELECT `nama_lab` FROM tbl_soal WHERE id_lab = $id_lab";
		$temp2 = $this->db->query($sql2)->result();
		$nama_lab = $temp2[0]->nama_lab;

		$this->db->like('nama_lab', $nama_lab);
		return $this->db->get('tbl_soal');
		
	}
	public function data_jenis_soal(){
		// $sql  = "SELECT `id_lab` FROM tbl_peserta WHERE id_peserta = $id_peserta";
		// $temp = $this->db->query($sql)->result();
		// $id_lab = $temp[0]->id_lab;
		// $this->db->where('id_lab', $id_lab);
		return $this->db->get('tbl_soal');
		
	}
	public function input_jenis_soal($data){
		$this->db->insert('tbl_soal', $data);
		
	}

	public function update_jenis_soal($data, $id_soal){
		$this->db->where('id_soal', $id_soal);
		$this->db->update('tbl_soal', $data);
		
	}
	
	public function delete_jenis_soal($id_soal){
		$this->db->where('id_soal', $id_soal);
		$this->db->delete('tbl_soal');
		
	}

	public function nama_soal($id_soal){
		$this->db->where('id_soal', $id_soal);
		return $this->db->get('tbl_soal');
		
	}
	
}
