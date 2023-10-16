<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" autocomplete="off">
          
          <div class="form-group">
            <label>NIK</label>
            <input type="number" class="form-control form-control-sm" placeholder="NIK" name="NIK" id="NIK" value="<?=$NIK?>">
          </div>
        
          <div class="form-group">
            <label>Nama lengkap</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama lengkap" name="nama_lengkap" id="nama_lengkap" value="<?=$nama_lengkap?>">
          </div>
        
          <div class="form-group">
            <label>Tempat lahir</label>
            <input type="text" class="form-control form-control-sm" placeholder="Tempat lahir" name="tempat_lahir" id="tempat_lahir" value="<?=$tempat_lahir?>">
          </div>
        
          <div class="form-group">
            <label>Tgl lahir</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tgl lahir" name="tgl_lahir" id="tgl_lahir" value="<?=$tgl_lahir?>">
          </div>
        
          <div class="form-group">
            <label>Jenis kelamin</label>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" <?=($jenis_kelamin == "Laki-laki" ? "checked":"")?> class="form-check-input" name="jenis_kelamin" value="Laki-laki">
                Laki-laki
                <i class="input-helper"></i>
              </label>
            </div>
            <div class="form-check">
              <label class="form-check-label">
                <input type="radio" <?=($jenis_kelamin == "Perempuan" ? "checked":"")?> class="form-check-input" name="jenis_kelamin" value="Perempuan">
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
              <option <?=($agama == "Budha" ? "selected":"")?> value="Budha">Budha</option>
              <option <?=($agama == "Hindu" ? "selected":"")?> value="Hindu">Hindu</option>
              <option <?=($agama == "Islam" ? "selected":"")?> value="Islam">Islam</option>
              <option <?=($agama == "Kristen" ? "selected":"")?> value="Kristen">Kristen</option>
              <option <?=($agama == "Katolik" ? "selected":"")?> value="Katolik">Katolik</option>
              <option <?=($agama == "Konghucu" ? "selected":"")?> value="Konghucu">Konghucu</option>
            </select>
          </div>
        
          <div class="form-group">
            <label>Pendidikan</label>
            <input type="text" class="form-control form-control-sm" placeholder="Pendidikan" name="pendidikan" id="pendidikan" value="<?=$pendidikan?>">
          </div>
        
          <div class="form-group">
            <label>Pekerjaan</label>
            <input type="text" class="form-control form-control-sm" placeholder="Pekerjaan" name="pekerjaan" id="pekerjaan" value="<?=$pekerjaan?>">
          </div>
        
          <div class="form-group">
            <label>Gol darah</label>
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="gol_darah" id="gol_darah">
              <option value=""></option>
              <option <?=($gol_darah == "A" ? "selected":"")?> value="A">A</option>
              <option <?=($gol_darah == "B" ? "selected":"")?> value="B">B</option>
              <option <?=($gol_darah == "O" ? "selected":"")?> value="O">O</option>
              <option <?=($gol_darah == "B" ? "selected":"")?> value="B">B</option>
            </select>
          </div>
        
          <div class="form-group">
            <label>Cacat</label>
            <input type="text" class="form-control form-control-sm" placeholder="Cacat" name="cacat" id="cacat" value="<?=$cacat?>">
          </div>
        
          <div class="form-group">
            <label>Status kawin</label>
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="status_kawin" id="status_kawin">
              <option value=""></option>
              <option <?=($status_kawin == "Belum Kawin" ? "selected":"")?> value="Belum Kawin">Belum Kawin</option>
              <option <?=($status_kawin == "Kawin" ? "selected":"")?> value="Kawin">Kawin</option>
              <option <?=($status_kawin == "Cerai Hidup" ? "selected":"")?> value="Cerai Hidup">Cerai Hidup</option>
              <option <?=($status_kawin == "Cerai Mati" ? "selected":"")?> value="Cerai Mati">Cerai Mati</option>
            </select>
          </div>
        
          <div class="form-group">
            <label>Hubungan keluarga</label>
            <input type="text" class="form-control form-control-sm" placeholder="Hubungan keluarga" name="hub_keluarga" id="hub_keluarga" value="<?=$hub_keluarga?>">
          </div>
        
          <div class="form-group">
            <label>Warga negara</label>
            <input type="text" class="form-control form-control-sm" placeholder="Warga negara" name="warga_negara" id="warga_negara" value="<?=$warga_negara?>">
          </div>
        
          <div class="form-group">
            <label>Suku</label>
            <input type="text" class="form-control form-control-sm" placeholder="Suku" name="suku" id="suku" value="<?=$suku?>">
          </div>
        
          <div class="form-group">
            <label>NIK Ayah</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?=is_select("personal","nik_ayah","NIK","NIK","$nik_ayah");?>
          </div>
        
          <div class="form-group">
            <label>NIK ibu</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?=is_select("personal","nik_ibu","NIK","NIK","$nik_ibu");?>
          </div>
        
          <div class="form-group">
            <label>Status kependudukan</label>
            <input type="text" class="form-control form-control-sm" placeholder="Status kependudukan" name="status_kependudukan" id="status_kependudukan" value="<?=$status_kependudukan?>">
          </div>
        
          <div class="form-group">
            <label>Nomor HP</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nomor HP" name="hp" id="hp" value="<?=$hp?>">
          </div>
        
          <div class="form-group">
            <label>Email</label>
            <input type="text" class="form-control form-control-sm" placeholder="Email" name="email" id="email" value="<?=$email?>">
          </div>
        
          <div class="form-group">
            <label>Alamat</label>
            <textarea class="form-control form-control-sm" placeholder="Alamat" name="alamat" id="alamat" rows="3" cols="80"><?=$alamat?></textarea>
          </div>
        
          <div class="form-group">
            <label>Status rumah</label>
            <input type="text" class="form-control form-control-sm" placeholder="Status rumah" name="status_rumah" id="status_rumah" value="<?=$status_rumah?>">
          </div>
        
          <div class="form-group">
            <label>Image</label>
            <input type="file" name="img" class="file-upload-default" data-id="image"/>
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-image" data-id="image"/>
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="image" placeholder="Image" readonly name="image" value="<?=$image?>" />
            <span class="input-group-append">
              <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="image" style="display:<?=$image!=''?'block':'none'?>;"><i class="ti-trash"></i></button>
              <button class="file-upload-browse btn btn-primary btn-sm" data-id="image" type="button">Select File</button>
            </span>
            </div>
            <div id="image"></div>
          </div>
        
          <input type="hidden" name="submit" value="update">

          <div class="text-right">
            <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger"><?=cclang("cancel")?></a>
            <button type="submit" id="submit"  class="btn btn-sm btn-primary"><?=cclang("update")?></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
$("#form").submit(function(e){
e.preventDefault();
var me = $(this);
$("#submit").prop('disabled',true).html('Loading...');
$(".form-group").find('.text-danger').remove();
$.ajax({
      url             : me.attr('action'),
      type            : 'post',
      data            :  new FormData(this),
      contentType     : false,
      cache           : false,
      dataType        : 'JSON',
      processData     :false,
      success:function(json){
        if (json.success==true) {
          location.href = json.redirect;
          return;
        }else {
          $("#submit").prop('disabled',false)
                      .html('<?=cclang("save")?>');
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
