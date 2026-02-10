<!DOCTYPE html>
<html lang="en">
<head>
<title>Stardew Perfection Tracker</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<?php
include "config.php";

$invalues=null;
$statusmessage=null;

//********************* GET SCROLL POSITION FOR AUTOSCROLL

if ($_POST['scrollposname'])
{
  $scrollpos = $_POST['scrollposname'];
  echo "<script>";
  echo "function scrolltopos() {";
  echo "window.scrollTo(0, ".$scrollpos.");";
  echo "}";
  echo "window.onload = scrolltopos;";
  echo "</script>";
}


//********************* CHECK FOR GAME PK VALUE

if (!isset($_GET['gamepk']) && !isset($_POST['gamepk']))
{
  echo "<p>No game name detected.  Go back and try again.</p>";
  echo "<p class=\"navlink\"><a href=\"index.php\">Back to landing page</a></p>";
  die();
}


//********************* BUILD VARS FOR PASSING BETWEEN PAGES
if($_POST)
{
  $gamepk = $_POST['gamepk'];
  strtolower($gamename = $_POST['gamename']);
}
else
{
  $gamepk = $_GET['gamepk'];
  strtolower($gamename = $_GET['gamename']);
}
$gametable = "gamedata".$gamepk.$gamename;


//********************* PROCESS THE SEASON SELECTION
$seasonselection = "all";
if ($_POST['season'])
{
  $seasonselection = $_POST['season'];
  unset($_POST['season']);
}


//********************* DEAL WITH CHANGES TO TRACKED STUFF
//it's setup to "easily" switch to a multi-select thing

//step 1, get the value(s)
if (isset($_POST['trackerchange']))
{
  foreach($_POST as $key => $value)
  {
    if($key=='trackerchange')
    {
      $invalues = $invalues.$value.", ";
      $invalues = rtrim($invalues, ', ');  
    }
  }
  unset($_POST['trackerchange']);
  $sqlupdatetracker = "update ".$gametable." set made=1 where pk in (".$invalues.")";
  unset($invalues);

//step 2, pass the value(s) to the db for updating
  $sqlupdatetrackerresult = $pdo->query($sqlupdatetracker);
  if (!$sqlupdatetrackerresult)
  {
    $error = "<p>Error updating tracker.  Kinda defeats the purpose of this whole thing, if I'm honest.</p><p id=\"navlinkdiv\"><a href=\"index.php\">Go back and try again?</a></p><p>".$dbc->errorInfo()."</p>";
    die($error);
  }
  unset($sqlupdatetracker);
  unset($_POST['trackerchange']);
}

?>

<h1>Perfection Tracker for <?php echo $gamename; ?></h1>

<!--
//********************* SEASON SELECTOR
// -->
<form action="<?=$_SERVER['PHP_SELF']; ?>" method="post">
<input type="hidden" name="gamepk" value="<?php echo $gamepk; ?>">
<input type="hidden" name="gamename" value="<?php echo $gamename; ?>">
<div id="radiobuttoncontainer">
<input type="radio" onChange="this.form.submit();" name="season" class="theradiobuttonitself" id="spring" value="spring" <?php if ($seasonselection == 'spring') { echo "checked=\"checked\""; } ?>>
<label for="spring">Spring</label>

<input type="radio" onChange="this.form.submit();" name="season" class="theradiobuttonitself" id="summer" value="summer" <?php if ($seasonselection == 'summer') { echo "checked=\"checked\""; } ?>>
<label for="summer">Summer</label>

<input type="radio" onChange="this.form.submit();" name="season" class="theradiobuttonitself" id="fall" value="fall" <?php if ($seasonselection == 'fall') { echo "checked=\"checked\""; } ?>>
<label for="fall">Fall</label>

<input type="radio" onChange="this.form.submit();" name="season" class="theradiobuttonitself" id="winter" value="winter" <?php if ($seasonselection == 'winter') { echo "checked=\"checked\""; } ?>>
<label for="winter">Winter</label>

<input type="radio" onChange="this.form.submit();" name="season" class="theradiobuttonitself" id="all" value="all" <?php if ($seasonselection == 'all') { echo "checked=\"checked\""; } ?>>
<label for="all">All</label>

</div>
</form>


<!--
//********************* GENERATE LISTS OF REQUIRED ITEMS
//-->
<div class="itemcontainer">
<h2>Items</h2>

<?php

switch ($seasonselection)
{
  case "spring":
    $sqlseason="and i1.spring=1 ";
    break;
  case "summer":
    $sqlseason="and i1.summer=1 ";
    break;
  case "fall":
    $sqlseason="and i1.fall=1 ";
    break;
  case "winter":
    $sqlseason="and i1.winter=1 ";
    break;
  case "all":
    $sqlseason="";
    break;
}

