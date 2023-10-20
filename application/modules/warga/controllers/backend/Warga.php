<?php defined('BASEPATH') or exit('No direct script access allowed');
/*| --------------------------------------------------------------------------*/
/*| dev : royyan  */
/*| version : V.0.0.2 */
/*| facebook :  */
/*| fanspage :  */
/*| instagram :  */
/*| youtube :  */
/*| --------------------------------------------------------------------------*/
/*| Generate By M-CRUD Generator 16/10/2023 09:09*/
/*| Please DO NOT modify this information*/


class Warga extends Backend
{

  private $title = "Warga";


  public function __construct()
  {
    $config = array(
      'title' => $this->title,
    );
    parent::__construct($config);
    $this->load->model("Warga_model", "model");
  }

  function index()
  {
    $this->is_allowed('warga_list');
    $this->template->set_title($this->title);
    $this->template->view("index");
  }

  function cetak()
  {
    $data['cetak'] = 'tes';
    $this->load->library('mypdf');
    $this->mypdf->generate('dompdf');
  }

  function json()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('warga_list')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $list = $this->model->get_datatables();
      $data = array();
      foreach ($list as $row) {
        $rows = array();
        $rows[] = $row->tes;
        $rows[] = $row->nama_lengkap;
        $rows[] = $row->tempat_lahir;
        $rows[] = date("d-m-Y",  strtotime($row->tgl_lahir));
        $rows[] = $row->jenis_kelamin;
        $rows[] = $row->agama;
        $rows[] = $row->pendidikan;
        $rows[] = $row->pekerjaan;
        $rows[] = $row->gol_darah;
        $rows[] = $row->cacat;
        $rows[] = $row->status_kawin;
        $rows[] = $row->hub_keluarga;
        $rows[] = $row->warga_negara;
        $rows[] = $row->suku;
        $rows[] = $row->ayah;
        $rows[] = $row->ibu;
        $rows[] = $row->status_kependudukan;
        $rows[] = $row->hp;
        $rows[] = $row->email;
        $rows[] = $row->alamat;
        $rows[] = $row->status_rumah;
        $rows[] = $row->nama_lingkungan;
        $rows[] = is_image($row->image, '', 'width:auto;height:40px');
        $rows[] = date("d-m-Y H:i",  strtotime($row->createdat));
        $rows[] = date("d-m-Y H:i",  strtotime($row->modified));

        $rows[] = '
                  <div class="btn-group" role="group" aria-label="Basic example">
                      <a href="' . url("cetak/cetak/" . enc_url($row->tes)) . '" id="cetak" class="btn btn-success" title="' . cclang("print") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("warga/detail/" . enc_url($row->tes)) . '" id="detail" class="btn btn-primary" title="' . cclang("detail") . '">
                        <i class="mdi mdi-file"></i>
                      </a>
                      <a href="' . url("warga/update/" . enc_url($row->tes)) . '" id="update" class="btn btn-warning" title="' . cclang("update") . '">
                        <i class="ti-pencil"></i>
                      </a>
                      <a href="' . url("warga/delete/" . enc_url($row->tes)) . '" id="delete" class="btn btn-danger" title="' . cclang("delete") . '">
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
    if (!is_allowed('warga_filter')) {
      echo "access not permission";
    } else {
      $this->template->view("filter", [], false);
    }
  }

