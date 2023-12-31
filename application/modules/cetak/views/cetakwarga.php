<!DOCTYPE html>
<html lang="en">

<head>
    <script>
       window.onload = function() { window.print(); }
    </script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?= ucwords($title_module) ?></title>
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
        }
    </style>
</head>

<body onload="window.print()" class="right_content">
<button onclick="myPrintFunction()" id="print">print</button>
    <div>
    <header>
            <div class="row">
                <div id="img" class="col-md-3">
                    <img id="logo" src="<?= base_url() ?>_temp/uploads/img/<?= $desa->logo ?>" width="140" height="160" />
                </div>
                <div id="text-header" class="col-md-9">
                    <h3 class="kablogo">PEMERINTAH <?php echo strtoupper($desa->jenis_daerah); echo strtoupper($desa->kota) ?></h3>
                    <h1 class="kablogo"><strong>KECAMATAN <?= strtoupper($desa->kecamatan) ?></strong></h1>
                    <h1 class="keclogo"><strong>KELURAHAN <?= strtoupper($desa->nama_desa) ?></strong></h1>
                    <h6 class="alamatlogo"><?=$desa->alamat?>, Telepon <?=$desa->telepon?></h6>
                    <h5 class="kodeposlogo"><strong><?=$desa->kecamatan?> <?=$desa->kodepos?></strong></h5>
                </div>
            </div>
        </header>

        <div class="container">
            <hr class="garis1" />
            <div id="pembuka" style="border: solid 1px black;width: 150px;padding-left: 2%;padding-top: 1%;padding-bottom: 1%;"><b> Data Personal</b></div>
            <table>

                <tr>
                    <td style="width:440px">
                        <table>
                            <tr>
                                <td>Nama Lengkap</td>
                                <td>:</td>
                                <td><?= $warga[0]->nama_lengkap ?></td>
                            </tr>
                            <tr>
                                <td>Tempat Tanggal Lahir</td>
                                <td>:</td>
                                <td><?= $warga[0]->tempat_lahir ?></td>
                            </tr>
                            <tr>
                                <td>Tanggal Lahir</td>
                                <td>:</td>
                                <td><?= $warga[0]->tgl_lahir ?></td>
                            </tr>
                            <tr>
                                <td>Jenis Kelamin</td>
                                <td>:</td>
                                <td><?= $warga[0]->jenis_kelamin ?></td>
                            </tr>
                            <tr>
                                <td>Agama</td>
                                <td>:</td>
                                <td><?= $warga[0]->agama ?></td>
                            </tr>
                            <tr>
                                <td>Pendidikan</td>
                                <td>:</td>
                                <td><?= $warga[0]->pendidikan ?></td>
                            </tr>
                            <tr>
                                <td>Pekerjaan</td>
                                <td>:</td>
                                <td><?= $warga[0]->pekerjaan ?></td>
                            </tr>
                            <tr>
                                <td>Golongan Darah</td>
                                <td>:</td>
                                <td><?= $warga[0]->gol_darah ?></td>
                            </tr>
                            <tr>
                                <td>Cacat</td>
                                <td>:</td>
                                <td><?= $warga[0]->cacat ?></td>
                            </tr>
                            <tr>
                                <td>Status Kawin</td>
                                <td>:</td>
                                <td><?= $warga[0]->status_kawin ?></td>
                            </tr>
                            <tr>
                                <td>Hubungan Keluarga</td>
                                <td>:</td>
                                <td><?= $warga[0]->hub_keluarga ?></td>
                            </tr>
                            <tr>
                                <td>Warga Negara</td>
                                <td>:</td>
                                <td><?= $warga[0]->warga_negara ?></td>
                            </tr>
                            <tr>
                                <td>Suku</td>
                                <td>:</td>
                                <td><?= $warga[0]->suku ?></td>
                            </tr>
                            <tr>
                                <td>NIK Ayah</td>
                                <td>:</td>
                                <td><?= $warga[0]->ayah ?></td>
                            </tr>
                            <tr>
                                <td>Nama Ayah</td>
                                <td>:</td>
                                <td><?= $warga[0]->nama_ayah ?></td>
                            </tr>
                            <tr>
                                <td>NIK Ibu</td>
                                <td>:</td>
                                <td><?= $warga[0]->ibu ?></td>
                            </tr>
                            <tr>
                                <td>Nama Ibu</td>
                                <td>:</td>
                                <td><?= $warga[0]->nama_ibu ?></td>
                            </tr>
                            <tr>
                                <td>Status Kependudukan</td>
                                <td>:</td>
                                <td><?= $warga[0]->status_kependudukan ?></td>
                            </tr>
                            <tr>
                                <td>NIK Ibu</td>
                                <td>:</td>
                                <td><?= $warga[0]->ibu ?></td>
                            </tr>
                            <tr>
                                <td>Nama Ibu</td>
                                <td>:</td>
                                <td><?= $warga[0]->nama_ibu ?></td>
                            </tr>
                            <tr>
                                <td>Status Kependudukan</td>
                                <td>:</td>
                                <td><?= $warga[0]->status_kependudukan ?></td>
                            </tr>
                            <tr>
                                <td>No Hp</td>
                                <td>:</td>
                                <td><?= $warga[0]->hp ?></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td><?= $warga[0]->email ?></td>
                            </tr>
                            <tr>
                                <td>Alamat</td>
                                <td>:</td>
                                <td><?= $warga[0]->alamat ?></td>
                            </tr>
                            <tr>
                                <td>Status Rumah</td>
                                <td>:</td>
                                <td><?= $warga[0]->status_rumah ?></td>
                            </tr>
                        </table>
                    </td>
                    <td align="right">
                        <img id="logo" src="<?= base_url() ?>_temp/uploads/img/<?= $desa->logo ?>" width="140" height="160" />
                    </td>
                </tr>
            </table>
        </div>
        <br>
        <div class="container">
            <div id="pembuka" style="border: solid 1px black;width: 250px;padding-left: 2%;padding-top: 1%;padding-bottom: 1%;"><b> Data Kepemilikan Dokumen</b></div>
            <table>
                <tr>
                    <td>
                        <table>

                            <tr>
                                <td>NIK</td>
                                <td>:</td>
                                <td><?= $dokumen[0]->nik ?></td>
                            </tr>
                            <?php foreach ($dokumen as $row) { ?>

                                <tr>
                                    <td>Nomor <?= $row->nama_dokumen ?></td>
                                    <td>:</td>
                                    <td><?= $row->nomor ?></td>
                                </tr>
                                <tr>
                                    <td>Tanggal <?= $row->nama_dokumen ?></td>
                                    <td>:</td>
                                    <td><?= $row->tgl_terbit ?></td>
                                </tr>
                            <?php } ?>
                        </table>
                    </td>
                    <td align="right">
                        <img id="logo" src="<?= base_url() ?>_temp/uploads/img/<?= $desa->logo ?>" width="140" height="160" />
                    </td>
                </tr>
            </table>
        </div>

    </div>
    </div>

</body>

</html>
<script type="text/javascript">
   function myPrintFunction() {
        // do something maybe
        alert("ok");
        window.print();
    }


</script>