<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body onload="window.print();">

<style>
@media print{

.print-btn{
    display:none;
}
}
</style>
  

<?php 


$fname = $_POST['fname'];
$lname = $_POST['lname'];

echo $fname;



?>

<button onclick="" class="print-btn">Print</button>

<script>

console.log(page);

</script>

</body>
</html>