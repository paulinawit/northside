<?php

#Page header
$siteTitle = 'Add performance';
$siteName = 'Add performance to event.';
$siteDescription = 'Please fill out the form below with information about the performance.';

include('includes/header.php');
?>


<i class="fa fa-plus fa-3x">
    </i>
    <form action="addingperformance.php" method="post">
        <div class="form-group">
            <label for="date">Date:</label>
            <input type="date" name="date" id="date" class="form-control" placeholder="22/04/2017">
        </div>
        
        <div class="form-group">
            <label for="time">Time:</label>
             <input type="time" name="time" id="time" class="form-control" placeholder="14:20">  
        </div>
        
        <?php
        
        # include database connection
        include('includes/connectdb.php');
        
        # Create a SQL-query to the database
        $stageQuery = "SELECT id, stagename FROM stage";
        
        # Execute the SQL-query $platformQuery
        $resultStageQuery = mysqli_query($dbc, $stageQuery);
        
        # Create a SQL-query to the database
        $artistQuery = "SELECT id, artistname FROM artists";
        
        # Execute the SQL-query $platformQuery
        $resultArtistQuery = mysqli_query($dbc, $artistQuery);
        
        ?>
        
        
        <div class="form-group">
            <label for="stageid">Stages:</label>
            <select name="stageid" id="stageid" class="form-control">
            <!-- Looping through array with platformnames -->
            
            <?php  while($row = mysqli_fetch_array($resultStageQuery)): ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['stagename']; ?></option>
            <!--END of while-looping -->
            <?php endwhile; ?>
            </select>
        </div><!--END platform field -->
        
        <div class="form-group">
            <label for="artistid">Artist:</label>
            <select name="artistid" id="artistid" class="form-control">
            <!-- Looping through array with publishernames -->
            
            <?php  while($row = mysqli_fetch_array($resultArtistQuery)): ?>
                <option value="<?php echo $row['id']; ?>"><?php echo $row['artistname']; ?></option>
            <!--END of while-looping -->
            <?php endwhile; ?>
            </select>
        </div><!--END publisher field   -->
        
        <input type="submit" value="Add Performance" class="btn btn-primary btn-block">
    </form>
        
    <?php include('includes/footer.php'); ?>
    
   
  
 






