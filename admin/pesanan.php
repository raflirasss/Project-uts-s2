<?php
require_once "header.php";
require_once "sidebar.php";
require_once 'dbkoneksi.php';

$sql = "SELECT produk.*, kategori_produk.nama AS kategori FROM produk
        INNER JOIN kategori_produk ON kategori_produk.id = produk.kategori_produk_id";
$rs = $dbh->query($sql);

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section style="background-color: white;" class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data Pesanan Pelanggan</h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section style="background-color: white;" class="content">

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!-- Default box -->
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama Lengkap</th>
                                <th scope="col">Alamat Lengkap</th>
                                <th scope="col">Tanggal Pembelian</th>
                                <th scope="col">Produk</th>
                                <th scope="col">Jumlah</th>
                                <th scope="col">No.HP</th>
                                <th scope="col">Email</th>
                                <th scope="col">Catatan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Teuku Muhammad Rafli Rashadifa</td>
                                <td>Jakarta Utara</td>
                                <td>2023-07-10</td>
                                <td>Denali Syrup Lychee</td>
                                <td>13</td>
                                <td>081388954925</td>
                                <td>rrrashadifa@gmail.com</td>
                                <td>Tolong Packingannya yang rapih yaa!</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jokowi</td>
                                <td>Istana negara</td>
                                <td>2023-04-24</td>
                                <td>Denali Syrup Chocolate</td>
                                <td>2</td>
                                <td>0813********</td>
                                <td>jokowikeren@gmail.com</td>
                                <td>Saya suka ngopi sambil liat kodok</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Megawati</td>
                                <td>Jl. Jl. Suka Suka Gue</td>
                                <td>2023-05-15</td>
                                <td>Coffe Scale</td>
                                <td>5</td>
                                <td>081388423948</td>
                                <td>pdiperjuangan@gmail.com</td>
                                <td>Kamu mau saya bungkam?</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php

require_once "footer.php";

?>