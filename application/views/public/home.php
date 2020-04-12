


   

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

          <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">No.</th>
                <th scope="col">Simbol</th>
                <th scope="col">Kriteria</th>
                <th scope="col">Bobot</th>
                <th scope="col">Kategori</th>
                </tr>
            </thead>
            <tbody>
            <?php 
                $no = 1;
                foreach($data as $u){ 
                ?>
                <tr>
                <th scope="row"><?php echo $no++ ?></th>
                <td><?php echo $u->simbol ?></td>
                <td><?php echo $u->kriteria ?></td>
                <td><?php echo $u->bobot ?></td>
                <td><?php echo $u->kategori ?></td>
                </tr>
                 <?php } ?>
                
            </tbody>
            </table>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

 