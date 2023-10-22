<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?= ucwords($title_module) ?></title>
    <link rel="shortcut icon" href="<?= base_url() ?>_temp/uploads/img/<?= setting("favicon") ?>" />
    <link rel="shortcut icon" href="<?= base_url() ?>_temp/uploads/img/<?= setting("favicon") ?>" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <style>
        h1,
        h3,
        h5,
        h6 {
            text-align: center;
            padding-right: 200px;
        }

        .row {
            margin-top: 20px;
        }

        .keclogo {
            font-size: 24px;
            font-size: 3vw;
        }

        .kablogo {
            font-size: 2vw;
        }

        .alamatlogo {
            font-size: 1.5vw;
        }

        .kodeposlogo {
            font-size: 1.7vw;
        }

        #tls {
            text-align: right;
        }

        .alamat-tujuan {
            margin-left: 50%;
        }

        .garis1 {
            border-top: 3px solid black;
            height: 2px;
            border-bottom: 1px solid black;
        }

        /* #logo {
            margin: auto;
            margin-left: 50%;
            margin-right: auto;
        } */

        #tempat-tgl {
            margin-left: 120px;
        }

        #camat {
            text-align: center;
        }

        #nama-camat {
            margin-top: 100px;
            text-align: center;
        }

        table td,
        table td * {
            vertical-align: top;
            font-size: 22px;
            padding-bottom: 2px;
        }

        @media print {
            @page {
                margin: 0;
            }

            body {
                margin: 1.6cm;
            }
        }
    </style>
</head>

<body onload="window.print()" class="right_content">
    <div>
        <header>
            <div class="row">
                <div id="img" class="col-md-3">
                    <img id="logo" src="<?= base_url() ?>_temp/uploads/img/<?= $desa->logo ?>" width="140" height="160" style="margin-left:100px" />
                </div>
                <div id="text-header" class="col-md-9">
                    <h3 class="kablogo">PEMERINTAH <?php echo strtoupper($desa->jenis_daerah);
                                                    echo strtoupper($desa->kota) ?></h3>
                    <h1 class="kablogo"><strong>KECAMATAN <?= strtoupper($desa->kecamatan) ?></strong></h1>
                    <h1 class="keclogo"><strong>KELURAHAN <?= strtoupper($desa->nama_desa) ?></strong></h1>
                    <h6 class="alamatlogo"><?= $desa->alamat ?>, Telepon <?= $desa->telepon ?></h6>
                    <h5 class="kodeposlogo"><strong><?= $desa->kecamatan ?> <?= $desa->kodepos ?></strong></h5>
                </div>
            </div>
        </header>
        <div class="container">
            <hr class="garis1" />
            <div id="pembuka" style="border: solid 1px black;width: 250px;padding-left: 2%;padding-top: 1%;padding-bottom: 1%;"><b> Data Warga Meninggal</b></div>

            <?php foreach ($warga as $data) { ?>
                <div class="container" >


                    <table>
                        <tr>
                            <td>Tanggal Meninggal</td>
                            <td>:</td>
                            <td><?= $data->tgl_meninggal ?></td>
                        </tr>
                        <tr>
                            <td>No Dokumen</td>
                            <td>:</td>
                            <td><?= $data->no_dokumen ?></td>
                        </tr>
                        <tr>
                            <td>NIK</td>
                            <td>:</td>
                            <td><?= $data->NIK ?></td>
                        </tr>
                        <tr>
                            <td>Nama Lingkungan</td>
                            <td>:</td>
                            <td><?= $data->nama_lingkungan ?></td>
                        </tr>
                    </table>
                </div>
            <?php } ?>
        </div>
    </div>
    </div>

</body>

</html>