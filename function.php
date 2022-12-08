<?php
include "koneksi.php";

$connection = new database($host, $user, $pass, $database);
$connect = new connect($connection);
$menu = new menu($connection);
$conn = $connect->connect();

if ($_GET['aksi']=="insert") {
    $pesan = "INSERT INTO tbl_transaksi VALUES ('', '$_POST[M01]', '$_POST[M02]', '$_POST[M03]', '$_POST[M04]', '$_POST[M05]', '$_POST[M06]', '$_POST[M07]', '$_POST[M08]', '$_POST[M09]', '$_POST[M10]', 'waiting', CURRENT_TIMESTAMP)";
    mysqli_query($conn, $pesan);

    $antrian = "INSERT INTO antrian VALUES ('', '$_POST[nama]', '$_POST[meja]', 'waiting')";
    mysqli_query($conn, $antrian);
    
    $tampilmenu = $menu->tampilmenu();
        while ($row = $tampilmenu->fetch_array()) {
            if($row['stok'] > 0){
                $id = $row['id_menu'];
                $qty = $_POST[$id];
                $stok = "UPDATE tbl_menu SET stok = stok - $qty WHERE id_menu = '$row[id_menu]'";
                mysqli_query($conn, $stok);
            }
        }

    if(mysqli_affected_rows($conn) > 0){
        echo "<script>alert('Berhasil memesan!');
        document.location='./pesan.php';
        </script>";
    } else {
        echo "<script>alert('Gagal memesan...');
        document.location='./pesan.php';
        </script>";
    }
}

if ($_GET['aksi']=="update") {
    $upd = "UPDATE tbl_transaksi SET status='selesai' WHERE id_transaksi=$_GET[no]";
    $conn->query($upd);

    $updantri = "UPDATE antrian SET status='selesai' WHERE no_antri=$_GET[no]";
    $conn->query($updantri);
    
    header("location: tampil.php");
}

?>