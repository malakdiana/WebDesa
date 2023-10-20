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


class Lampiran_dokumen extends Backend{

private $title = "Lampiran Dokumen";


public function __construct()
{
  $config = array(
    'title' => $this->title,
   );
  parent::__construct($config);
  $this->load->model("Lampiran_dokumen_model","model");
}

function index()
{
  $this->is_allowed('lampiran_dokumen_list');
  $this->template->set_title($this->title);
  $this->template->view("index");
}

function json()
{
  if ($this->input->is_ajax_request()) {
    if (!is_allowed('lampiran_dokumen_list')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $list = $this->model->get_datatables();
    
    $data = array();
    foreach ($list as $row) {
        $file =  $row->lampiran;
        $file_types =explode(".",$file);
        $rows = array();
                $rows[] = $row->NIK;
                $rows[] = $row->nama_dokumen;
                $rows[] = $row->nomor;
                $rows[] = date("d-m-Y",  strtotime($row->tgl_terbit));
                $rows[] = date("d-m-Y",  strtotime($row->masa_berlaku));
                $rows[] = $file_types[1] =='pdf' ? '<a href="'.base_url("_temp/uploads/img/".$file).'">Download</a>': is_image($row->lampiran,'','width:auto;height:40px');
                $rows[] = $row->ket;
                $rows[] = date("d-m-Y H:i",  strtotime($row->createdat));
                $rows[] = date("d-m-Y H:i",  strtotime($row->modified));
        
        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="'.url("lampiran_dokumen/detail/".enc_url($row->id)).'" id="detail" class="btn btn-primary" title="'.cclang("detail").'">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="'.url("lampiran_dokumen/update/".enc_url($row->id)).'" id="update" class="btn btn-warning" title="'.cclang("update").'">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="'.url("lampiran_dokumen/delete/".enc_url($row->id)).'" id="delete" class="btn btn-danger" title="'.cclang("delete").'">
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
  if(!is_allowed('lampiran_dokumen_filter'))
  {
    echo "access not permission";
  }else{
    $this->template->view("filter",[],false);
  }
}

function detail($id)
{
  $this->is_allowed('lampiran_dokumen_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
    $this->template->set_title("Detail ".$this->title);
    $data = array(
          "nik" => $row->NIK,
          "id_dokumen" => $row->nama_dokumen,
          "nomor" => $row->nomor,
          "tgl_terbit" => $row->tgl_terbit,
          "masa_berlaku" => $row->masa_berlaku,
          "lampiran" => $row->lampiran,
          "ket" => $row->ket,
          "createdat" => $row->createdat,
          "modified" => $row->modified,
          'list_nik' => $this->model->get_nik(),
    );
    $this->template->view("view",$data);
  }else{
    $this->error404();
  }
}

function add()
{
  $this->is_allowed('lampiran_dokumen_add');
  $this->template->set_title(cclang("add")." ".$this->title);
  $data = array('action' => url("lampiran_dokumen/add_action"),
                  'nik' => set_value("nik"),
                  'id_dokumen' => set_value("id_dokumen"),
                  'nomor' => set_value("nomor"),
                  'tgl_terbit' => set_value("tgl_terbit"),
                  'masa_berlaku' => set_value("masa_berlaku"),
                  'lampiran' => set_value("lampiran"),
                  'ket' => set_value("ket"),
                  'list_nik' => $this->model->get_nik(),
                  );
  $this->template->view("add",$data);
}

function add_action()
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('lampiran_dokumen_add')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nik","* NIK","trim|xss_clean");
    $this->form_validation->set_rules("id_dokumen","* Id dokumen","trim|xss_clean");
    $this->form_validation->set_rules("nomor","* Nomor","trim|xss_clean|required");
    $this->form_validation->set_rules("tgl_terbit","* Tanggal terbit","trim|xss_clean");
    $this->form_validation->set_rules("masa_berlaku","* Masa berlaku","trim|xss_clean");
    $this->form_validation->set_rules("lampiran","* Lampiran","trim|xss_clean");
    $this->form_validation->set_rules("ket","* Keterangan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nik'] = $this->input->post('nik',true);
      $save_data['id_dokumen'] = $this->input->post('id_dokumen',true);
      $save_data['nomor'] = $this->input->post('nomor',true);
      $save_data['tgl_terbit'] = date("Y-m-d",  strtotime($this->input->post('tgl_terbit', true)));
      $save_data['masa_berlaku'] = date("Y-m-d",  strtotime($this->input->post('masa_berlaku', true)));
      $save_data['lampiran'] = $this->imageCopy($this->input->post('lampiran',true),$_POST['file-dir-lampiran']);
      $save_data['ket'] = $this->input->post('ket',true);

      $this->model->insert($save_data);

      set_message("success",cclang("notif_save"));
      $json['redirect'] = url("lampiran_dokumen");
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
  $this->is_allowed('lampiran_dokumen_update');
  if ($row = $this->model->find(dec_url($id))) {
    $this->template->set_title(cclang("update")." ".$this->title);
    $data = array('action' => url("lampiran_dokumen/update_action/$id"),
                  'nik' => set_value("nik", $row->nik),
                  'id_dokumen' => set_value("id_dokumen", $row->id_dokumen),
                  'nomor' => set_value("nomor", $row->nomor),
                  'tgl_terbit' => $row->tgl_terbit == "" ? "":date("Y-m-d",  strtotime($row->tgl_terbit)),
                  'masa_berlaku' => $row->masa_berlaku == "" ? "":date("Y-m-d",  strtotime($row->masa_berlaku)),
                  'lampiran' => set_value("lampiran", $row->lampiran),
                  'ket' => set_value("ket", $row->ket),
                  );
    $this->template->view("update",$data);
  }else {
    $this->error404();
  }
}

function update_action($id)
{
  if($this->input->is_ajax_request()){
    if (!is_allowed('lampiran_dokumen_update')) {
      show_error("Access Permission", 403,'403::Access Not Permission');
      exit();
    }

    $json = array('success' => false);
    $this->form_validation->set_rules("nik","* NIK","trim|xss_clean");
    $this->form_validation->set_rules("id_dokumen","* Id dokumen","trim|xss_clean");
    $this->form_validation->set_rules("nomor","* Nomor","trim|xss_clean|required");
    $this->form_validation->set_rules("tgl_terbit","* Tanggal terbit","trim|xss_clean");
    $this->form_validation->set_rules("masa_berlaku","* Masa berlaku","trim|xss_clean");
    $this->form_validation->set_rules("lampiran","* Lampiran","trim|xss_clean");
    $this->form_validation->set_rules("ket","* Keterangan","trim|xss_clean");
    $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">','</i>');

    if ($this->form_validation->run()) {
      $save_data['nik'] = $this->input->post('nik',true);
      $save_data['id_dokumen'] = $this->input->post('id_dokumen',true);
      $save_data['nomor'] = $this->input->post('nomor',true);
      $save_data['tgl_terbit'] = date("Y-m-d",  strtotime($this->input->post('tgl_terbit', true)));
      $save_data['masa_berlaku'] = date("Y-m-d",  strtotime($this->input->post('masa_berlaku', true)));
      $save_data['lampiran'] = $this->imageCopy($this->input->post('lampiran',true),$_POST['file-dir-lampiran']);
      $save_data['ket'] = $this->input->post('ket',true);

      $save = $this->model->change(dec_url($id), $save_data);

      set_message("success",cclang("notif_update"));

      $json['redirect'] = url("lampiran_dokumen");
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
    if (!is_allowed('lampiran_dokumen_delete')) {
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

/* End of file Lampiran_dokumen.php */
/* Location: ./application/modules/lampiran_dokumen/controllers/backend/Lampiran_dokumen.php */
