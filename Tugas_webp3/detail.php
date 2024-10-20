<?php
include 'database.php';
$db = new Database();

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $dataUser = $db->ambilData($id);
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail Data Pengguna</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  
  </head>
  <body>
    <div class="container mt-5">
      <!-- Page Title -->
      <h1 class="text-center text-uppercase mb-4">Detail Pengguna</h1>
      
      <!-- Profile Card -->
      <div class="card profile-card">
        <?php
          foreach($db->detailData($id) as $dataUser){
        ?>
        <!-- Profile Image and Edit Button -->
        <div class="text-center mt-4">
          <img src="file/<?= $dataUser['foto']; ?>" class="card-img-top" alt="Foto Profil" style="width: 300px; height: 300px;">
          <div class="mt-3">
            <a href="profil.php?id=<?= $dataUser['id']; ?>" class="btn btn-outline-secondary">Ubah Foto Profil</a>
          </div>
        </div>

        <!-- Card Body with User Details -->
        <div class="card-body">
          <h5 class="text-center">Detail Identitas Pengguna</h5>
          <div class="detail-section">
            <p class="card-text">
              <strong>NIM           <br>:-</strong> <?= $dataUser['nim']; ?><br>
              <strong>Nama          <br>:-</strong> <?= $dataUser['nama']; ?><br>
              <strong>Jenis Kelamin <br>:-</strong> <?= $dataUser['jeniskelamin']; ?><br>
              <strong>Alamat        <br>:-</strong> <?= $dataUser['alamat']; ?><br>
              <strong>No HP         <br>:-</strong> <?= $dataUser['nohp']; ?><br>
            </p>
          </div>
          <?php } ?>
          
          <!-- Back Button -->
          <div class="text mt-4">
            <a href="index.php" class="btn btn-outline-primary">Kembali</a>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
