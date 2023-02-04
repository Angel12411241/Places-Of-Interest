<?php
require_once 'dbconfig.php';

?>




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
        <div class="content" maxlength=10>
            <h1>Park Tsar  <span class="span">Simeon</span><br>History</h1>
            
                <?php 
                    $sql = "SELECT * FROM placeinfo WHERE id=3;";
                    $result = mysqli_query($db, $sql);
                    $resultCheck = mysqli_num_rows($result);
                    
                    if ($resultCheck>0){
                        while($row=mysqli_fetch_assoc($result)){
                        ?>   <td> <?php echo $row['history']; ?>  </td><br><br>
                             <h2 class="population"><td> Population is: <?php echo $row['population']; ?></td></h2>
                             <h2 class="population"><td> Geo Location is: <?php echo $row['GeoLocation']; ?></td></h2>
                             <h2 class="population"><td> Lattitude : <?php echo $row['placeOfInterestLat'];  ?></td></h2>
                             <h2 class="population"><td> Longtitude: <?php echo $row['placeOfInterestLong'];  ?></td></h2>
                    <?php
                        }
                    }
                    ?>               
        </div>


</body>
</html>