<?php  include('manue.php');?>


<div class="contact_area">
<div class="google_map">


<!DOCTYPE html>
<html>
<head>
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
var myCenter=new google.maps.LatLng(23.753959,90.381461);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:5,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<div id="googleMap" style="width:500px;height:500px; float:right;"></div>
</body>
</html>
</div>
<div class="contact_left">

<pre> 
       BLOOD BANK
      116,  (2nd Floor) DCC Market
      Gulshan-2, Dhaka-1212
      Phone  : 73702679
      Mobile : +88-01714-094333, +8801552-638600              
      E-mail : info@bloodbank.com
</pre>


</div>



</div>




<?php include ('footer.php');?>