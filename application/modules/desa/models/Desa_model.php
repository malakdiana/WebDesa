<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 17/10/2023 15:31*/
/*| Please DO NOT modify this information*/


class Desa_model extends MY_Model{

  private $table        = "desa";
  private $primary_key  = "id";
  private $column_order = array('nama_desa', 'kecamatan', 'kota', 'logo');
  private $order        = array('desa.id'=>"DESC");
  private $select       = "desa.id,desa.nama_desa,desa.kecamatan,desa.kota,desa.logo";

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

    if($this->input->post("nama_desa"))
        {
          $this->db->like("desa.nama_desa", $this->input->post("nama_desa"));
        }

    if($this->input->post("kecamatan"))
        {
          $this->db->like("desa.kecamatan", $this->input->post("kecamatan"));
        }

    if($this->input->post("kota"))
        {
          $this->db->like("desa.kota", $this->input->post("kota"));
        }

    if($this->input->post("logo"))
        {
          $this->db->like("desa.logo", $this->input->post("logo"));
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

/* End of file Desa_model.php */
/* Location: ./application/modules/desa/models/Desa_model.php */
