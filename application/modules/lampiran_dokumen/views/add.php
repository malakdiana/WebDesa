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
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?=is_select("personal","nik","NIK","NIK");?>
          </div>

          <div class="form-group">
            <label>Id dokumen</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?=is_select("dokumen","id_dokumen","id_dokumen","nama_dokumen");?>
          </div>

          <div class="form-group">
            <label>Nomor</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nomor" name="nomor" id="nomor">
          </div>

          <div class="form-group">
            <label>Tanggal terbit</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tanggal terbit" name="tgl_terbit" id="tgl_terbit">
          </div>

          <div class="form-group">
            <label>Masa berlaku</label>
            <input type="date" class="form-control form-control-sm" placeholder="Masa berlaku" name="masa_berlaku" id="masa_berlaku">
          </div>

          <div class="form-group">
            <label>Lampiran</label>
            <input type="file" name="img" class="file-upload-default" data-id="lampiran" style="display: none;"/>
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-lampiran" data-id="lampiran"/>
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="lampiran" placeholder="Lampiran" readonly name="lampiran" />
            <span class="input-group-append">
              <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="lampiran" style="display:<?=$lampiran!=''?'block':'none'?>;"><i class="ti-trash"></i></button>
              <button class="file-upload-browse btn btn-primary btn-sm" data-id="lampiran" type="button">Select File</button>
            </span>
            </div>
            <div id="lampiran"></div>
          </div>

          <div class="form-group">
            <label>Keterangan</label>
            <textarea class="form-control form-control-sm" placeholder="Keterangan" name="ket" id="ket" rows="3" cols="80"></textarea>
          </div>

          <input type="hidden" name="submit" value="add">

          <div class="text-right">
            <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger"><?=cclang("cancel")?></a>
            <button type="submit" id="submit"  class="btn btn-sm btn-primary"><?=cclang("save")?></button>
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
