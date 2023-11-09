<!-- Zero configuration table -->
<section id="basic-datatable">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title"><?= ucwords($title_module) ?></h4>
          <div class="pull-right">
            <a href="<?= url("warga/add") ?>" class="btn btn-success btn-flat"><i class="fa fa-file btn-icon-prepend"></i> Add</a>
            <button class="btn btn-secondary btn-flat" data-toggle="modal" data-target="#modalImport"><i class="fa fa-file-excel-o btn-icon-prepend"></i> Import</button>
            <button type="button" id="filter-show" class="btn btn-primary btn-flat"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> Filter</button>
          </div>
        </div>
        <div class="card-content">
          <div class="card-body card-dashboard">
            <form autocomplete="off" class="content-filter">
              <div class="row">
                <div class="form-group col-md-6">
                  <input type="text" id="NIK" class="form-control form-control-sm" placeholder="NIK" />
                </div>

                <div class="form-group col-md-6">
                  <input type="text" id="nama_lengkap" class="form-control form-control-sm" placeholder="Nama lengkap" />
                </div>

              </div>
              <div class="pull-right">
                <button type='button' class='btn btn-default btn-sm' id="filter-cancel"><?= cclang("cancel") ?></button>
                <button type="button" class="btn btn-primary btn-sm" id="filter">Filter</button>
              </div>
            </form>
            <div class="table-responsive">
              <table class="table display" name="table" id="table" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                <thead>
                  <tr>
							<th>NIK</th>
							<th>Nama lengkap</th>
							<th>Tempat lahir</th>
							<th>Tgl lahir</th>
              <th>Kategori Usia</th>
							<th>Jenis kelamin</th>
							<th>Agama</th>
							<th>Pendidikan</th>
							<th>Pekerjaan</th>
							<th>Gol darah</th>
							<th>Cacat</th>
							<th>Status kawin</th>
							<th>Hubungan keluarga</th>
							<th>Warga negara</th>
							<th>Suku</th>
							<th>NIK Ayah</th>
							<th>NIK ibu</th>
							<th>Status kependudukan</th>
							<th>Nomor HP</th>
							<th>Email</th>
							<th>Alamat</th>
							<th>Status rumah</th>
              <th>Nama Lingkungan</th>
							<th>Image</th>
							<th>Createdat</th>
							<th>Modified</th>
                    <th>#</th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



<!-- Modal -->
<div class="modal fade text-left" id="modalImport" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary white">
        <h4 class="modal-title" id="myModalLabel1">Import file excel</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form class="form form-horizontal" action="<?php echo base_url('kategori/add') ?>" method="post">
        <div class="modal-body">
          <div class="form-body">
            <div class="row">
              <div class="col-12">
                <div class="form-group row">
                  <div class="col-md-4">
                    <span>Upload file</span>
                  </div>
                  <div class="col-md-8">
                    <input type="file" id="excel" class="form-control" name="excel" placeholder="Masukkan Nama Kategori">
                    <span class="mt-5"><a href="">Download Template</a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- <div class="modal modal-top animated fadeInUp delay-30s" id="modalImport" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary  text-white">
        <h5 class="modal-title" id="modalTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="modalContent"></div>
    </div>
  </div>
</div> -->



<script type="text/javascript">
  $(document).ready(function() {
    var table;
    //datatables
    table = $('#table').DataTable({

      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "ordering": true,
      "searching": false,
      "info": true,
      "bLengthChange": false,
      oLanguage: {
        sProcessing: '<i class="fa fa-spinner fa-spin fa-fw"></i> Loading...'
      },

      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?= url("warga/json") ?>",
        "type": "POST",
        "data": function(data) {
          data.NIK = $("#NIK").val();
          data.nama_lengkap = $("#nama_lengkap").val();
        }
      },

      //Set column definition initialisation properties.
      "columnDefs": [

        {
          "targets": 0,
          "orderable": false
        },

        {
          "targets": 1,
          "orderable": false
        },

        {
          "targets": 2,
          "orderable": false
        },

        {
          "targets": 3,
          "orderable": false
        },

        {
          "targets": 4,
          "orderable": false
        },

        {
          "targets": 5,
          "orderable": false
        },

        {
          "targets": 6,
          "orderable": false
        },

        {
          "targets": 7,
          "orderable": false
        },

        {
          "targets": 8,
          "orderable": false
        },

        {
          "targets": 9,
          "orderable": false
        },

        {
          "targets": 10,
          "orderable": false
        },

        {
          "targets": 11,
          "orderable": false
        },

        {
          "targets": 12,
          "orderable": false
        },

        {
          "targets": 13,
          "orderable": false
        },

        {
          "targets": 14,
          "orderable": false
        },

        {
          "targets": 15,
          "orderable": false
        },

        {
          "targets": 16,
          "orderable": false
        },

        {
          "targets": 17,
          "orderable": false
        },

        {
          "targets": 18,
          "orderable": false
        },

        {
          "targets": 19,
          "orderable": false
        },

        {
          "targets": 20,
          "orderable": false
        },

        {
          "targets": 21,
          "orderable": false
        },
        {
          "targets": 22,
          "orderable": false
        },
        {
          "targets": 23,
          "orderable": false
        },
        {
          "targets": 24,
          "orderable": false
        },
        {
          "targets": 25,
          "orderable": false
        },

        {
          "className": "text-center",
          "orderable": false,
          "targets": 26
        },
      ],
    });

    $("#reload").click(function() {
      $("#NIK").val("");
      $("#nama_lengkap").val("");
      table.ajax.reload();
    });

    $(document).on("click", "#filter-show", function(e) {
      e.preventDefault();
      $(".content-filter").slideDown();
    });

    $(document).on("click", "#filter", function(e) {
      e.preventDefault();
      $("#table").DataTable().ajax.reload();
    })

    $(document).on("click", "#filter-cancel", function(e) {
      e.preventDefault();
      $(".content-filter").slideUp();
    });

    $(document).on("click", "#delete", function(e) {
      e.preventDefault();
      $('.modal-dialog').addClass('modal-sm');
      $("#modalTitle").text('<?= cclang("confirm") ?>');
      $('#modalContent').html(`<p class="mb-4"><?= cclang("delete_description") ?></p>
                              <div class="pull-right">
  														<button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><?= cclang("cancel") ?></button>
  	                          <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=` + $(this).attr('alt') + `  data-url=` + $(this).attr('href') + `><?= cclang("delete_action") ?></button>
  														</div>`);
      $("#modalGue").modal('show');
    });

    // $(document).on("click", "#import", function(e) {
    //   e.preventDefault();
    //   $('.modal-dialog').addClass('modal-sm');
    //   $("#modalTitle").text('Import Data');
    //   $('#modalContent').html(`<div class="pull-right">
    // 													<button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><?= cclang("cancel") ?></button>
    //                           <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=` + $(this).attr('alt') + `  data-url=` + $(this).attr('href') + `><?= cclang("delete_action") ?></button>
    // 													</div>`);
    //   $("#modalGue").modal('show');
    // });


    $(document).on('click', '#ya-hapus', function(e) {
      $(this).prop('disabled', true)
        .text('Processing...');
      $.ajax({
        url: $(this).data('url'),
        type: 'POST',
        cache: false,
        dataType: 'json',
        success: function(json) {
          $('#modalGue').modal('hide');
          swal(json.msg, {
            icon: json.type_msg
          });
          $('#table').DataTable().ajax.reload();
        }
      });
    });


  });
</script>