<?php
  $title = "ລາຍງານແຜນຮັບ";
  $path="../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>

<style>
.disable {
   pointer-events: none;
   cursor: default;
}
</style>

<a href="testprint.php" class="disable">
    My Link
</a>


<form action="testprint.php" method="POST">

  <label for="fname">First name: </label>
  <input type="text" id="fname" name="fname"><br><br>
  <label for="lname">Last name: </label>
  <input type="text" id="lname" name="lname"><br><br>
  <input type="submit" value="Submit">


</form>

<?php 

?>





<?php
 include ("../../header-footer/footer.php");
?>