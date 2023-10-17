<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 15/10/2023 22:39*/
/*| Please DO NOT modify this information*/


class Lampiran_dokumen extends Backend
{

  private $title = "Lampiran Dokumen";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("Lampiran_dokumen_model", "model");
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
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->NIK;
        $rows[] = $row->nama_dokumen;
        $rows[] = is_image($row->lampiran);
        $rows[] = $row->ket;
        $rows[] = $row->createdat != "" ? date("d-m-Y H:i",  strtotime($row->createdat)) : "";
        $rows[] = $row->modified != "" ? date("d-m-Y H:i",  strtotime($row->modified)) : "";

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("lampiran_dokumen/detail/" . enc_url($row->id)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("lampiran_dokumen/update/" . enc_url($row->id)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("lampiran_dokumen/delete/" . enc_url($row->id)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
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
    if (!is_allowed('lampiran_dokumen_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    $this->is_allowed('lampiran_dokumen_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "nik" => $row->NIK,
        "id_dokumen" => $row->nama_dokumen,
        "lampiran" => $row->lampiran,
        "ket" => $row->ket,
        "createdat" => $row->createdat,
        "modified" => $row->modified,
      );
      $this->template->view("view", $data);
    } else {
      $this->error404();
    }
  }

  function add()
  {
    $this->is_allowed('lampiran_dokumen_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    $data = array(
      'action' => url("lampiran_dokumen/add_action"),
      'nik' => set_value("nik"),
      'warga' => $this->db->get('personal')->result(),
      'id_dokumen' => set_value("id_dokumen"),
      'lampiran' => set_value("lampiran"),
      'ket' => set_value("ket"),
    );

    // var_dump($data['warga']);
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('lampiran_dokumen_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nik", "* NIK", "trim|xss_clean");
      $this->form_validation->set_rules("id_dokumen", "* Dokumen", "trim|xss_clean");
      $this->form_validation->set_rules("lampiran", "* Lampiran", "trim|xss_clean");
      $this->form_validation->set_rules("ket", "* Ket", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nik'] = $this->input->post('nik', true);
        $save_data['id_dokumen'] = $this->input->post('id_dokumen', true);
        $save_data['lampiran'] = $this->imageCopy($this->input->post('lampiran', true), $_POST['file-dir-lampiran']);
        $save_data['ket'] = $this->input->post('ket', true);

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("lampiran_dokumen");
        $json['success'] = true;
      } else {
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
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("lampiran_dokumen/update_action/$id"),
        'nik' => set_value("nik", $row->nik),
        'id_dokumen' => set_value("id_dokumen", $row->id_dokumen),
        'lampiran' => set_value("lampiran", $row->lampiran),
        'ket' => set_value("ket", $row->ket),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('lampiran_dokumen_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("nik", "* NIK", "trim|xss_clean");
      $this->form_validation->set_rules("id_dokumen", "* Dokumen", "trim|xss_clean");
      $this->form_validation->set_rules("lampiran", "* Lampiran", "trim|xss_clean");
      $this->form_validation->set_rules("ket", "* Ket", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['nik'] = $this->input->post('nik', true);
        $save_data['id_dokumen'] = $this->input->post('id_dokumen', true);
        $save_data['lampiran'] = $this->imageCopy($this->input->post('lampiran', true), $_POST['file-dir-lampiran']);
        $save_data['ket'] = $this->input->post('ket', true);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("lampiran_dokumen");
        $json['success'] = true;
      } else {
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
