<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 17/10/2023 22:44*/
/*| Please DO NOT modify this information*/


class Lampiran_dokumen_model extends MY_Model{

  private $table        = "lampiran_dokumen";
  private $primary_key  = "id";
  private $column_order = array('nik', 'id_dokumen', 'nomor', 'tgl_terbit', 'masa_berlaku', 'lampiran', 'ket', 'createdat', 'modified');
  private $order        = array('lampiran_dokumen.id'=>"DESC");
  private $select       = "lampiran_dokumen.id,lampiran_dokumen.nik,lampiran_dokumen.id_dokumen,lampiran_dokumen.nomor,lampiran_dokumen.tgl_terbit,lampiran_dokumen.masa_berlaku,lampiran_dokumen.lampiran,lampiran_dokumen.ket,lampiran_dokumen.createdat,lampiran_dokumen.modified";

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

    if($this->input->post("nik"))
        {
          $this->db->like("lampiran_dokumen.nik", $this->input->post("nik"));
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


    public function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_nik(){
      $query = $this->db->get('personal');
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
      $this->db->join("personal","personal.NIK = lampiran_dokumen.nik","left");
      $this->db->select("dokumen.nama_dokumen");
      $this->db->join("dokumen","dokumen.id_dokumen = lampiran_dokumen.id_dokumen","left");
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

/* End of file Lampiran_dokumen_model.php */
/* Location: ./application/modules/lampiran_dokumen/models/Lampiran_dokumen_model.php */
