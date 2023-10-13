<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 12/10/2023 18:07*/
/*| Please DO NOT modify this information*/


class Mahasiswa_model extends MY_Model{

  private $table        = "mahasiswa";
  private $primary_key  = "id";
  private $column_order = array('nama', 'nomor', 'alamat');
  private $order        = array('mahasiswa.id'=>"DESC");
  private $select       = "mahasiswa.id,mahasiswa.nama,mahasiswa.nomor,mahasiswa.alamat";

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

    if($this->input->post("nama"))
        {
          $this->db->like("mahasiswa.nama", $this->input->post("nama"));
        }

    if($this->input->post("nomor"))
        {
          $this->db->like("mahasiswa.nomor", $this->input->post("nomor"));
        }

    if($this->input->post("alamat"))
        {
          $this->db->like("mahasiswa.alamat", $this->input->post("alamat"));
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

/* End of file Mahasiswa_model.php */
/* Location: ./application/modules/mahasiswa/models/Mahasiswa_model.php */
