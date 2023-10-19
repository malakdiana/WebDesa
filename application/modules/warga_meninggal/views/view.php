<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>NIK</td>
          <td><?=$NIK?></td>
        </tr>
      <tr>
        <td>Tgl meninggal</td>
        <td><?=$tgl_meninggal != "" ? date('d-m-Y',strtotime($tgl_meninggal)):""?></td>
      </tr>
        <tr>
          <td>No dokumen</td>
          <td><?=$no_dokumen?></td>
        </tr>
        <tr>
          <td>Lampiran</td>
          <td><?=is_image($lampiran)?></td>
        </tr>
        <tr>
          <td>Keterangan</td>
          <td><?=$keterangan?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
