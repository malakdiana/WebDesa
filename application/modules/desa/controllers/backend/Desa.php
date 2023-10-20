<?php defined('BASEPATH') OR exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 19/10/2023 23:19*/
/*| Please DO NOT modify this information*/


class Desa extends Backend{

private $title = "Desa";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Desa_model","model");
}

function index()
{
  $this->is_allowed('desa_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('desa_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->nama_desa;
                $rows[] = $row->kecamatan;
                $rows[] = $row->jenis_daerah;
                $rows[] = $row->kota;
                $rows[] = $row->alamat;
                $rows[] = $row->telepon;
                $rows[] = $row->kodepos;
                $rows[] = is_image($row->logo,'','width:auto;height:40px');
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("desa/detail/".enc_url($row->id)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("desa/update/".enc_url($row->id)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("desa/delete/".enc_url($row->id)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('desa_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('desa_detail');
    if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "nama_desa" => $row->nama_desa,
          "kecamatan" => $row->kecamatan,
          "jenis_daerah" => $row->jenis_daerah,
          "kota" => $row->kota,
          "alamat" => $row->alamat,
          "telepon" => $row->telepon,
          "kodepos" => $row->kodepos,
          "logo" => $row->logo,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('desa_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("desa/add_action"),
                  'nama_desa' => set_value("nama_desa"),
                  'kecamatan' => set_value("kecamatan"),
                  'jenis_daerah' => set_value("jenis_daerah"),
                  'kota' => set_value("kota"),
                  'alamat' => set_value("alamat"),
                  'telepon' => set_value("telepon"),
                  'kodepos' => set_value("kodepos"),
                  'logo' => set_value("logo"),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('desa_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama_desa","* Nama desa","trim|xss_clean");
    $this->form_validation->set_rules("kecamatan","* Kecamatan","trim|xss_clean");
    $this->form_validation->set_rules("jenis_daerah","* Jenis daerah","trim|xss_clean");
    $this->form_validation->set_rules("kota","* Kota / Kabupaten","trim|xss_clean");
    $this->form_validation->set_rules("alamat","* Alamat","trim|xss_clean");
    $this->form_validation->set_rules("telepon","* Telepon","trim|xss_clean");
    $this->form_validation->set_rules("kodepos","* Kodepos","trim|xss_clean");
    $this->form_validation->set_rules("logo","* Logo","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama_desa'] = $this->input->post('nama_desa',true);
      $save_data['kecamatan'] = $this->input->post('kecamatan',true);
      $save_data['jenis_daerah'] = $this->input->post('jenis_daerah',true);
      $save_data['kota'] = $this->input->post('kota',true);
      $save_data['alamat'] = $this->input->post('alamat',true);
      $save_data['telepon'] = $this->input->post('telepon',true);
      $save_data['kodepos'] = $this->input->post('kodepos',true);
      $save_data['logo'] = $this->imageCopy($this->input->post('logo',true),$_POST['file-dir-logo']);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("desa");
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
  $this->is_allowed('desa_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("desa/update_action/$id"),
                  'nama_desa' => set_value("nama_desa", $row->nama_desa),
                  'kecamatan' => set_value("kecamatan", $row->kecamatan),
                  'jenis_daerah' => set_value("jenis_daerah", $row->jenis_daerah),
                  'kota' => set_value("kota", $row->kota),
                  'alamat' => set_value("alamat", $row->alamat),
                  'telepon' => set_value("telepon", $row->telepon),
                  'kodepos' => set_value("kodepos", $row->kodepos),
                  'logo' => set_value("logo", $row->logo),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('desa_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nama_desa","* Nama desa","trim|xss_clean");
    $this->form_validation->set_rules("kecamatan","* Kecamatan","trim|xss_clean");
    $this->form_validation->set_rules("jenis_daerah","* Jenis daerah","trim|xss_clean");
    $this->form_validation->set_rules("kota","* Kota / Kabupaten","trim|xss_clean");
    $this->form_validation->set_rules("alamat","* Alamat","trim|xss_clean");
    $this->form_validation->set_rules("telepon","* Telepon","trim|xss_clean");
    $this->form_validation->set_rules("kodepos","* Kodepos","trim|xss_clean");
    $this->form_validation->set_rules("logo","* Logo","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nama_desa'] = $this->input->post('nama_desa',true);
      $save_data['kecamatan'] = $this->input->post('kecamatan',true);
      $save_data['jenis_daerah'] = $this->input->post('jenis_daerah',true);
      $save_data['kota'] = $this->input->post('kota',true);
      $save_data['alamat'] = $this->input->post('alamat',true);
      $save_data['telepon'] = $this->input->post('telepon',true);
      $save_data['kodepos'] = $this->input->post('kodepos',true);
      $save_data['logo'] = $this->imageCopy($this->input->post('logo',true),$_POST['file-dir-logo']);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("desa");
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
    if (!is_allowed('desa_delete')) {
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

/* End of file Desa.php */
/* Location: ./application/modules/desa/controllers/backend/Desa.php */