$itemtype = array(0=>"crop", 1=>"forage", 2=>"fish");

foreach($itemtype as $key => $value)
{
  $itemheader = ucwords($value);
  $sqlselectitemsbygroups = "select i1.item_name as name, sum(r1.item_quantity) as quantity
    from recipes r1
    left join items i1 on r1.item_id=i1.item_id
    left join ".$gametable." t1 on r1.trackable_id=t1.trackable_id
    where t1.made=0 and i1.".$value."=1 ".$sqlseason."group by i1.item_name
    order by i1.item_name";

  $sqlitemsbygroupsresult = $pdo->query($sqlselectitemsbygroups);
  unset($sqlselectitemsbygroups);
/*  if (!$sqlitemsbygroupsresult)
  {
    echo "Error requesting \"".$value."\" and \"".$seasonselection."\".  Something's broken.: " . $dbc->errorInfo();
    echo "<p class=\"navlink\"><a href=\"index.php\">Back to landing page</a></p>";
    die($error);
  }*/

  //need to see if there are any items of the group left for this season
  //prime the $row, and reset the pointer back to 0 for the loop later
//  $row = $sqlitemsbygroupsresult->fetch();
//  pg_result_seek($sqlitemsbygroupsresult, 0);

  if($sqlitemsbygroupsresult->rowCount() > 0) //if there are no items left in this group for this season
  {
    echo "<div class=\"itemgroupcontainer\">\n"; //itemsgroupedbytype
    echo "<h3 class=\"itemgroupheader\">".ucwords($itemheader)."</h3>\n";
    echo "<table class=\"itemtable\">\n";
    echo "<tr class=\"alternatingcolours\">";
    echo "<th class=\"leftalign\">Item</th>";
    echo "<th class=\"centered\">Quantity</th>";
    echo "</tr>\n";
    while ($row = $sqlitemsbygroupsresult->fetch())
    {
      $nameurl = str_replace(' ', '_', $row['name']);
      echo "<tr class=\"alternatingcolours\">";
      echo "<td class=\"item\"><a target=\"_blank\" class=\"itemlink\" href=\"https://stardewvalleywiki.com/".$nameurl."\">".$row['name']."</a></td>";
      echo "<td class=\"item centered quantities\">".$row['quantity']."</td>";
      echo "</tr>\n";
    }
    echo "</table>\n";
    echo "</div>\n"; //itemsgroupedbytype
  }
}  //foreach
unset($itemheader);
unset($itemtype);
unset($sqlseason);


//********************* EVERYTHING ELSE TABLE */

$sqlselecteverythingelse = "select i1.item_name as name, sum(r1.item_quantity) as quantity
  from recipes r1
  left join items i1 on r1.item_id=i1.item_id
  left join ".$gametable." t1 on r1.trackable_id=t1.trackable_id
  where t1.made=0 and (i1.crop=0 and i1.fish=0 and i1.forage=0)
  group by i1.item_name
  order by i1.item_name";

$sqleverythingelseresult = $pdo->query($sqlselecteverythingelse);
unset($sqlselecteverythingelse);

if ($sqleverythingelseresult->rowCount() > 0)
{
  echo "<div class=\"itemgroupcontainer\">\n"; //itemsgroupedbytype
  echo "<h3 class=\"itemgroupheader\">Everything Else</h3>\n";
  echo "<table class=\"itemtable\">\n";
  echo "<tr class=\"alternatingcolours\">";
  echo "<th class=\"leftalign\">Item</th>";
  echo "<th class=\"centered\">Quantity</th>";
  echo "</tr>\n";

  while ($row = $sqleverythingelseresult->fetch())
  {
    $nameurl = str_replace(' ', '_', $row['name']);
    echo "<tr class=\"alternatingcolours\">";
    echo "<td class=\"item\"><a target=\"_blank\"  class=\"itemlink\" href=\"https://stardewvalleywiki.com/".$nameurl."\">".$row['name']."</a></td>";
    echo "<td class=\"item centered quantities\">".$row['quantity']."</td>";
    echo "</tr>\n";
  }
  unset($nameurl);
  echo "</table>\n";
  echo "</div>\n"; //itemsgroupedbytype
}
?>

</div> <!-- itemcontainer -->

<div class="trackingcontainer">
<h2>Tracking</h2>
<form action="<?=$_SERVER['PHP_SELF']; ?>" method="post">
<input type="hidden" name="gamepk" value="<?php echo $gamepk; ?>">
<input type="hidden" name="gamename" value="<?php echo $gamename; ?>">
<input type="hidden" name="season" value="<?php echo $seasonselection; ?>">



<?php
//********************* TRACKABLES, GROUPED BY TYPE, WITH CHECKBOXES */

