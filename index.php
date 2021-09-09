<?php
	include('connect.php');
	session_start();
	
	//Unset the variables stored in session
	unset($_SESSION['SESS_MEMBER_ID']);
	unset($_SESSION['SESS_FIRST_NAME']);
	//unset($_SESSION['SESS_LAST_NAME']);
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Donate blood,safe life</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/bar/bar.css" type="text/css">
<link rel="stylesheet" href="css/dark/dark.css" type="text/css">
<link rel="stylesheet" href="css/default/default.css" type="text/css">
<link rel="stylesheet" href="css/light/light.css" type="text/css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css">
</head>

<body>
<div class="wrap" >
<div class="banner_area fix">
<h3><a class="proud" href="registration.php">Be a proud member (Registration)</a></h3>

</div>
<div class="menu_area fix">
<div class="main_menu fix">
<ul>
<li><a href="index.php">Home</a></li>
<li><a href="show_donor.php">All Doners list</a></li>
		<li><a href="#">Doners By Group</a>
			<ul>
			<?php 
				$query_string=mysql_query("select * from bloodgroup");
				while($db_row=mysql_fetch_array($query_string))			
					{
						echo '<li><a href="grp_wise.php?bg='.$db_row['Id'].'">'.$db_row['Name'].'</a></li>';	
					}
			?>
			</ul>
		</li>
<li><a href="show_membar.php">All Members List</a></li>
<li><a href="about.php">About Blood</a></li>
<li><a href="blood_request.php">Request for Blood</a></li>
<li><a href="contact.php">Contact us</a></li>
</ul>
</div>
</div>
<div class="slide_doner_area fix">
<div class="slider_area float_left fix">
        <div class="slider-wrapper theme-default fix">

 <div id="slider" class="nivoSlider fix">
                <img src="image/1.jpg" data-thumb="images/toystory.jpg" alt="" />
                <img src="image/2.jpg" data-thumb="images/up.jpg" alt=""/>
                <img src="image/3.jpg" data-thumb="images/walle.jpg" alt="" data-transition="slideInLeft" />
                
            </div>
</div>
</div>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>


</div>
</div>
<div class="find_doner_group_area fix">

<div class="find_doner_group fix">

<?php 
			$query_string=mysql_query("SELECT b.*,(SELECT COUNT(d.id) FROM `donor_add` d WHERE d.blood_group=b.`Id` ) AS c FROM bloodgroup b
");
			?>
 
		
			<?php 
			$k=1;
			while($db_row=mysql_fetch_array($query_string) )
			
			{?>
            <div class="left">
				<?php echo '<a href="grp_wise.php?bg='.$db_row['Id'].'">'.$db_row['Name'].' ['.$db_row['c'].']';?></a>
             </div>
			<?php if ($k % 4 == 0) {?>
                <div class="clear"></div>               
			<?php
			}
			$k++;}
			?>
            
            <div class="clear"></div>
</div>
 
</div>
<div class="current_request_area fix">
<div class="current_request  fix">

<h3>Current Request For Blood</h3>



<?php


$view = mysql_query("SELECT r.*,b.Name AS bgroup, di.name AS dinam FROM reqst_form r
LEFT JOIN bloodgroup b ON (b.Id=r.blood_group)
LEFT JOIN district di ON (di.id=r.living_district)
ORDER BY r.id DESC LIMIT 0,6
 ");

?>




<?php
	$j=1;

while($row = mysql_fetch_array($view))
  {
      echo '<div class="item_row_requestL">';
      
	  echo "<b>Name: </b>    ".$row['name'];
	  echo"<br>";
      echo "<b>Email: </b>  ".$row['email'];
	  echo"<br>";
      echo "<b>Blood Group:</b>    ".$row['bgroup'];
	  echo"<br>";
	  echo "<b> District Name: </b>  ".$row['dinam'];
	  echo"<br>";
      echo "<b> Quantity: </b>       ".$row['quantity'];
	  echo"<br>";
	  echo "<b> Require Date: </b>    ".$row['requir_date'];
	  echo"<br>";
      echo "<b> Contact No: </b>    ".$row['contact_no'];
	  echo"<br>";
	  echo "<b> Message:   </b>     ".$row['message'];
      echo '</div>';?>
	  
      <?php
	  if ( $j % 3 == 0) {?>
	  <div class="clear"></div>
	  
	<?php
			}
			$j++;  
  }
?>               
    
            <div class="clear"></div>	





</div>
  

</div>
<?php include('footer.php')  ?>

</div>
</body>
</html>
