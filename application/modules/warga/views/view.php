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
          <td>Nama lengkap</td>
          <td><?=$nama_lengkap?></td>
        </tr>
        <tr>
          <td>Tempat lahir</td>
          <td><?=$tempat_lahir?></td>
        </tr>
      <tr>
        <td>Tgl lahir</td>
        <td><?=$tgl_lahir != "" ? date('d-m-Y',strtotime($tgl_lahir)):""?></td>
      </tr>
        <tr>
          <td>Jenis kelamin</td>
          <td><?=$jenis_kelamin?></td>
        </tr>
        <tr>
          <td>Agama</td>
          <td><?=$agama?></td>
        </tr>
        <tr>
          <td>Pendidikan</td>
          <td><?=$pendidikan?></td>
        </tr>
        <tr>
          <td>Pekerjaan</td>
          <td><?=$pekerjaan?></td>
        </tr>
        <tr>
          <td>Golongan darah</td>
          <td><?=$gol_darah?></td>
        </tr>
        <tr>
          <td>Cacat</td>
          <td><?=$cacat?></td>
        </tr>
        <tr>
          <td>Status kawin</td>
          <td><?=$status_kawin?></td>
        </tr>
        <tr>
          <td>Hubungan keluarga</td>
          <td><?=$hub_keluarga?></td>
        </tr>
        <tr>
          <td>Warga negara</td>
          <td><?=$warga_negara?></td>
        </tr>
        <tr>
          <td>Suku</td>
          <td><?=$suku?></td>
        </tr>
        <tr>
          <td>NIK Ayah</td>
          <td><?=$nik_ayah?></td>
        </tr>
        <tr>
          <td>NIK ibu</td>
          <td><?=$nik_ibu?></td>
        </tr>
        <tr>
          <td>Status kependudukan</td>
          <td><?=$status_kependudukan?></td>
        </tr>
        <tr>
          <td>Nomor HP</td>
          <td><?=$hp?></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><?=$email?></td>
        </tr>
        <tr>
          <td>Alamat</td>
          <td><?=$alamat?></td>
        </tr>
        <tr>
          <td>Status rumah</td>
          <td><?=$status_rumah?></td>
        </tr>
        <tr>
          <td>Lingkungan</td>
          <td><?=$id_lingkungan?></td>
        </tr>
        <tr>
          <td>Image</td>
          <td><?=is_image($image)?></td>
        </tr>
        <tr>
          <td>Created at</td>
          <td><?=$createdat != "" ? date('d-m-Y H:i',strtotime($createdat)):""?></td>
        </tr>
        <tr>
          <td>Modified at</td>
          <td><?=$modified != "" ? date('d-m-Y H:i',strtotime($modified)):""?></td>
        </tr>
        </table>

        <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger mt-3"><?=cclang("back")?></a>
      </div>
    </div>
  </div>
</div>
