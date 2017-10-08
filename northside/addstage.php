<?php

#Page header
$siteTitle = 'Add stage';
$siteName = 'Add stage';
$siteDescription = 'Please fill out the form below with information about the stage.';

include('includes/header.php');
?>


  <i class="fa fa-plus fa-3x">
    </i>
    <form action="addingstage.php" method="post">
        <div class="form-group">
            <label for="stagename">Stage name:</label>
            <input type="text" name="stagename" id="stagename" class="form-control" placeholder="Name">
        </div><!--END publishername field -->
        
        <input type="submit" value="Add Stage" class="btn btn-primary btn-block">
        
       
    </form>
    
    <?php include('includes/footer.php');  ?>