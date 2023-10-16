<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>Kode</td>
          <td><?=$kode?></td>
        </tr>
        <tr>
          <td>Nama lingkungan</td>
          <td><?=$nama_lingkungan?></td>
        </tr>
        <tr>
          <td>NIK Kepala Lingkungan</td>
          <td><?=$nik_kepling?></td>
        </tr>
        <tr>
          <td>Total warga</td>
          <td><?=$total_warga?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