  function detail($id)
  {
    $this->is_allowed('warga_detail');
    if ($row = $this->model->get_detail(dec_url($id))) {
      $this->template->set_title("Detail " . $this->title);
      $data = array(
        "NIK" => $row->NIK,
        "nama_lengkap" => $row->nama_lengkap,
        "tempat_lahir" => $row->tempat_lahir,
        "tgl_lahir" => $row->tgl_lahir,
        "jenis_kelamin" => $row->jenis_kelamin,
        "agama" => $row->agama,
        "pendidikan" => $row->pendidikan,
        "pekerjaan" => $row->pekerjaan,
        "gol_darah" => $row->gol_darah,
        "cacat" => $row->cacat,
        "status_kawin" => $row->status_kawin,
        "hub_keluarga" => $row->hub_keluarga,
        "warga_negara" => $row->warga_negara,
        "suku" => $row->suku,
        "nik_ayah" => $row->NIK,
        "nik_ibu" => $row->NIK,
        "status_kependudukan" => $row->status_kependudukan,
        "hp" => $row->hp,
        "email" => $row->email,
        "alamat" => $row->alamat,
        "status_rumah" => $row->status_rumah,
        "image" => $row->image,
        "id_lingkungan" => $row->id_lingkungan,
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
    $this->is_allowed('warga_add');
    $this->template->set_title(cclang("add") . " " . $this->title);
    // $data['selectnik'] = $this->model->get_nik();
    $data = array(
      'action' => url("warga/add_action"),
      'NIK' => set_value("NIK"),
      'nama_lengkap' => set_value("nama_lengkap"),
      'tempat_lahir' => set_value("tempat_lahir"),
      'tgl_lahir' => set_value("tgl_lahir"),
      'jenis_kelamin' => set_value("jenis_kelamin"),
      'agama' => set_value("agama"),
      'pendidikan' => set_value("pendidikan"),
      'pekerjaan' => set_value("pekerjaan"),
      'gol_darah' => set_value("gol_darah"),
      'cacat' => set_value("cacat"),
      'status_kawin' => set_value("status_kawin"),
      'hub_keluarga' => set_value("hub_keluarga"),
      'warga_negara' => set_value("warga_negara"),
      'suku' => set_value("suku"),
      'nik_ayah' => set_value("nik_ayah"),
      'nik_ibu' => set_value("nik_ibu"),
      'status_kependudukan' => set_value("status_kependudukan"),
      'hp' => set_value("hp"),
      'email' => set_value("email"),
      'alamat' => set_value("alamat"),
      'status_rumah' => set_value("status_rumah"),
      'image' => set_value("image"),
      'id_lingkungan' => set_value("id_lingkungan"),
      'list_nik_ayah' => $this->model->get_nik_ayah(),
      'list_nik_ibu' => $this->model->get_nik_ibu(),
    );

    //        echo var_dump($data['selectnik']);        
    $this->template->view("add", $data);
  }

  function add_action()
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('warga_add')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("NIK", "* NIK", "trim|xss_clean|required");
      $this->form_validation->set_rules("nama_lengkap", "* Nama lengkap", "trim|xss_clean|required");
      $this->form_validation->set_rules("tempat_lahir", "* Tempat lahir", "trim|xss_clean");
      $this->form_validation->set_rules("tgl_lahir", "* Tgl lahir", "trim|xss_clean");
      $this->form_validation->set_rules("jenis_kelamin", "* Jenis kelamin", "trim|xss_clean");
      $this->form_validation->set_rules("agama", "* Agama", "trim|xss_clean");
      $this->form_validation->set_rules("pendidikan", "* Pendidikan", "trim|xss_clean");
      $this->form_validation->set_rules("pekerjaan", "* Pekerjaan", "trim|xss_clean");
      $this->form_validation->set_rules("gol_darah", "* Gol darah", "trim|xss_clean");
      $this->form_validation->set_rules("cacat", "* Cacat", "trim|xss_clean");
      $this->form_validation->set_rules("status_kawin", "* Status kawin", "trim|xss_clean");
      $this->form_validation->set_rules("hub_keluarga", "* Hubungan keluarga", "trim|xss_clean");
      $this->form_validation->set_rules("warga_negara", "* Warga negara", "trim|xss_clean");
      $this->form_validation->set_rules("suku", "* Suku", "trim|xss_clean");
      // $this->form_validation->set_rules("nik_ayah","* NIK Ayah","trim|xss_clean");
      // $this->form_validation->set_rules("nik_ibu","* NIK ibu","trim|xss_clean");
      $this->form_validation->set_rules("status_kependudukan", "* Status kependudukan", "trim|xss_clean");
      $this->form_validation->set_rules("hp", "* Nomor HP", "trim|xss_clean");
      $this->form_validation->set_rules("email", "* Email", "trim|xss_clean|valid_email");
      $this->form_validation->set_rules("alamat", "* Alamat", "trim|xss_clean");
      $this->form_validation->set_rules("status_rumah", "* Status rumah", "trim|xss_clean");
      $this->form_validation->set_rules("image", "* Image", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {

        $post = $this->input->post(NULL, TRUE);

        $save_data['NIK'] = $this->input->post('NIK', true);
        $save_data['nama_lengkap'] = $this->input->post('nama_lengkap', true);
        $save_data['tempat_lahir'] = $this->input->post('tempat_lahir', true);
        $save_data['tgl_lahir'] = date("Y-m-d",  strtotime($this->input->post('tgl_lahir', true)));
        $save_data['jenis_kelamin'] = $this->input->post('jenis_kelamin', true);
        $save_data['agama'] = $this->input->post('agama', true);
        $save_data['pendidikan'] = $this->input->post('pendidikan', true);
        $save_data['pekerjaan'] = $this->input->post('pekerjaan', true);
        $save_data['gol_darah'] = $this->input->post('gol_darah', true);
        $save_data['cacat'] = $this->input->post('cacat', true);
        $save_data['status_kawin'] = $this->input->post('status_kawin', true);
        $save_data['hub_keluarga'] = $this->input->post('hub_keluarga', true);
        $save_data['warga_negara'] = $this->input->post('warga_negara', true);
        $save_data['suku'] = $this->input->post('suku', true);
        // $save_data['nik_ayah'] = $this->input->post('nik_ayah',true);
        // $save_data['nik_ibu'] = $this->input->post('nik_ibu',true);
        $save_data['status_kependudukan'] = $this->input->post('status_kependudukan', true);
        $save_data['hp'] = $this->input->post('hp', true);
        $save_data['email'] = $this->input->post('email', true);
        $save_data['alamat'] = $this->input->post('alamat', true);
        $save_data['status_rumah'] = $this->input->post('status_rumah', true);
        $save_data['id_lingkungan'] = $this->input->post('id_lingkungan', true);
        $save_data['createdat'] = date('Y-m-d H:i:s');
        $save_data['image'] = $this->imageCopy($this->input->post('image', true), $_POST['file-dir-image']);

        if ($post['nik_ayah'] != 0) {
          $save_data['nik_ayah'] = $this->input->post('nik_ayah', true);
        } else {
          $save_data['nik_ayah'] =  NULL;
        }

        if ($post['nik_ibu'] != 0) {
          $save_data['nik_ibu'] = $this->input->post('nik_ibu', true);
        } else {
          $save_data['nik_ibu'] =  NULL;
        }

        $this->model->insert($save_data);

        set_message("success", cclang("notif_save"));
        $json['redirect'] = url("warga");
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
    $this->is_allowed('warga_update');
    if ($row = $this->model->find(dec_url($id))) {
      $this->template->set_title(cclang("update") . " " . $this->title);
      $data = array(
        'action' => url("warga/update_action/$id"),
        'NIK' => set_value("NIK", $row->NIK),
        'nama_lengkap' => set_value("nama_lengkap", $row->nama_lengkap),
        'tempat_lahir' => set_value("tempat_lahir", $row->tempat_lahir),
        'tgl_lahir' => $row->tgl_lahir == "" ? "" : date("Y-m-d",  strtotime($row->tgl_lahir)),
        'jenis_kelamin' => set_value("jenis_kelamin", $row->jenis_kelamin),
        'agama' => set_value("agama", $row->agama),
        'pendidikan' => set_value("pendidikan", $row->pendidikan),
        'pekerjaan' => set_value("pekerjaan", $row->pekerjaan),
        'gol_darah' => set_value("gol_darah", $row->gol_darah),
        'cacat' => set_value("cacat", $row->cacat),
        'status_kawin' => set_value("status_kawin", $row->status_kawin),
        'hub_keluarga' => set_value("hub_keluarga", $row->hub_keluarga),
        'warga_negara' => set_value("warga_negara", $row->warga_negara),
        'suku' => set_value("suku", $row->suku),
        'nik_ayah' => set_value("nik_ayah", $row->nik_ayah),
        'nik_ibu' => set_value("nik_ibu", $row->nik_ibu),
        'status_kependudukan' => set_value("status_kependudukan", $row->status_kependudukan),
        'hp' => set_value("hp", $row->hp),
        'email' => set_value("email", $row->email),
        'alamat' => set_value("alamat", $row->alamat),
        'status_rumah' => set_value("status_rumah", $row->status_rumah),
        'image' => set_value("image", $row->image),
        'id_lingkungan' => set_value("id_lingkungan", $row->id_lingkungan),
        'list_nik_ayah' => $this->model->get_nik_ayah(),
        'list_nik_ibu' => $this->model->get_nik_ibu(),
      );
      $this->template->view("update", $data);
    } else {
      $this->error404();
    }
  }

  function update_action($id)
  {
    if ($this->input->is_ajax_request()) {
      if (!is_allowed('warga_update')) {
        show_error("Access Permission", 403, '403::Access Not Permission');
        exit();
      }

      $json = array('success' => false);
      $this->form_validation->set_rules("NIK", "* NIK", "trim|xss_clean|required");
      $this->form_validation->set_rules("nama_lengkap", "* Nama lengkap", "trim|xss_clean|required");
      $this->form_validation->set_rules("tempat_lahir", "* Tempat lahir", "trim|xss_clean");
      $this->form_validation->set_rules("tgl_lahir", "* Tgl lahir", "trim|xss_clean");
      $this->form_validation->set_rules("jenis_kelamin", "* Jenis kelamin", "trim|xss_clean");
      $this->form_validation->set_rules("agama", "* Agama", "trim|xss_clean");
      $this->form_validation->set_rules("pendidikan", "* Pendidikan", "trim|xss_clean");
      $this->form_validation->set_rules("pekerjaan", "* Pekerjaan", "trim|xss_clean");
      $this->form_validation->set_rules("gol_darah", "* Gol darah", "trim|xss_clean");
      $this->form_validation->set_rules("cacat", "* Cacat", "trim|xss_clean");
      $this->form_validation->set_rules("status_kawin", "* Status kawin", "trim|xss_clean");
      $this->form_validation->set_rules("hub_keluarga", "* Hubungan keluarga", "trim|xss_clean");
      $this->form_validation->set_rules("warga_negara", "* Warga negara", "trim|xss_clean");
      $this->form_validation->set_rules("suku", "* Suku", "trim|xss_clean");
      $this->form_validation->set_rules("nik_ayah", "* NIK Ayah", "trim|xss_clean");
      $this->form_validation->set_rules("nik_ibu", "* NIK ibu", "trim|xss_clean");
      $this->form_validation->set_rules("status_kependudukan", "* Status kependudukan", "trim|xss_clean");
      $this->form_validation->set_rules("hp", "* Nomor HP", "trim|xss_clean");
      $this->form_validation->set_rules("email", "* Email", "trim|xss_clean|valid_email");
      $this->form_validation->set_rules("alamat", "* Alamat", "trim|xss_clean");
      $this->form_validation->set_rules("status_rumah", "* Status rumah", "trim|xss_clean");
      $this->form_validation->set_rules("image", "* Image", "trim|xss_clean");
      $this->form_validation->set_error_delimiters('<i class="error text-danger" style="font-size:11px">', '</i>');

      if ($this->form_validation->run()) {
        $save_data['NIK'] = $this->input->post('NIK', true);
        $save_data['nama_lengkap'] = $this->input->post('nama_lengkap', true);
        $save_data['tempat_lahir'] = $this->input->post('tempat_lahir', true);
        $save_data['tgl_lahir'] = date("Y-m-d",  strtotime($this->input->post('tgl_lahir', true)));
        $save_data['jenis_kelamin'] = $this->input->post('jenis_kelamin', true);
        $save_data['agama'] = $this->input->post('agama', true);
        $save_data['pendidikan'] = $this->input->post('pendidikan', true);
        $save_data['pekerjaan'] = $this->input->post('pekerjaan', true);
        $save_data['gol_darah'] = $this->input->post('gol_darah', true);
        $save_data['cacat'] = $this->input->post('cacat', true);
        $save_data['status_kawin'] = $this->input->post('status_kawin', true);
        $save_data['hub_keluarga'] = $this->input->post('hub_keluarga', true);
        $save_data['warga_negara'] = $this->input->post('warga_negara', true);
        $save_data['suku'] = $this->input->post('suku', true);
        $save_data['nik_ayah'] = $this->input->post('nik_ayah', true);
        $save_data['nik_ibu'] = $this->input->post('nik_ibu', true);
        $save_data['status_kependudukan'] = $this->input->post('status_kependudukan', true);
        $save_data['hp'] = $this->input->post('hp', true);
        $save_data['email'] = $this->input->post('email', true);
        $save_data['alamat'] = $this->input->post('alamat', true);
        $save_data['status_rumah'] = $this->input->post('status_rumah', true);
        $save_data['id_lingkungan'] = $this->input->post('id_lingkungan', true);
        $save_data['modified'] = date('Y-m-d H:i:s');
        $save_data['image'] = $this->imageCopy($this->input->post('image', true), $_POST['file-dir-image']);

        $save = $this->model->change(dec_url($id), $save_data);

        set_message("success", cclang("notif_update"));

        $json['redirect'] = url("warga");
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
      if (!is_allowed('warga_delete')) {
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

/* End of file Warga.php */
/* Location: ./application/modules/warga/controllers/backend/Warga.php */
