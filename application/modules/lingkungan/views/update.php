<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" autocomplete="off">
          
          <div class="form-group">
            <label>Kode</label>
            <input type="text" class="form-control form-control-sm" placeholder="Kode" name="kode" id="kode" value="<?=$kode?>">
          </div>
        
          <div class="form-group">
            <label>Nama lingkungan</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama lingkungan" name="nama_lingkungan" id="nama_lingkungan" value="<?=$nama_lingkungan?>">
          </div>
        
          <div class="form-group">
            <label>NIK Kepala Lingkungan</label>
            <!--
              app_helper.php - methode is_radio
              is_radio("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?=is_radio("personal","nik_kepling","NIK","NIK","$nik_kepling");?>
          </div>
        
          <div class="form-group">
            <label>Total warga</label>
            <input type="number" class="form-control form-control-sm" placeholder="Total warga" name="total_warga" id="total_warga" value="<?=$total_warga?>">
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
