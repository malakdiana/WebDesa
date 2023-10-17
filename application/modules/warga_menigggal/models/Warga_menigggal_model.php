<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 17/10/2023 04:40*/
/*| Please DO NOT modify this information*/


class Warga_menigggal_model extends MY_Model{

  private $table        = "warga_menigggal";
  private $primary_key  = "NIK";
  private $column_order = array('NIK', 'tgl_meninggal', 'dokumen', 'keterangan');
  private $order        = array('warga_menigggal.NIK'=>"DESC");
  private $select       = "warga_menigggal.NIK,warga_menigggal.NIK,warga_menigggal.tgl_meninggal,warga_menigggal.dokumen,warga_menigggal.keterangan";

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

    if($this->input->post("NIK"))
        {
          $this->db->like("warga_menigggal.NIK", $this->input->post("NIK"));
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
      return $this->db->count_all_results();
    }



}

/* End of file Warga_menigggal_model.php */
/* Location: ./application/modules/warga_menigggal/models/Warga_menigggal_model.php */
