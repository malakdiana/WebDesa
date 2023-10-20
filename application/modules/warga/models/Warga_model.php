<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 16/10/2023 09:09*/
/*| Please DO NOT modify this information*/


class Warga_model extends MY_Model{

  private $table        = "personal";
  private $primary_key  = "NIK";
  private $column_order = array('NIK', 'nama_lengkap', 'tempat_lahir', 'tgl_lahir', 'jenis_kelamin', 'agama', 'pendidikan', 'pekerjaan', 'gol_darah', 'cacat', 'status_kawin', 'hub_keluarga', 'warga_negara', 'suku', 'nik_ayah', 'nik_ibu', 'status_kependudukan', 'hp', 'email', 'alamat', 'status_rumah', 'image','id_lingkungan', 'createdat', 'modified');
  private $order        = array('personal.NIK'=>"DESC");
  private $select       = "personal.NIK as tes,personal.NIK,personal.nama_lengkap,personal.tempat_lahir,personal.tgl_lahir,personal.jenis_kelamin,personal.agama,personal.pendidikan,personal.pekerjaan,personal.gol_darah,personal.cacat,personal.status_kawin,personal.hub_keluarga,personal.warga_negara,personal.suku,personal.nik_ayah as ayah,personal.nik_ibu as ibu,personal.status_kependudukan,personal.hp,personal.email,personal.alamat,personal.status_rumah,personal.image,lingkungan.nama_lingkungan,personal.createdat,personal.modified";

public function __construct()
	{
		$config = array(
      'table' 	      => $this->table,
			'primary_key' 	=> $this->primary_key,
		 	'select' 	      => $this->select,
      'column_order' 	=> $this->column_order,
      'order' 	      => $this->order,
		 );

		parent::__construct($config);
	}

  private function _get_datatables_query()
    {
      $this->db->select($this->select);
      $this->db->from($this->table);
      $this->_get_join();

    if($this->input->post("NIK"))
        {
          $this->db->like("personal.NIK", $this->input->post("NIK"));
        }

    if($this->input->post("nama_lengkap"))
        {
          $this->db->like("personal.nama_lengkap", $this->input->post("nama_lengkap"));
        }

      if(isset($_POST['order'])) // here order processing
       {
           $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
       }
       else if(isset($this->order))
       {
           $order = $this->order;
           $this->db->order_by(key($order), $order[key($order)]);
       }

    }

    public function get_nik_ayah(){
      $query = $this->db->where("jenis_kelamin","Laki-laki")->get('personal');
      return $query->result();
    }
    
    public function get_nik_ibu(){
      $query = $this->db->where("jenis_kelamin","Perempuan")->get('personal');
      return $query->result();
    }


    public function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }

    public function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all()
    {
      $this->db->select($this->select);
      $this->db->from("$this->table");
      $this->_get_join();
      return $this->db->count_all_results();
    }

    public function _get_join()
    {
      $this->db->select("p.NIK");
      $this->db->join("personal p ","p.NIK = personal.nik_ayah","left");
      $this->db->select("p2.NIK");
      $this->db->join("personal p2","p2.NIK = personal.nik_ibu","left");
      $this->db->select("lingkungan.kode");
      $this->db->join("lingkungan","lingkungan.kode = personal.id_lingkungan","left");
    }

    public function get_detail($id)
    {
        $this->db->select("".$this->table.".*");
        $this->db->from($this->table);
        $this->_get_join();
        $this->db->where("".$this->table.'.'.$this->primary_key,$id);
        $query = $this->db->get();
        if($query->num_rows()>0)
        {
          return $query->row();
        }else{
          return FALSE;
        }
    }

}

/* End of file Warga_model.php */
/* Location: ./application/modules/warga/models/Warga_model.php */
