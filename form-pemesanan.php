<?php
require_once "header.php"
?>
<div class="kontener">
    <div class="formpemesanan">
        <form>
            <div class="form-group row">
                <label class="col-4 col-form-label" for="nama">Nama Lengkap</label>
                <div class="col-8">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="fa fa-address-card"></i>
                            </div>
                        </div>
                        <input id="nama" name="nama" type="text" class="form-control" required="required">
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="alamat" class="col-4 col-form-label">Alamat Lengkap</label>
                <div class="col-8">
                    <textarea id="alamat" name="alamat" cols="40" rows="4" class="form-control" required="required"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="email" class="col-4 col-form-label">Email</label>
                <div class="col-8">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                <i class="fa fa-envelope-o"></i>
                            </div>
                        </div>
                        <input id="email" name="email" type="text" class="form-control" required="required">
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="nohp" class="col-4 col-form-label">No Hp</label>
                <div class="col-8">
                    <input id="nohp" name="nohp" type="text" class="form-control" required="required">
                </div>
            </div>
            <div class="form-group row">
                <label for="catatan" class="col-4 col-form-label">Catatan</label>
                <div class="col-8">
                    <input id="catatan" name="catatan" placeholder="*Optional" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label for="produk" class="col-4 col-form-label">Produk</label>
                <div class="col-8">
                    <select id="produk" name="produk" class="custom-select" required="required">
                        <option value="">-- Pilih Produk --</option>
                        <option value="timbangan">Coffe Scale</option>
                        <option value="termo">Kettle Thermo</option>
                        <option value="vietnam">Vietnam Dripper</option>
                        <option value="vanilla">Denali Vanilla</option>
                        <option value="lychee">Denali Lychee</option>
                        <option value="banana">Denali Banana</option>
                        <option value="chocolate">Denali Chocolate</option>
                        <option value="greentea">Denali Greentea</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="jumlah" class="col-4 col-form-label">Jumlah</label>
                <div class="col-8">
                    <input id="jumlah" name="jumlah" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="offset-4 col-8">
                    <button onclick="location.href='terimakasih.php'" name="submit" type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>

<?php
require_once "footer.php"
?>