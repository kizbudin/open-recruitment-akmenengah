<body class="hold-transition skin-blue layout-top-nav">
  <div class="wrapper">
    <!-- Full Width Column -->
    <div class="content-wrapper">
      <div class="container">
        <br>
        <img src="<?php echo base_url(); ?>assets/academy/img/core-img/logo-labamen.png" alt="">
        <!-- Content Header (Page header) -->
        <section class="content-header">
         <div class="callout callout-info">
            <h4><?php echo $nama_kegiatan; ?></h4>
            <h4>Pendaftaran Belum Dibuka</h4>
            <p>Pendaftaran Dapat Dilakukan Pada Tanggal <?php echo tgl_indonesia($tgl_pendaftaran); ?></p>
          </div>

        </section>
        
        <!-- Main content -->
        <section class="content">
          <a href="<?php echo base_url('/'); ?>">
            <button type="submit" class="btn btn-primary pull-left">Home</button>
          </a>
        </section>
        <!-- /.content -->
      </div>
      <!-- /.container -->
    </div>
    <!-- /.content-wrapper -->
  </div>