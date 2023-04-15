<?php 


include "./admin/templates/top.php"; 
// include "../d";

?>
 
<?php include "./admin/templates/navbar.php"; ?>

<div class="container-fluid">
  <div class="row">
    
    <?php include "sidebar.php"; ?>

      <!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->

      <!-- <h2><center>Admin Details</center></h2> -->
      <!-- <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Email</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody id="admin_list">
            <tr>
              <td>1,001</td>
              <td>Lorem</td>
              <td>ipsum</td>
              <td>dolor</td>
              <td>sit</td>
            </tr>
          </tbody>
        </table>
      </div> -->
    </main>
  </div>
</div>

<?php include "./admin/templates/footer.php"; ?>

<script type="text/javascript" src="./admin/js/admin.js"></script>
