


   

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Alternatif</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

          <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">No.</th>
                <th scope="col">Nama</th>
                <th scope="col">Ijazah</th>
                <th scope="col">Skill</th>
                <th scope="col">Motivasi</th>
                <th scope="col">Etos Kerja</th>
                <th scope="col">Kepercayaan</th>
                </tr>
            </thead>
            <tbody>
            <?php 
                $no = 1;
                foreach($data as $u){ 
                ?>
                <tr>
                <th scope="row"><?php echo $no++ ?></th>
                <td><?php echo $u->nama ?></td>
                <td><?php echo $u->ijazah ?></td>
                <td><?php echo $u->skill ?></td>
                <td><?php echo $u->motivasi ?></td>
                <td><?php echo $u->etoskerja ?></td>
                <td><?php echo $u->dipercaya ?></td>
                </tr>
                 <?php } ?>
                
            </tbody>
            </table>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

 