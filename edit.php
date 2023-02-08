<?php
include("koneksi.php");
if(!isset($_GET['id'])){
    header("location:tampil.php");
}
$id = $_GET['id'];
$sql = ("SELECT * FROM tb_peminjaman INNER JOIN tb_motor ON tb_peminjaman.id_motor = tb_motor.id_motor  WHERE tb_peminjaman.id_peminjam ='$id'");
$query= mysqli_query($db, $sql);
$data= mysqli_fetch_assoc($query);

?>

<html>
<head>
</head>
<body>
    <h1>Edit</h1>
    <form action="proses_edit.php" method="POST">
       
        <fieldset>
        <input type="hidden" name="id_peminjaman" value="<?php echo $data['id_peminjaman']?>"/>
        <p>
                <label for="nama_peminjam">Nama Peminjam : </label>
                <input type="text" name="nama_peminjam" value="<?php echo $data['nama_peminjam']?>"/>
            </p>
            <p>
                <label for="alamat">Alamat : </label>
                <input type="text" name="alamat" value="<?php echo $data['alamat']?>"/>
            </p>
            <p>
                <label for="umur">Umur : </label>
                <input type="number" name="umur" value="<?php echo $data['umur']?>"/>
            </p>
            <p>
                <label for="keperluan">Keperluan : </label>
                <input type="text" name="keperluan" value="<?php echo $data['keperluan']?>"/>
            </p>
            <p>
                <label for="jaminan">Jaminan : </label>
                <input type="text" name="jaminan"  value="<?php echo $data['jaminan']?>"/>
            </p>
            <p>
                <label for="nomor_rangka">Nomor Rangka : </label>
                <input type="number" name="nomor_rangka" value="<?php echo $data['nomor_rangka']?>"/>
            </p>
            <p>
                <label for="merek">Merek : </label>
                <input type="text" name="merek" value="<?php echo $data['merek']?>"/>
            </p>
            <p>
                <label for="jenis_motor">Jenis Motor : </label>
                <input type="text" name="jenis_motor" value="<?php echo $data['jenis_motor']?>"/>
            </p>
            <p>
                <label for="tahun_motor">Tahun Motor : </label>
                <input type="number" name="tahun_motor" value="<?php echo $data['tahun_motor']?>"/>
            </p>
            <p>
                <label for="tanggal_pinjam">Tanggal Pinjam : </label>
                <input type="date" name="tanggal_pinjam" value="<?php echo $data['tanggal_pinjam']?>"/>
            </p>
            <p>
                <label for="tanggal_kembali">Tanggal Kembali : </label>
                <input type="date" name="tanggal_kembali" value="<?php echo $data['tanggal_kembali']?>"/>
            </p>

            <input type="submit" value="Edit" name="edit">
        </fieldset>
    </form>
</body>
</html>