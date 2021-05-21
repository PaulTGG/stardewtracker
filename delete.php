<!DOCTYPE html>
<html lang="en">
<head>
<title>Perfection Tracker Delete Game</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<?php
include "config.php";

$sqlselectgamedata = "select pk,gamename from gamelist where active=1 order by gamename";
$sqlgamedata = $pdo->query($sqlselectgamedata);
unset($sqlselectgamedata);
if (!$sqlgamedata)
{
  $error = "<p>Error retrieving table key.  Can\'t add the game.</p><p>".$dbc->errorInfo()."</p>";
  die($error);
}
else
{
  $listofoptions = "";
  while ($row = $sqlgamedata->fetch())
  {
    $listofoptions = $listofoptions."<option value=\"".$row['pk']."\">".ucwords($row['gamename'])."</option>\n";
  }
}

?>
<form action="index.php" method="post">
<h2>Delete a game</h2>
<div>Select a game to delete:
<select name="gametodelete" id="deletedropdown">
<option value="" selected disabled>Select the game</option>

<?php
echo $listofoptions;
unset($listofoptions);
?>
</select>
</div>
<p id="submitdiv"><input type="submit" id="submitbutton" name="deletionrequest" value="Submit" /></p>
</form>
<div class="navigation">
<p class="navlink"><a href="index.php">Go back without deleting</a></p>
</div> <!-- navigation -->


</body>
</html>
<?php
unset($row);
$dbc=null;
?>
