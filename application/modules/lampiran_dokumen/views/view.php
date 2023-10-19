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
          <td><?=$nik?></td>
        </tr>
        <tr>
          <td>Id dokumen</td>
          <td><?=$id_dokumen?></td>
        </tr>
        <tr>
          <td>Nomor</td>
          <td><?=$nomor?></td>
        </tr>
      <tr>
        <td>Tanggal terbit</td>
        <td><?=$tgl_terbit != "" ? date('d-m-Y',strtotime($tgl_terbit)):""?></td>
      </tr>
      <tr>
        <td>Masa berlaku</td>
        <td><?=$masa_berlaku != "" ? date('d-m-Y',strtotime($masa_berlaku)):""?></td>
      </tr>
        <tr>
          <td>Lampiran</td>
          <td><?=is_image($lampiran)?></td>
        </tr>
        <tr>
          <td>Keterangan</td>
          <td><?=$ket?></td>
        </tr>
        <tr>
          <td>Createdat</td>
          <td><?=$createdat != "" ? date('d-m-Y H:i',strtotime($createdat)):""?></td>
        </tr>
        <tr>
          <td>Modified</td>
          <td><?=$modified != "" ? date('d-m-Y H:i',strtotime($modified)):""?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
