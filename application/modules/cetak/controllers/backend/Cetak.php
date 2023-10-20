<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 17/10/2023 15:13*/
/*| Please DO NOT modify this information*/
use Dompdf\Dompdf;

class Cetak extends Backend{

private $title = "Cetak Dokumen";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Cetak_model","model");
}

function index()
{
  $data = array('action' => url("cetak/cetak"));
  $this->is_allowed('cetak_list');
  $this->template->set_title($this->title);
  $this->template->view("index",$data);
}


//warga
function cetak($id){
  $id = dec_url($id);
  $data['desa'] = $this->model->get_desa();
  $data['warga'] = $this->model->get_warga($id);

  $data['dokumen'] = $this->model->get_dokumen($id);
  // echo var_dump( $data['dokumen'] );
  $file_name = $data['warga'][0]->NIK . '-' . $data['warga'][0]->nama_lengkap;
   $this->load->view('cetakwarga',$data);
//  $this->load->library('mypdf');
//  $this->mypdf->generate('cetakwarga',$data, $file_name );
}

//lingkungan
function cetak2(){
  
  $data['desa'] = $this->model->get_desa();
  $data['lingkungan'] = $this->model->get_lingkungan();
   $this->load->library('mypdf');
   $this->mypdf->generate('cetaklingkungan',$data);
}

//kepala lingkung
function cetak3(){
  
  $data['desa'] = $this->model->get_desa();
  $data['lingkungan'] = $this->model->get_lingkungan();
   $this->load->library('mypdf');
   $this->mypdf->generate('cetakKepLing',$data);
}

//meninggal
function cetak4(){
  $id = $this->input->post('nik_ayah',true);
  $data['desa'] = $this->model->get_desa();
  $data['warga'] = $this->model->get_wargameninggal();
   $this->load->library('mypdf');
   $this->mypdf->generate('cetakWargaMeninggal',$data);
}

function cetakLingkungan(){
  $data = array('action' => url("cetak/cetak"));
  $this->is_allowed('cetak_list');
  $this->template->set_title($this->title);
  $this->template->view("form_cetaklingkungan",$data);
}

function cetakKepalaLingkungan(){
  $data = array('action' => url("cetak/cetak"));
  $this->is_allowed('cetak_list');
  $this->template->set_title($this->title);
  $this->template->view("form_kepalalingkungan",$data);
}

function warga_meninggal(){
  $data = array('action' => url("cetak/cetak"));
  $this->is_allowed('cetak_list');
  $this->template->set_title($this->title);
  $this->template->view("form_wargameninggal",$data);
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('cetak_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->NIK;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("cetak/detail/".enc_url($row->NIK)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("cetak/update/".enc_url($row->NIK)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("cetak/delete/".enc_url($row->NIK)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
                        <i class="ti-trash"></i>
                      </a>
                    </div>
                 ';

        $data[] = $rows;
    }

    $output = array(
                    "draw" => $_POST['draw'],
                    "recordsTotal" => $this->model->count_all(),
                    "recordsFiltered" => $this->model->count_filtered(),
                    "data" => $data,
            );
    //output to json format
    return $this->response($output);
  }
}


function detail($id)
{
  $this->is_allowed('cetak_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "NIK" => $row->NIK,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('cetak_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("cetak/add_action"),
                  'NIK' => set_value("NIK"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('cetak_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("NIK","* NIK","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['NIK'] = $this->input->post('NIK',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("cetak");
      $json['success'] = true;
    }else {
      foreach ($_POST as $key => $value) {
        $json['alert'][$key] = form_error($key);
      }
    }

    $this->response($json);
  }
}

function update($id)
{
  $this->is_allowed('cetak_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("cetak/update_action/$id"),
                  'NIK' => set_value("NIK", $row->NIK),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('cetak_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("NIK","* NIK","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['NIK'] = $this->input->post('NIK',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("cetak");
      $json['success'] = true;
    }else {
      foreach ($_POST as $key => $value) {
        $json['alert'][$key] = form_error($key);
      }
    }

    $this->response($json);
  }
}

function delete($id)
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('cetak_delete')) {
      return $this->response([
        'type_msg' => "error",
        'msg' => "do not have permission to access"
      ]);
    }

      $this->model->remove(dec_url($id));
      $json['type_msg'] = "success";
      $json['msg'] = cclang("notif_delete");


    return $this->response($json);
  }
}


}

/* End of file Cetak.php */
/* Location: ./application/modules/cetak/controllers/backend/Cetak.php */
