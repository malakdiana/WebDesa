<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 15/10/2023 22:41*/
/*| Please DO NOT modify this information*/


class Lingkungan_model extends MY_Model{

  private $table        = "lingkungan";
  private $primary_key  = "kode";
  private $column_order = array('kode', 'nama_lingkungan', 'nik_kepling', 'total_warga');
  private $order        = array('lingkungan.kode'=>"DESC");
  private $select       = "lingkungan.kode,lingkungan.kode,lingkungan.nama_lingkungan,lingkungan.nik_kepling,lingkungan.total_warga";

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

    if($this->input->post("kode"))
        {
          $this->db->like("lingkungan.kode", $this->input->post("kode"));
        }

    if($this->input->post("nama_lingkungan"))
        {
          $this->db->like("lingkungan.nama_lingkungan", $this->input->post("nama_lingkungan"));
        }

    if($this->input->post("nik_kepling"))
        {
          $this->db->like("lingkungan.nik_kepling", $this->input->post("nik_kepling"));
        }

    if($this->input->post("total_warga"))
        {
          $this->db->like("lingkungan.total_warga", $this->input->post("total_warga"));
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
      $this->_get_join();
      return $this->db->count_all_results();
    }

    public function _get_join()
    {
      $this->db->select("personal.NIK");
      $this->db->join("personal","personal.NIK = lingkungan.nik_kepling","left");
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

/* End of file Lingkungan_model.php */
/* Location: ./application/modules/lingkungan/models/Lingkungan_model.php */
