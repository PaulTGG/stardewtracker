<!DOCTYPE html>
<html lang="en">
<head>
<title>Perfection Tracker Landing</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<?php
include "config.php";
$nametaken=null;
$statusmessage=null;

//********************* CHECK FOR DELETIONS

if (isset($_POST['deletionrequest']))
{
  $pkofgametodelete = $_POST['gametodelete'];
  $sqlgamenamelookup = "select gamename from gamelist where pk=".$_POST['gametodelete'];
  $sqlgamenamelookupresult = $pdo->query($sqlgamenamelookup);
  unset($sqlgamenamelookup);
  if (!$sqlgamenamelookupresult)
  {
    $error = $error."<p>Unable to find the right game.  Something is VERY wrong. ".$dbc->errorInfo()."</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
    die($error);
  }
  else 
  {
    $nameofgametodelete = $sqlgamenamelookupresult->fetchColumn();
  }

  if (!$pkofgametodelete)
  {
    $statusmessage = "No game specified for deletion (did you pick a game?).";
  }
  else
  {
    $tablename = "gamedata".$_POST['gametodelete'].$nameofgametodelete;
    $sqldeletefromgamelist = "delete from gamelist where pk=".$pkofgametodelete;
    $sqldeletegametable = "drop table ".$tablename;
//    $sqldeletesequence = "drop sequence ".$tablename."_pk_seq";
    unset($pkofgametodelete);
    unset($tablename);
    $error = "";
    $sqldeletefromgamelistresult = $pdo->query($sqldeletefromgamelist);
    if (!$sqldeletefromgamelistresult)
    {
      $error = $error."<p>Unable to delete game.  Not the end of the world, but thought you should know. ".$dbc->errorInfo()."</p>";
    }

    $sqldeletegametableresult = $pdo->query($sqldeletegametable);
    if (!$sqldeletegametableresult)
    {
      $error = $error."<p>Unable to delete game table.  Oh well, just means some manual cleanup. ".$dbc->errorInfo()."</p>";
    }
/*    $sqldeletesequenceresult = $pdo->query($sqldeletesequence);
    if (!$sqldeletesequenceresult)
    {
      $error = $error."<p>Unable to delete game pk sequence.  No biggie, just needs to be done manually. ".$dbc->errorInfo()."</p>";
    }
*/    
    if ($error)
    {
      echo "<p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
      die($error);
    }
    else
    {
      $statusmessage = "Game deleted successfully!";
    }
  }  
}



//********************* BUILD INITIAL LIST OF GAMES

$sqlselectgamelist = "select pk,gamename from gamelist where active=1 order by gamename";
$sqllistofgamesresult = $pdo->query($sqlselectgamelist);
if (!$sqllistofgamesresult)
{
  $error = "<p>Error loading game list.  Something's very broken.</p><p><a href=\"index.php\">Try again?</a></p>";
  die($dbc->errorInfo());
}
if($sqllistofgamesresult->rowCount() > 0) //if there are no items left in this group for this season
{
  $listofgames = "<h2>List of Games</h2><ul>";
  while ($row = $sqllistofgamesresult->fetch())
  {
    $listofgames = $listofgames."<li><form action=\"tracker.php\" method=\"get\"><input type=\"submit\" class=\"gamelistbutton\" name=\"gamename\" value=\"".ucwords($row['gamename'])."\" /><input type=\"hidden\" name=\"gamepk\" value=\"".$row['pk']."\"></form></li>\n";
  }
  $listofgames=$listofgames."</ul>";
}
unset($row);


//********************* UPDATE GAME TABLES

