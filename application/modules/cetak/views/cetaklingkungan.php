<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?= ucwords($title_module) ?></title>
    <link rel="shortcut icon" href="<?= base_url() ?>_temp/uploads/img/<?= setting("favicon") ?>" />
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

        #logo {
            margin: auto;
            margin-left: 50%;
            margin-right: auto;
        }

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
    </style>
</head>

<body>
    <div>
        <header>
            <div class="row">
                <div id="img" class="col-md-3">
                    <img id="logo" src="<?= base_url() ?>_temp/uploads/img/<?= $desa->logo ?>" width="140" height="160" />
                </div>
                <div id="text-header" class="col-md-9">
                    <h3 class="kablogo">PEMERINTAH KABUPATEN <?= strtoupper($desa->kota) ?></h3>
                    <h1 class="keclogo"><strong>KECAMATAN <?= strtoupper($desa->kecamatan) ?></strong></h1>
                    <h1 class="keclogo"><strong>KELURAHAN <?= strtoupper($desa->nama_desa) ?></strong></h1>
                    <h6 class="alamatlogo">Jl. Soekarno-Hatta, No. 68, Telepon/Faximile (0298) 523024</h6>
                    <h5 class="kodeposlogo"><strong>BERGAS 50552</strong></h5>
                </div>
            </div>
        </header>
        <hr class="garis1" />
        <center><h4>DATA LINGKUNGAN</h4></center>
<?php foreach($lingkungan as $data){ ?>
        <div class="container" style="border:1px solid black">
            
           
            <table>
                <tr>
                    <td>Kode Lingkungan</td>
                    <td>:</td>
                    <td><?= $data->kode ?></td>
                </tr>
                <tr>
                    <td>Nama Lingkungan</td>
                    <td>:</td>
                    <td><?= $data->nama_lingkungan?></td>
                </tr>
                <tr>
                    <td>NIK Kepling</td>
                    <td>:</td>
                    <td><?= $data->nik_kepling ?></td>
                </tr>
                <tr>
                    <td>Nama Kepling</td>
                    <td>:</td>
                    <td><?= $data->nama_lengkap ?></td>
                </tr>
                <tr>
                    <td>Total Warga</td>
                    <td>:</td>
                    <td><?= $data->total_warga ?></td>
                </tr>
                            </table>
        </div>
<?php } ?>

    </div>
    </div>

</body>

</html>