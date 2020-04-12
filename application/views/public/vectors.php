


   

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Vector S</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

          <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">No.</th>
                <th scope="col">Nama</th>
                <th scope="col">Vector S</th>
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
                <td><?php echo $u->vectors ?></td>
                </tr>
                 <?php } ?>
                
            </tbody>
            </table>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

 