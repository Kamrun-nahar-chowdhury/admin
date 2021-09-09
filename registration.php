<?php
	include('connect.php');
	include('manue.php');
	
?>

<?php
if(isset($_POST['Submit'])){
	
	$name=$_POST['Name'];
$e_mail=$_POST['Email'];
$blood_group=$_POST['blood_group'];
$living_district=$_POST['living_district'];
$contarct_no=$_POST['Contact'];


$sql=mysql_query("INSERT INTO reg_form (nam, mail, b_group, district, con_num)
VALUES ('$name', '$e_mail', '$blood_group', '$living_district', '$contarct_no')");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" />
</head>

<body>
<script type="text/javascript" src="./js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
function validateForm()
{
	var Name	 = $('#Name').val();
	if(Name=='')
	{
		alert('Name is empty');
		return false;
		}
}
	function validateForm1(){
		var Email  =$('#Email').val();
	if(Email=='')
	{
		alert('Email is empty');
		return false;
		}
}
function validateForm2(){
		var Contact  =$('#contact').val();
	if(Contact=='')
	{
		alert('Contact is empty');
		return false;
		}
}

</script>


<div class="reg_form_area fix">
<div class="reg_form fix">
<h2>Ragistration</h2>
<form action="registration.php" method="post" >
<div><label>Name<span style="color:red;">&lowast;</span></label>
<input type="text" name="Name" id="Name" value="" onblur="validateForm()" /></div>
<div><label>Email<span style="color:red;">&lowast;</span></label>
<input type="text" name="Email" id="Email" value="" onblur="validateForm1()"/></div>
<div><label>Blood group<span style="color:red;">&lowast;</span></label>
 <?php 
			$query_string=mysql_query("select * from bloodgroup");
			?>
 
 <select name="blood_group" id="blood_group">
			<option  value="0">selected</option>
			<?php while($db_row=mysql_fetch_array($query_string) )
			
			{
				echo '<option  value="'.$db_row['Id'].'">'.$db_row['Name'].'</option>';
			}
			?>
			</select>
            </div>
            
<div><label>Living District<span style="color:red;">&lowast;</span></label>
<?php 
			$query_string2=mysql_query("select * from district");
			?>
 
 <select name="living_district" id="living_district">
			<option  value="0">selected</option>
			<?php while($db_row2=mysql_fetch_array($query_string2) )
			
			{
				echo '<option  value="'.$db_row2['id'].'">'.$db_row2['name'].'</option>';
			}
			?>
			</select>



</div>
<div><label>Contact No</label>
<input type="text" name="Contact" id="contact" value="" onblur="validateForm2()"/></div>


<div class="submit_reg fix float_right">
<input type="submit" name="Submit" value="Submit to Registration" /></div>
<div class="reset_reg fix float_left">
<input type="reset" name="reset" value="Clear All" /></div>


</form>
</div>
</div>

</div>
<?php include('footer.php')  ?>

</div>
</div>
</body>
</html>
