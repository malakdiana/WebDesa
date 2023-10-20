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


class Warga_meninggal extends Backend{

private $title = "Warga Meninggal";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Warga_meninggal_model","model");
}

function index()
{
  $this->is_allowed('warga_meninggal_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('warga_meninggal_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    $data = array();
    foreach ($list as $row) {
        $rows = array();
                $rows[] = $row->NIK;
                $rows[] = $row->nama_lengkap;
                $rows[] = date("d-m-Y",  strtotime($row->tgl_meninggal));
                $rows[] = $row->no_dokumen;
                $rows[] = is_image($row->lampiran,'','width:auto;height:40px');
                $rows[] = $row->keterangan;
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("warga_meninggal/detail/".enc_url($row->NIK)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("warga_meninggal/update/".enc_url($row->NIK)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("warga_meninggal/delete/".enc_url($row->NIK)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('warga_meninggal_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('warga_meninggal_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "NIK" => $row->NIK,
          "tgl_meninggal" => $row->tgl_meninggal,
          "no_dokumen" => $row->no_dokumen,
          "lampiran" => $row->lampiran,
          "keterangan" => $row->keterangan,
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('warga_meninggal_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("warga_meninggal/add_action"),
                  'NIK' => set_value("NIK"),
                  'tgl_meninggal' => set_value("tgl_meninggal"),
                  'no_dokumen' => set_value("no_dokumen"),
                  'lampiran' => set_value("lampiran"),
                  'keterangan' => set_value("keterangan"),
                  'list_nik' => $this->model->get_nik(),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('warga_meninggal_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("NIK","* NIK","trim|xss_clean|required");
    $this->form_validation->set_rules("tgl_meninggal","* Tgl meninggal","trim|xss_clean|required");
    $this->form_validation->set_rules("no_dokumen","* No dokumen","trim|xss_clean");
    $this->form_validation->set_rules("lampiran","* Lampiran","trim|xss_clean");
    $this->form_validation->set_rules("keterangan","* Keterangan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['NIK'] = $this->input->post('NIK',true);
      $save_data['tgl_meninggal'] = date("Y-m-d",  strtotime($this->input->post('tgl_meninggal', true)));
      $save_data['no_dokumen'] = $this->input->post('no_dokumen',true);
      $save_data['lampiran'] = $this->imageCopy($this->input->post('lampiran',true),$_POST['file-dir-lampiran']);
      $save_data['keterangan'] = $this->input->post('keterangan',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("warga_meninggal");
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
  $this->is_allowed('warga_meninggal_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("warga_meninggal/update_action/$id"),
                  'NIK' => set_value("NIK", $row->NIK),
                  'tgl_meninggal' => $row->tgl_meninggal == "" ? "":date("Y-m-d",  strtotime($row->tgl_meninggal)),
                  'no_dokumen' => set_value("no_dokumen", $row->no_dokumen),
                  'lampiran' => set_value("lampiran", $row->lampiran),
                  'keterangan' => set_value("keterangan", $row->keterangan),
                  'list_nik' => $this->model->get_nik(),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('warga_meninggal_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("NIK","* NIK","trim|xss_clean|required");
    $this->form_validation->set_rules("tgl_meninggal","* Tgl meninggal","trim|xss_clean|required");
    $this->form_validation->set_rules("no_dokumen","* No dokumen","trim|xss_clean");
    $this->form_validation->set_rules("lampiran","* Lampiran","trim|xss_clean");
    $this->form_validation->set_rules("keterangan","* Keterangan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['NIK'] = $this->input->post('NIK',true);
      $save_data['tgl_meninggal'] = date("Y-m-d",  strtotime($this->input->post('tgl_meninggal', true)));
      $save_data['no_dokumen'] = $this->input->post('no_dokumen',true);
      $save_data['lampiran'] = $this->imageCopy($this->input->post('lampiran',true),$_POST['file-dir-lampiran']);
      $save_data['keterangan'] = $this->input->post('keterangan',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("warga_meninggal");
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
    if (!is_allowed('warga_meninggal_delete')) {
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

/* End of file Warga_meninggal.php */
/* Location: ./application/modules/warga_meninggal/controllers/backend/Warga_meninggal.php */
