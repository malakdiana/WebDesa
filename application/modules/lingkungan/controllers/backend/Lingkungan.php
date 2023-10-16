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


class Lingkungan extends Backend{

private $title = "Lingkungan";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Lingkungan_model","model");
}

function index()
{
  $this->is_allowed('lingkungan_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('lingkungan_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->kode;
                $rows[] = $row->nama_lingkungan;
                $rows[] = $row->NIK;
                $rows[] = $row->total_warga;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("lingkungan/detail/".enc_url($row->kode)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("lingkungan/update/".enc_url($row->kode)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("lingkungan/delete/".enc_url($row->kode)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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

function filter()
{
  if(!is_allowed('lingkungan_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('lingkungan_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "kode" => $row->kode,
          "nama_lingkungan" => $row->nama_lingkungan,
          "nik_kepling" => $row->NIK,
          "total_warga" => $row->total_warga,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('lingkungan_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("lingkungan/add_action"),
                  'kode' => set_value("kode"),
                  'nama_lingkungan' => set_value("nama_lingkungan"),
                  'nik_kepling' => set_value("nik_kepling"),
                  'total_warga' => set_value("total_warga"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('lingkungan_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("kode","* Kode","trim|xss_clean|required");
    $this->form_validation->set_rules("nama_lingkungan","* Nama lingkungan","trim|xss_clean|required");
    $this->form_validation->set_rules("nik_kepling","* NIK Kepala Lingkungan","trim|xss_clean|required");
    $this->form_validation->set_rules("total_warga","* Total warga","trim|xss_clean|required");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['kode'] = $this->input->post('kode',true);
      $save_data['nama_lingkungan'] = $this->input->post('nama_lingkungan',true);
      $save_data['nik_kepling'] = $this->input->post('nik_kepling',true);
      $save_data['total_warga'] = $this->input->post('total_warga',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("lingkungan");
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
  $this->is_allowed('lingkungan_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("lingkungan/update_action/$id"),
                  'kode' => set_value("kode", $row->kode),
                  'nama_lingkungan' => set_value("nama_lingkungan", $row->nama_lingkungan),
                  'nik_kepling' => set_value("nik_kepling", $row->nik_kepling),
                  'total_warga' => set_value("total_warga", $row->total_warga),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('lingkungan_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("kode","* Kode","trim|xss_clean|required");
    $this->form_validation->set_rules("nama_lingkungan","* Nama lingkungan","trim|xss_clean|required");
    $this->form_validation->set_rules("nik_kepling","* NIK Kepala Lingkungan","trim|xss_clean|required");
    $this->form_validation->set_rules("total_warga","* Total warga","trim|xss_clean|required");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['kode'] = $this->input->post('kode',true);
      $save_data['nama_lingkungan'] = $this->input->post('nama_lingkungan',true);
      $save_data['nik_kepling'] = $this->input->post('nik_kepling',true);
      $save_data['total_warga'] = $this->input->post('total_warga',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("lingkungan");
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
    if (!is_allowed('lingkungan_delete')) {
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

/* End of file Lingkungan.php */
/* Location: ./application/modules/lingkungan/controllers/backend/Lingkungan.php */