switch ($seasonselection)
{
  case "spring":
    $sqltrackableseason="and (i1.spring=1 or (i1.spring=0 and i1.summer=0 and i1.fall=0 and i1.winter=0)) ";
    break;
  case "summer":
    $sqltrackableseason="and (i1.summer=1 or (i1.spring=0 and i1.summer=0 and i1.fall=0 and i1.winter=0)) ";
    break;
  case "fall":
    $sqltrackableseason="and (i1.fall=1 or (i1.spring=0 and i1.summer=0 and i1.fall=0 and i1.winter=0)) ";
    break;
  case "winter":
    $sqltrackableseason="and (i1.winter=1 or (i1.spring=0 and i1.summer=0 and i1.fall=0 and i1.winter=0)) ";
    break;
  case "all":
    $sqltrackableseason="";
    break;
}

$trackabletype = array(0=>"bundle", 1=>"fish", 2=>"quest", 3=>"shipping", 4=>"crafting", 5=>"cooking");

foreach($trackabletype as $key => $value)
{
  switch ($value)
  {
    case "bundle":
      $sqltrackabletype="and i1.bundle=1 ";
      break;
    case "cooking":
      $sqltrackabletype="and i1.cooking=1 ";
      break;
    case "crafting":
      $sqltrackabletype="and i1.crafting=1 ";
      break;
    case "fish":
      $sqltrackabletype="and i1.fish=1 ";
      break;
    case "shipping":
      $sqltrackabletype="and i1.shipping=1 ";
      break;
    case "quest":
      $sqltrackabletype="and i1.quest=1 ";
      break;
  }
  
  $sqlselecttrackables = "select i1.item_name as name, t1.pk, t1.made 
    from items i1 
    right join ".$gametable." t1 on i1.item_id=t1.trackable_id 
    where i1.trackable=1 and t1.made=0 ".$sqltrackabletype." ".$sqltrackableseason."
    order by i1.item_name";
  unset($sqltrackabletype);
  $sqltrackablesresult = $pdo->query($sqlselecttrackables);
  unset($sqlselecttrackables);
  if ($sqltrackablesresult->rowCount() > 0) //if there are no items left in this group for this season
  {
    echo "<div class=\"trackinggroupcontainers\">\n"; //trackablesgroupedbytype
    echo "<h3 class=\"trackinggroupheader\">".ucwords($value)."</h3>\n";
    echo "<table class=\"trackingtable\">\n";
    echo "<tr class=\"alternatingcolours\">";
    echo "<th class=\"leftalign\">Trackable</th>";
    echo "<th class=\"centered\">Done?</th>";
    echo "</tr>\n";

    while ($row = $sqltrackablesresult->fetch())
    {
      $nameurl = str_replace(' ', '_', $row['name']);
      echo "<tr class=\"alternatingcolours\">";
      echo "<td class=\"item\"><a target=\"_blank\" class=\"itemlink\" href=\"https://stardewvalleywiki.com/".$nameurl."\">".$row['name']."</a></td>";

      //items will only show up on this list if t1.made=0, but in case you want to view what has been
      //made in the lists, change the sql, and use this stuff to check the boxes
      /*
      if ($row['made'] == 't')
      {
        $checkboxvar=" checked";
      }
      else
      {
        $checkboxvar="";
      }
      */
      echo "<td class=\"item centered\"><input type=\"checkbox\" onChange=\"this.form.submit();\" name=\"trackerchange\" value=\"".$row['pk']."\"";
//    echo $checkboxvar;
      echo "></td></tr>\n";
    }
//  unset($checkboxvar);
    unset($nameurl);
    echo "</table>\n";
    echo "</div>\n"; //trackablesgroupedbytype
  }
} //foreach
unset($trackabletype);


?>
<input type="hidden" id="scrollposid" name="scrollposname" value="" />
</form>
</div> <!--trackingcontainer -->

<div class="navigation">
<form action="reset.php" method="post">
<input type="hidden" name="gamepk" value="<?php echo $gamepk; ?>">
<input type="hidden" name="gamename" value="<?php echo $gamename; ?>">
<input type="hidden" name="season" value="<?php echo $seasonselection; ?>">
<p><input type="submit" class="submitbutton" name="fromtracker" value="Reset trackables" /></p>
</form>
<p id="navlink"><a href="index.php">Back to landing page</a></p>
</div> <!-- navigation -->


<!-- ********************* GET SCROLL POSITION -->
<script>
window.addEventListener("scroll", (event) => {
    let scroll = this.scrollY;
    document.getElementById("scrollposid").value = scroll;
});
</script>

</body>
</html>
<?php
unset($gamepk);
unset($gamename);
unset($gametable);
unset($seasonselection);
unset($sqltrackableseason);
unset($row);
unset($key);
unset($value);

$dbc = null;
?>