if (isset($_POST['updaterequest']))
{
  $sqlselectgamepks = "select pk,gamename from gamelist";
  $sqlselectgamepksresult = $pdo->query($sqlselectgamepks);
  unset($sqlselectgamepks);
  if (!$sqlselectgamepksresult)
  {
    $error = "<p>Error updating tables.  Can't query the list of games.</p><p><a href=\"index.php\">Try again?</a></p>";
    die($dbc->errorInfo());
  }
  $sqllistofgamesresult2 = $pdo->query($sqlselectgamelist);
  while ($row = $sqllistofgamesresult2->fetch())
  {
    $tablename = "gamedata".$row['pk'].$row['gamename'];
    $sqlupdategametable = "insert into ".$tablename." (trackable_id) select items.item_id from items where items.trackable=1 except select ".$tablename.".trackable_id from ".$tablename;
    $sqlupdategametableresult = $pdo->query($sqlupdategametable);
    
    if (!$sqlupdategametableresult)
    {
      $error="<p>Error updating \"".$row['gamename']."\".</p><p><a href=\"index.php\">Try again?</a></p>";
      die($error);
    }
    $sqlupdategametable2 = "delete from ".$tablename." where ".$tablename.".trackable_id in (select items.item_id from items where items.trackable=0)";
    $sqlupdategametableresult2 = $pdo->query($sqlupdategametable2);
    if (!$sqlupdategametableresult2)
    {
      $error="<p>Error removing excess data from \"".$row['gamename']."\".</p><p><a href=\"index.php\">Try again?</a></p>";
      die($error);
    }
  }
  $statusmessage="<p>Tables updated successfully!</p>";
  unset($sqlupdategametable);
  unset($sqlupdategametable2);
  unset($row);
  unset($tablename);
}


//********************* ADD A NEW GAME

