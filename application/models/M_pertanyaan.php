<?php

class M_pertanyaan extends CI_model {

	/*
	| ----------------------SERVER SIDE DATA PERTANYAAN----------------------------------
	*/

	private $column_order = array(null, 'id_pertanyaan', 'pertanyaan','option_1', 'option_2', 'option_3', 'option_4', 'option_5','jawaban'); //set column field database for datatable orderable
	private $column_search = array('id_pertanyaan', 'pertanyaan','option_1', 'option_2', 'option_3', 'option_4', 'option_5','jawaban'); //set column field database for datatable searchable 
	private $order = array('id_pertanyaan' => 'asc'); // default order 

	private function tabel_pertanyaan($id_soal)
	{
		$this->db->select('*');
		$this->db->from('tbl_pertanyaan');
		$this->db->where('id_soal', $id_soal);	
	}

	private function _get_query($id_soal) {
		$this->tabel_pertanyaan($id_soal);

		$i = 0;
		foreach ($this->column_search as $item) { // loop column 
			if($_POST['search']['value']) { // if datatable send POST for search
				
				if($i===0){ // first loop
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				}
				else{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($_POST['order'])){ // here order processing
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order)){
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	public function get_pertanyaan($id_soal) {
		$this->_get_query($id_soal);
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		
		return $query->result();
	}

	public function count_filtered($id_soal) {
		$this->_get_query($id_soal);
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all($id_soal) {
		$this->tabel_pertanyaan($id_soal);
		return $this->db->count_all_results();
	}
	
	/*
	| -------------------------------------------------------------------
	*/
	public function tot_pertanyaan(){ 
		return $this->db->get('tbl_pertanyaan');
	}

	public function data_pertanyaan($id_soal){ 
		$this->db->where('id_soal', $id_soal);
		return $this->db->get('tbl_pertanyaan');
	}

	public function input_pertanyaan($data){
		$this->db->insert('tbl_pertanyaan', $data);
		
	}

	public function tampil_edit($id_pertanyaan){
		$this->db->where('id_pertanyaan', $id_pertanyaan);
		return $this->db->get('tbl_pertanyaan');
		
	}

	public function delete_pertanyaan($id_pertanyaan){
		$this->db->where('id_pertanyaan', $id_pertanyaan);
		$this->db->delete('tbl_pertanyaan');
		
	}

	public function update_pertanyaan($data, $id_pertanyaan){
		$this->db->where('id_pertanyaan', $id_pertanyaan);
		$this->db->update('tbl_pertanyaan', $data);
		
	}

	public function acak_soal($id_soal,$id_peserta,$id_lab){ 
	// 	// $data = $this->db->query("SELECT * FROM mahasiswa";)

	// 	 // $id_lab->select('SELECT `id_lab` from tbl_peserta where id_peserta = $id_peserta');
 //   //      	$id_lab = $id_lab->get();
		// $sql1 = "SELECT * from tbl_peserta where id_peserta = $id_peserta";
		// $id_lab1 = $this->db->query($sql1)->result();
		// $id_lab = $id_lab1->id_lab;

	// 	 // $id_soal->select('SELECT `id_soal` from tbl_soal where id_lab = $id_lab');
 //   //      	$id_soal1 = $id_soal->get();

		// // $id_lab = 8;
		// $sql2 = "SELECT tbl_soal.id_soal,tbl_soal.id_lab from tbl_soal where tbl_soal.id_lab = $id_lab";
		// $id_soal1 = $this->db->query($sql2)->result();
		// $id_soal1 = $id_soal1->id_soal;
		// $sql  = "SELECT `id_lab` FROM tbl_soal WHERE id_soal = $id_soal";
		// $temp = $this->db->query($sql)->result();
		// $limit = $temp[0]->limit;
		// $sql2  = "SELECT `id_lab` FROM tbl_peserta WHERE id_peserta = $id_peserta";
		// $id_lab = $this->db->query($sql2)->result();
		// $id_lab1 = $id_lab->id_lab;

		$sql  = "SELECT `limit` FROM tbl_soal WHERE id_soal = $id_soal";
		$temp = $this->db->query($sql)->result();
		$limit = $temp[0]->limit;

		$this->db->select('*');
		$this->db->from('tbl_pertanyaan');
		$this->db->join('tbl_soal', 'tbl_soal.id_soal = tbl_pertanyaan.id_soal', 'left');
		$this->db->where('tbl_pertanyaan.id_soal', $id_soal);
		// $this->db->where('tbl_soal.id_lab', $id_lab);
		$this->db->order_by('tbl_pertanyaan.id_pertanyaan', 'RANDOM');
		$this->db->limit($limit);
		return $this->db->get();
	}





	// public function acak_soal($id_soal,$id_p){ 
	// 	// $sql1 = "select `id_lab` from tbl_peserta where id_peserta = $id_p";
	// 	// $id_lab1 = $this->db->query($sql1)->result();
	// 	// $id_lab = $id_lab1->id_lab;

	// 	$sql  = "select `limit` from tbl_soal where id_soal = $id_soal";
	// 	$temp = $this->db->query($sql)->result();
	// 	$limit = $temp[0]->limit;

	// 	// $sql1  = "select * from tbl_pertanyaan where tbl_pertanyaan.id_soal = $id_soal order by tbl_pertanyaan.id_pertanyaan rand() limit $limit";
	// 	// $query = $this->db->query($sql1, array('code', 'php'));
	// 	// return $query->get();

	// 	$query = $this->db->query("SELECT * from tbl_pertanyaan where tbl_pertanyaan.id_soal = $id_soal order by tbl_pertanyaan.id_pertanyaan rand() limit $limit")->result();
	// 	return $query;
	// 	// $get = $this->db->query($sql)->result();

	// 	// $limit = $temp[0]->limit;

	// 	// $this->db->select('*');
	// 	// $this->db->from('tbl_pertanyaan');
	// 	// // $this->db->join('tbl_soal', 'tbl_soal.id_lab = $id_lab', 'left');
	// 	// $this->db->where('tbl_pertanyaan.id_soal', $id_soal);
	// 	// $this->db->order_by('tbl_pertanyaan.id_pertanyaan', 'RANDOM');
	// 	// $this->db->limit($limit);
	// 	// return $this->db->get();
	// }
}
