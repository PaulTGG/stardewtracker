<!DOCTYPE html>
<html lang="en">
<head>
<title>Perfection Tracker Reset</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<?php
include "config.php";
//$databaseconnectionstatus = pg_connection_status($dbc);
//unset($databaseconnectionstatus);
$yesvalues=null;
$novalues=null;
$gamepk = $_POST['gamepk'];
$gamename = $_POST['gamename'];
$seasonselection = $_POST['season'];
$gametable = "gamedata".$gamepk.$gamename;

if (!($gamepk || $gamename || $seasonselection))
{
  echo "<p>Game meta data did not load properly.</p><p class=\"navlink\"><a href=\"index.php\">Try again?</a></p>";
  die();
}

if (isset($_POST['submitted'])) //with submitted updates
{
  unset($_POST['submitted']);
  foreach($_POST as $key => $value) //build the sql "IN" lists, one each for yes and no
  {
    switch ($value)
    {
      case "yes":
        $yesvalues = $yesvalues.$key.", ";
        break;
      case "no":
        $novalues = $novalues.$key.", ";
        break;
    }
  }

  $yesvalues = rtrim($yesvalues, ', ');
  $novalues = rtrim($novalues, ', ');

  //prime the sqlresult vars so the error check will pass
  $sqlresultyes = 1;
  $sqlresultno = 1;

  if ($yesvalues)
  {
    $sqlinsertyes = "update ".$gametable." set made=1 where pk in (".$yesvalues.")";
    $sqlresultyes = $pdo->query($sqlinsertyes);
  }
  if ($novalues)
  {
    $sqlinsertno = "update ".$gametable." set made=0 where pk in (".$novalues.")";
    $sqlresultno = $pdo->query($sqlinsertno);
  }
  unset($yesvalues);
  unset($novalues);

  if (!$sqlresultyes OR !$sqlresultno)
  {
    $error = "<p>Error updating tracker: ".$dbc->errorInfo()."</p>";
    die($error);
  }
  unset($sqlinsertyes);
  unset($sqlinsertno);
  unset($sqlresultyes);
  unset($sqlresultno);
}

?>
<h1>Tracker Reset Page for <?php echo $gamename; ?></h1>
<div class="navigation">
<form action="tracker.php" method="post">
<p><input type="submit" class="submitbutton" name="submittoreset" value="Back to tracker" /></p>
<input type="hidden" name="gamepk" value="<?php echo $gamepk; ?>">
<input type="hidden" name="gamename" value="<?php echo $gamename; ?>">
<input type="hidden" name="season" value="<?php echo $seasonselection; ?>">
</form>
</div> <!-- navigation -->

<form action="<?=$_SERVER['PHP_SELF']; ?>" method="post">
<input type="hidden" name="gamepk" value="<?php echo $gamepk; ?>">
<input type="hidden" name="gamename" value="<?php echo $gamename; ?>">
<input type="hidden" name="season" value="<?php echo $seasonselection; ?>">

<div class="trackablesresetcontainer">
<h3>Marked as done</h3>
<table class="resettable">
<tr><th>Trackable</th><th>Done?</th></tr>

<?php

$sqlselect = "select i1.item_name as name, t1.made, t1.pk from ".$gametable." t1 left join items i1 on i1.item_id=t1.trackable_id where t1.made=1 order by i1.item_name";

$sqlresult = $pdo->query($sqlselect);
if (!$sqlresult)
{
  die("Error loading trackables: " . $dbc->errorInfo());
}
unset($sqlselect);

while ($row = $sqlresult->fetch())
{
  $nameurl = $row['name'];
  $nameurl = str_replace(' ', '_', $row['name']);

  echo "<tr class=\"alternatingcolours\">\n";
  echo "<td class=\"item\"><a target=\"_blank\" class=\"itemlink\" href=\"https://stardewvalleywiki.com/".$nameurl."\">".$row['name']."</a></td>\n";
  switch ($row['made'])
  {
    case true:
      $checkno = "";
      $checkyes ="  checked=\"checked\"";
      break;
    case false:
      $checkyes = "";
      $checkno = " checked=\"checked\"";
      break;
  }

  echo "<td class=\"item\">";
  echo "<input type=\"radio\" name=\"".$row['pk']."\" id=\"yes".$row['pk']."\" value=\"yes\"".$checkyes.">";
  echo "<label class=\"radiolabel\" for=\"yes".$row['pk']."\">Yes</label>";
  echo "&nbsp;";
  echo "<input type=\"radio\" name=\"".$row['pk']."\" id=\"no".$row['pk']."\" value=\"no\"".$checkno.">";
  echo "<label class=\"radiolabel\" for=\"no".$row['pk']."\">No</label>";
  echo "</td>";
  echo "</tr>\n";
}
?>

</table>
</div> <!-- trackablesresetcontainer -->

<div class="trackablesresetcontainer">
<h3>Not marked as done</h3>
<table class="resettable">
<tr><th>Trackable</th><th>Done?</th></tr>

<?php

$sqlselect = "select i1.item_name as name, t1.made, t1.pk from ".$gametable." t1 left join items i1 on i1.item_id=t1.trackable_id where t1.made=0 order by i1.item_name";

$sqlresult = $pdo->query($sqlselect);
if (!$sqlresult)
{
  die("Error loading trackables: " . $dbc->errorInfo());
}
unset($sqlselect);

while ($row = $sqlresult->fetch())
{
  $nameurl = $row['name'];
  $nameurl = str_replace(' ', '_', $row['name']);

  echo "<tr class=\"alternatingcolours\">\n";
  echo "<td class=\"item\"><a target=\"_blank\" class=\"itemlink\" href=\"https://stardewvalleywiki.com/".$nameurl."\">".$row['name']."</a></td>\n";
  switch ($row['made'])
  {
    case true:
      $checkno = "";
      $checkyes ="  checked=\"checked\"";
      break;
    case false:
      $checkyes = "";
      $checkno = " checked=\"checked\"";
      break;
  }

  echo "<td class=\"item\">";
  echo "<input type=\"radio\" name=\"".$row['pk']."\" id=\"yes".$row['pk']."\" value=\"yes\"".$checkyes.">";
  echo "<label class=\"radiolabel\" for=\"yes".$row['pk']."\">Yes</label>";
  echo "&nbsp;";
  echo "<input type=\"radio\" name=\"".$row['pk']."\" id=\"no".$row['pk']."\" value=\"no\"".$checkno.">";
  echo "<label class=\"radiolabel\" for=\"no".$row['pk']."\">No</label>";
  echo "</td>";
  echo "</tr>\n";
}
?>

</table>
</div> <!-- trackablesresetcontainer -->
<p><input type="submit" name="submitted" value="Submit Changes" /></p>
</form>

</body>
</html>

<?php
unset($sqlresult);
unset($row);
unset($nameurl);
unset($checkyes);
unset($checkno);
unset($gametable);
$dbc=null;
?>
