<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card-header bg-primary text-white">
      <?=ucwords($title_module)?>
    </div>
    <div class="card">
      <div class="card-body">
        <table class="table table-bordered table-striped">
        <tr>
          <td>Nama desa</td>
          <td><?=$nama_desa?></td>
        </tr>
        <tr>
          <td>Kecamatan</td>
          <td><?=$kecamatan?></td>
        </tr>
        <tr>
          <td>Jenis daerah</td>
          <td><?=$jenis_daerah?></td>
        </tr>
        <tr>
          <td>Kota / Kabupaten</td>
          <td><?=$kota?></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td><?=$alamat?></td>
        </tr>
        <tr>
          <td>Telepon</td>
          <td><?=$telepon?></td>
        </tr>
        <tr>
          <td>Kodepos</td>
          <td><?=$kodepos?></td>
        </tr>
        <tr>
          <td>Logo</td>
          <td><?=is_image($logo)?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
