<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 18/10/2023 21:51*/
/*| Please DO NOT modify this information*/


class Warga_meninggal_model extends MY_Model{

  private $table        = "warga_meninggal";
  private $primary_key  = "NIK";
  private $column_order = array('NIK', 'tgl_meninggal', 'no_dokumen', 'lampiran', 'keterangan');
  private $order        = array('warga_meninggal.NIK'=>"DESC");
  private $select       = "warga_meninggal.NIK,personal.nama_lengkap,warga_meninggal.NIK,warga_meninggal.tgl_meninggal,warga_meninggal.no_dokumen,warga_meninggal.lampiran,warga_meninggal.keterangan";

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
          $this->db->like("warga_meninggal.NIK", $this->input->post("NIK"));
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

    public function get_nik(){
      $query = $this->db->get('personal');
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
      $this->db->select("personal.NIK");
      $this->db->join("personal","personal.NIK = warga_meninggal.NIK","left");
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

/* End of file Warga_meninggal_model.php */
/* Location: ./application/modules/warga_meninggal/models/Warga_meninggal_model.php */
