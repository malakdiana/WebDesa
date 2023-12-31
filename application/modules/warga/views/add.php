<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div>
      <div class="card-body">
        <form action="<?= $action ?>" id="form" autocomplete="off">

          <div class="form-group">
            <label>NIK</label>
            <input type="number" class="form-control form-control-sm" placeholder="NIK" name="NIK" id="NIK">
          </div>

          <div class="form-group">
            <label>Nama lengkap</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama lengkap" name="nama_lengkap" id="nama_lengkap">
          </div>

          <div class="form-group">
            <label>Tempat lahir</label>
            <input type="text" class="form-control form-control-sm" placeholder="Tempat lahir" name="tempat_lahir" id="tempat_lahir">
          </div>

          <div class="form-group">
            <label>Tgl lahir</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tgl lahir" name="tgl_lahir" id="tgl_lahir">
          </div>

          <div class="form-group">
            <label>Jenis kelamin</label>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="jenis_kelamin" value="Laki-laki">
                Laki-laki
                <i class="input-helper"></i>
              </label>
            </div>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" class="form-check-input" name="jenis_kelamin" value="Perempuan">
                Perempuan
                <i class="input-helper"></i>
              </label>
            </div>
            <div id="jenis_kelamin"></div>
          </div>

          <div class="form-group">
            <label>Agama</label>
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="agama" id="agama">
              <option value=""></option>
              <option value="Budha">Budha</option>
              <option value="Hindu">Hindu</option>
              <option value="Islam">Islam</option>
              <option value="Kristen">Kristen</option>
              <option value="Katolik">Katolik</option>
              <option value="Konghucu">Konghucu</option>
            </select>
          </div>

          <div class="form-group">
            <label>Pendidikan</label>
            <!-- <input type="text" class="form-control form-control-sm" placeholder="Pendidikan" name="pendidikan" id="pendidikan"> -->
            <select name="pendidikan" data-placeholder="-- Select -- " class="form-control form-control-sm select2" id="pendidikan">
              <option value=""></option>
              <option value="SD">SD</option>
              <option value="SMP">SMP</option>
              <option value="SMA/SMK">SMA/SMK</option>
              <option value="Diploma 1">Diploma 1</option>
              <option value="Diploma 2">Diploma 2</option>
              <option value="Diploma 3">Diploma 3</option>
              <option value="Diploma 4">Diploma 4</option>
              <option value="S1">S1</option>
              <option value="S2">S2</option>
            </select>
          </div>

          <div class="form-group">
            <label>Pekerjaan</label>
            <input type="text" class="form-control form-control-sm" placeholder="Pekerjaan" name="pekerjaan" id="pekerjaan">
          </div>

          <div class="form-group">
            <label>Gol darah</label>
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="gol_darah" id="gol_darah">
              <option value=""></option>
              <option value="A">A</option>
              <option value="B">B</option>
              <option value="O">O</option>
              <option value="AB">AB</option>
            </select>
          </div>

          <div class="form-group">
            <label>Cacat</label>
            <input type="text" class="form-control form-control-sm" placeholder="Cacat" name="cacat" id="cacat">
          </div>

          <div class="form-group">
            <label>Status kawin</label>
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="status_kawin" id="status_kawin">
              <option value=""></option>
              <option value="Belum Kawin">Belum Kawin</option>
              <option value="Kawin">Kawin</option>
              <option value="Cerai Hidup">Cerai Hidup</option>
              <option value="Cerai Mati">Cerai Mati</option>
            </select>
          </div>

          <div class="form-group">
            <label>Hubungan keluarga</label>
            <input type="text" class="form-control form-control-sm" placeholder="Hubungan keluarga" name="hub_keluarga" id="hub_keluarga">
          </div>

          <div class="form-group">
            <label>Warga negara</label>
            <input type="text" class="form-control form-control-sm" placeholder="Warga negara" name="warga_negara" id="warga_negara">
          </div>

          <div class="form-group">
            <label>Suku</label>
            <input type="text" class="form-control form-control-sm" placeholder="Suku" name="suku" id="suku">
          </div>

          <div class="form-group">
            <label>NIK Ayah</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <!-- <?= is_select("personal", "nik_ayah", "NIK", "NIK"); ?> -->
            <input type="text" class="form-control form-control-sm" placeholder="NIK AYAH" name="nik_ayah" id="nik_ayah">
            <!-- <select name="nik_ayah" id="nik_ayah" class="form-control form-control-sm select2 select2-hidden-accessible"> -->
        
          </div>

          <div class="form-group">
            <label>NIK ibu</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <!-- <?= is_select("personal", "nik_ibu", "NIK", "NIK"); ?>  -->
            <input type="text" class="form-control form-control-sm" placeholder="NIK IBU" name="nik_ibu" id="nik_ibu">
            
          </div>

          <div class="form-group">
            <label>Status kependudukan</label>
            <input type="text" class="form-control form-control-sm" placeholder="Status kependudukan" name="status_kependudukan" id="status_kependudukan">
          </div>

          <div class="form-group">
            <label>Nomor HP</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nomor HP" name="hp" id="hp">
          </div>

          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control form-control-sm" placeholder="Email" name="email" id="email">
          </div>

          <div class="form-group">
            <label>Alamat</label>
            <textarea class="form-control form-control-sm" placeholder="Alamat" name="alamat" id="alamat" rows="3" cols="80"></textarea>
          </div>

          <div class="form-group">
            <label>Status rumah</label>
            <input type="text" class="form-control form-control-sm" placeholder="Status rumah" name="status_rumah" id="status_rumah">
          </div>

          <div class="form-group">
            <label>lingkungan</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?=is_select("lingkungan","id_lingkungan","kode","nama_lingkungan");?>
          </div>


          <div class="form-group">
            <label>Image</label>
            <input type="file" name="img" class="file-upload-default" data-id="image" style="display: none;" />
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-image" data-id="image" />
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="image" placeholder="Image" readonly name="image" />
              <span class="input-group-append">
                <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="image" style="display:<?= $image != '' ? 'block' : 'none' ?>;"><i class="ti-trash"></i></button>
                <button class="file-upload-browse btn btn-primary btn-sm" data-id="image" type="button">Select File</button>
              </span>
            </div>
            <div id="image"></div>
          </div>

          <input type="hidden" name="submit" value="add">

          <div class="text-right">
            <a href="<?= url($this->uri->segment(2)) ?>" class="btn btn-sm btn-danger"><?= cclang("cancel") ?></a>
            <button type="submit" id="submit" class="btn btn-sm btn-primary"><?= cclang("save") ?></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
  $("#form").submit(function(e) {
    e.preventDefault();
    var me = $(this);
    $("#submit").prop('disabled', true).html('Loading...');
    $(".form-group").find('.text-danger').remove();
    $.ajax({
      url: me.attr('action'),
      type: 'post',
      data: new FormData(this),
      contentType: false,
      cache: false,
      dataType: 'JSON',
      processData: false,
      success: function(json) {
        if (json.success == true) {
          location.href = json.redirect;
          return;
        } else {
          $("#submit").prop('disabled', false)
            .html('<?= cclang("save") ?>');
          $.each(json.alert, function(key, value) {
            var element = $('#' + key);
            $(element)
              .closest('.form-group')
              .find('.text-danger').remove();
            $(element).after(value);
          });
        }
      }
    });
  });
</script>