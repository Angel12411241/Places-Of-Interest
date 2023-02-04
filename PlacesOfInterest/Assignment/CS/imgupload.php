<?php
require_once 'operation.php';

?>
<html lang="en">
<head>
    
    <title>Plovdiv</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,500;0,600;1,300;1,600&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>
<body>
    <div class="main">
        <div class="navbar">
            <div class="logo">
                <h2 class="logo">Plovdiv</h2>
            </div>
            
            <div class="menu">
                <ul>
                    <li><a href="index.php">HOME</a></li>
                    <li><a href="places.php">Places</a></li>
                    <li><a href="photos.php">Photos</a></li>
                    <li><a href="imgupload.php">UploadPhotos</a></li>


                </ul>
            </div>
        </div>
    

        <!-- <form action="">
                <input type="text" name="username" placeholder="Title">
                <input type="text" name="username" placeholder="Username">
                <input type="text" name="username" placeholder="Geo Location">
                <input type="text" name="username" placeholder="Description">
                
        
        </form> -->
  
<div class="regform">   
    <h1>Image Submit Form</h1>
    <form action="display.php" method="post" class="w-50" enctype="multipart/form-data">
    <?php inputFields("Title", "title", "", "text")?>
    <?php inputFields("Username", "username", "", "text")?>
    <?php inputFields("Geo Location", "geolocation", "", "text")?>
    <?php inputFields("Description", "description", "", "text")?>
        <label class="choosebutton">
            <?php inputFields("", "file", "", "file")?>
        </label>
    
    <input type="submit" name="submit" value="SUBMIT">
    </form>
</div>
</body>
</html>