<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><?= ucwords($title_module) ?></title>
  <link rel="shortcut icon" href="<?= base_url() ?>_temp/uploads/img/<?= setting("favicon") ?>" />
  <!--Animate CSS -->
  <link href="<?= base_url() ?>_temp/backend/vendors/animate/animate.min.css" rel="stylesheet" type="text/css">
  <!-- plugins:css -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/ti-icons/css/themify-icons.css">
  <link href="<?= base_url() ?>_temp/backend/css/icons.css" rel="stylesheet" type="text/css" />

  <!-- SELECT 2 -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/select2/select2.min.css">
  <!-- END SELECT 2 -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
  <!-- Plugin css for this page -->

  <!-- TOAST MSG  -->
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/jquery-toast-plugin/jquery.toast.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/fancybox/jquery.fancybox.min.css" />
  <link rel="stylesheet" href="<?= base_url() ?>_temp/backend/vendors/summernote/dist/summernote-bs4.css">
  <!-- END TOAST MSG  -->

  <!-- BEGIN: Vendor CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/vendors.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/charts/apexcharts.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/extensions/tether-theme-arrows.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/extensions/tether.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/tables/datatable/datatables.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/extensions/shepherd-theme-default.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/pickers/pickadate/pickadate.css">

  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/calendars/fullcalendar.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/calendars/extensions/daygrid.min.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/calendars/extensions/timegrid.min.css">
  <!-- END: Vendor CSS-->

  <!-- BEGIN: Theme CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/bootstrap-extended.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/colors.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/components.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/themes/dark-layout.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/themes/semi-dark-layout.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/vendors/css/forms/select/select2.min.css">

  <!-- BEGIN: Page CSS-->
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/core/menu/menu-types/vertical-menu.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/core/colors/palette-gradient.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/pages/dashboard-analytics.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/pages/card-analytics.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/plugins/tour/tour.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/app-assets/css/pages/app-user.css">

  <!-- drag -->
  <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"> -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/assets/css/drag.css">
</head>
    <body>
    <div class="d-flex justify-content-center">
                <?=is_image($image)?>
                <h4>Data Penduduk</h1>
                <h4>Kelurahan <?=$nama_desa?>, Kecamatan <?=$kecamatan?>, Kota <?=$kota?></h4>
                <h4>Lingkungan <?=$nama_lingkungan?></h4>
    </div>

    

    </body>

</html>