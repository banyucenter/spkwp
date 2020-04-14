


   

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Tambah Data Alternatif</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

          <form action="<?php echo base_url(). 'home/aksi_tambah'; ?>" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">Nama calon Karyawan</label>
            <input type="text" name="nama" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Nilai Ijazah</label>
            <input type="number" name="ijazah" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Nilai Skill</label>
            <input type="number" name="skill" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Nilai Motivasi</label>
            <input type="number" name="motivasi" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Nilai Etos Kerja</label>
            <input type="number" name="etoskerja" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Nilai Kepercayaan</label>
            <input type="number" name="dipercaya" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
          </div>
         
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

 