if (isset($_POST['posted']))
{
  $newgamename = preg_replace("/[^a-zA-Z0-9]+/", "", $_POST['newgamename']); //remove any non-alphanumerics,
  $newgamename = strtolower($newgamename); //make it lower case,
  $newgamename = substr($newgamename,0,40); //and truncate it to 40 characters
  unset($_POST);
  if (!$newgamename) //if there's nothing left after the sanitization
  {
    $statusmessage="Invalid name.  Only use a-z and/or 0-9 in the name.";
  }
  else
  {
    while ($row = $sqllistofgamesresult->fetch()) //check for duplicate names
    {
      if ($row['gamename'] == $newgamename)
      {
        $nametaken=TRUE;
        $statusmessage="Name already in use.  Choose a different name.";
        break;
      }
      else
      {
        $nametaken=FALSE;
      }
    }
    unset($row);
    if (!$nametaken) //add new game name to gamelist table
    {
      $sqlinsertgamename = "insert into gamelist (gamename) values ('".$newgamename."')";
      $sqlinsertgamenameresult = $pdo->query($sqlinsertgamename);
      unset($sqlinsertgamename);
      if (!$sqlinsertgamenameresult)
      {
        $error = "<p>Error adding name to database.  Something\'s broken.</p><p><a id=\"navlink\" href=\"index.php\">Try again?</a></p>";
        die($dbc->errorInfo());
      }
      else //rebuild list of games with new game name
      {
        $sqllistofgamesresult = $pdo->query($sqlselectgamelist);
        $listofgames = "<h2>List of Games</h2><ul>";
        while ($row = $sqllistofgamesresult->fetch())
        {
          $listofgames = $listofgames."<li><form action=\"tracker.php\" method=\"get\"><input type=\"submit\" class=\"gamelistbutton\" name=\"gamename\" value=\"".ucwords($row['gamename'])."\" /><input type=\"hidden\" name=\"gamepk\" value=\"".$row['pk']."\"></form></li>\n";
        }
        $listofgames=$listofgames."</ul>";

        unset($row);
        unset($sqlselectgamelist);
        
        //get the primary key value of the new game (we use it to name the db seq and data table)
        $sqlretrievegamepk = "select pk from gamelist where gamename='" . $newgamename . "' and active!=0";        
        $sqlretrievegamepkresult = $pdo->query($sqlretrievegamepk);
        unset($sqlretrievegamepk);
        if (!$sqlretrievegamepkresult)
        {
          $error = "<p>Error retrieving table key.  Can\'t add the game. ".$dbc->errorInfo()."</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
          die($error);
        }
        else 
        {
          $pk = $sqlretrievegamepkresult->fetchColumn();
          $sqltablename = "gamedata".$pk.$newgamename;
          unset($newgamename);
/*          $sqlsequencename = $sqltablename."_pk_seq";
          $sqlcreatesequence = "create sequence ".$sqlsequencename." start 1";
          $sqlcreatesequenceresult = $pdo->query($sqlcreatesequence);
          unset($sqlcreatesequence);
          if (!$sqlcreatesequenceresult)
          {
            $error = "<p>Error creating sequence.  Unable to setup new game.: ".$dbc->errorInfo()."</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
            die($error);
          }
          
*/          
          //create the game data table
          $sqlcreatetable = "create table ".$sqltablename." (pk integer not null auto_increment primary key, trackable_id integer, made int default 0)";
          $sqlcreatetableresult = $pdo->query($sqlcreatetable);
          unset($sqlcreatetable);
          if (!$sqlcreatetableresult)
          {
            echo "<p>Error adding table to database.  Unable to setup new game.: ".$dbc->errorInfo()."</p>";
            echo "<p>Cleaning up...</p>";
 /*           $sqldeletesequence = "drop sequence ".$sqlsequencename;
            $sqldeletesequenceresult = $pdo->query($sqldeletesequence);
            unset($sqldeletesequence);
            if (!$sqldeletesequenceresult)
            {
              $error = "<p>Error deleting sequence.  Something\'s very broken.: ".$dbc->errorInfo()."</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
              die($error);
            }*/
            die('<p>Cleanup complete.  Exiting.</p>');       
          }
          
          //populate the initial values in the game data table
          $sqltableinit = "insert into ".$sqltablename." (trackable_id) select items.item_id from items where items.trackable=1";
          $sqltableinitresult = $pdo->query($sqltableinit);
          unset($sqltableinit);
          if (!$sqltableinitresult)
          {
            echo "<p>Error populating game table.  Could try it again, but something's probably broken.: ".$dbc->errorInfo()."</p>";
            echo "<p>Cleaning up...</p>";
            $sqldeletetable = "drop table ".$sqltablename;
            $sqldeletetableresult = $pdo->query($sqldeletetable);
            unset($sqldeletetable);
            if (!$sqldeletetableresult)
            {
              $error = "<p>Error deleting table.  Something\'s very broken.: ".$dbc->errorInfo()."</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
              die($error);
            }
 /*           $sqldeletesequence = "drop sequence ".$sqlsequencename;
            $sqldeletesequenceresult = $pdo->query($sqldeletesequence);
            unset($sqldeletesequence);
            if (!$sqldeletesequenceresult)
            {
              $error = "<p>Error deleting sequence.  Something\'s very broken.: ".$dbc->errorInfo()."</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>";
              die($error);
            }*/
            die('<p>Cleanup complete.</p><p><a id=\"navlink\" href=\"index.php\">Back to the landing page...</a></p>');       
          }
        }
//        unset($sqldeletesequence);
        unset($sqltablename);
//        unset($sqlsequencename);
      }
    }
    unset($nametaken);
  }
}

?>

<h1>Perfection Item Tracker</h1>
<div class="statusmessage"><p><?php echo $statusmessage ?></p></div>
<div id="listofgamesdiv">
<?php echo $listofgames; ?>
</div>

<div id="createnewgamediv">
<form action="<?=$_SERVER['PHP_SELF']; ?>" method="post">
<h2>Create a new game</h2>
<p>
New Game Name (alphanumeric): <input type="text" id="newgameinputbox" name="newgamename" maxlength="40" /><br />
<input type="submit" id="submitbutton" name="posted" value="Add Game" />
</p>
</form>
</div>

<div id="deletegamediv">
<p class="navlink"><a href="delete.php">Click here to delete a game</a></p>
<form action="<?=$_SERVER['PHP_SELF']; ?>" method="post">
<input type="hidden" name="updaterequest" value="updaterequest">
<input type="submit" class="submitbutton" name="submitupdate" value="Click here to update game tables" />
</form>
</p>
</div>

</body>
</html>
<?php
unset($listofgames);
unset($statusmessage);
$dbc=null;
?>