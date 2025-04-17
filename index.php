<?php
require_once 'includes/auth.php';
require_once 'includes/header.php';
require_once 'includes/sidebar.php';
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  
  <!-- Content Header (Page header) -->
  <section class="content-header">
    
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-12 text-center">
          <h1>Halaman Utama</h1>
        </div>
      </div>
    </div>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-md-6 col-lg-3 col-12 mb-3">
          <div class="small-box bg-white">
            <div class="inner">
              <?php $stmt = $pdo->query("SELECT COUNT(*) FROM produk"); $count = $stmt->fetchColumn(); ?>
              <h4><?php echo $count; ?></h4>
              <p>Produk</p>
            </div>
            <div class="icon">
              <i class="fas fa-box fa-2x"></i>
            </div>
            <?php if($_SESSION['role'] == 'admin'): ?>
            <a href="pages/produk/" class="small-box-footer">Detail <i class="fas fa-arrow-circle-right"></i></a>
            <?php endif; ?>
          </div>
        </div>

        <div class="col-md-6 col-lg-3 col-12 mb-3">
          <div class="small-box bg-white">
            <div class="inner">
              <?php $stmt = $pdo->query("SELECT COUNT(*) FROM pelanggan"); $count = $stmt->fetchColumn(); ?>
              <h4><?php echo $count; ?></h4>
              <p>Pelanggan</p>
            </div>
            <div class="icon">
              <i class="fas fa-users"></i>
            </div>
            <a href="pages/pelanggan/" class="small-box-footer">Detail <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-md-6 col-lg-3 col-12 mb-3">
          <div class="small-box bg-white">
            <div class="inner">
              <?php $stmt = $pdo->query("SELECT COUNT(*) FROM penjualan"); $count = $stmt->fetchColumn(); ?>
              <h4><?php echo $count; ?></h4>
              <p>Total Transaksi</p>
            </div>
            <div class="icon">
              <i class="fas fa-cash-register"></i>
            </div>
            <a href="pages/penjualan/" class="small-box-footer">Detail <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-md-6 col-lg-3 col-12 mb-3">
          <div class="small-box bg-white">
            <div class="inner">
              <?php $stmt = $pdo->query("SELECT SUM(TotalHarga) FROM penjualan"); $total = $stmt->fetchColumn(); ?>
              <h4>Rp <?php echo number_format($total, 0, ',', '.'); ?></h4>
              <p>Total Pendapatan</p>
            </div>
            <div class="icon">
              <i class="fas fa-chart-line"></i>
            </div>
            <a href="pages/penjualan/" class="small-box-footer">Detail <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<!-- ✅ Tambahan Styling -->
<style>
  .small-box {
    background-color: rgb(56, 38, 23) !important;
    color: white !important;
    width: 100%;
    height: 100%;
    padding: 30px;
    font-size: 14px;
    border-radius: 40px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .inner h4 {
    font-weight: bold;
  }

  .small-box .icon i {
    color: rgba(255, 255, 255, 0.8) !important;
  }

  .small-box-footer {
    background-color: rgb(226, 221, 218) !important;
    color: white !important;
    border-top: 1px solid rgba(255, 255, 255, 0.3) !important;
    border-radius: 20px;
    height: 25px;
    width: 200px;
    text-align: center;
    line-height: 25px;
    margin: 0 auto; /* ✅ Tambahan ini agar tetap center */
  }

  .col-12 h1 {
    color: rgb(56, 38, 23) !important;
    font-weight: bold;
  }

  .content-wrapper {
  background-image: url('assets/img/bg2.png');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  min-height: 100vh;
  }

  @media (max-width: 768px) {
  .content-wrapper {
    background-attachment: scroll; /* fallback untuk HP */
  }
}

  @media (max-width: 768px) {
    .small-box {
      height: auto;
      padding: 20px;
    }

    .small-box-footer {
      width: 100%;
      max-width: 200px; 
    }
  }
</style>

<?php
require_once 'includes/footer.php';
?>
