<?php

#Page header
$siteTitle = 'Add performance';
$siteName = 'Add performance to event.';
$siteDescription = '';

include('includes/header.php');

# Open database connection
include('includes/connectdb.php');

# Collecting all data from previous-page and creating variables
$date = $_POST['date'];
$time = $_POST['time'];
$artistid = $_POST['artistid'];
$stageid = $_POST['stageid'];

# Prepare SQL-query
$insertQuery = "INSERT INTO performance(date, time, artistid, stageid) VALUES('$date', '$time', '$artistid', '$stageid') ";

#Execute SQL-query
mysqli_query($dbc, $insertQuery) or die ('Error querying the database!');
?>

<div id="divspace" class="panel panel-default">
        <div class="panel-heading panel panel-success">Success...</div>
        <div class="panel-body">
            <h2>You have now added performance to to event.</h2>
        </div><!--END panel-body -->
        <div class="panel-footer">
            <button class="btn btn-primary btn-block" onclick="goBack()" >Go Back
            </button>
        </div><!--END panel-footer-->
    </div><!--END divspace -->
<?php 

    #Close database-connection
    mysqli_close($dbc);
?>
   
<script>
    function goBack() {
        window.history.back();
    }
</script>
    
    
<?php include('includes/footer.php'); ?>
















