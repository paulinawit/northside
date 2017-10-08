<?php

#Page header
$siteTitle = 'Add Artist';
$siteName = 'Add Artist';
$siteDescription = 'Please fill out the form below with information about the artist.';

include('includes/header.php');
?>
   
    <i class="fa fa-plus fa-3x">
    </i>
   
    <form action="addingartist.php" method="post">
        <div class="form-group">
            <label for="platformname">Artist name:</label>
            <input type="text" name="artistname" id="artistname" class="form-control" placeholder="Name">
        
        <input type="submit" value="Add Artist" class="btn btn-primary btn-block">
        
        </div><!--END form-group -->
    </form>
    <aside id="asideartist"></aside>
    
    <?php include('includes/footer.php');  ?>
    
    
    
    
    
    
    
    
    
    
    
    