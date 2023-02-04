<?php
require_once 'dbconfig.php';
if (isset($_POST['submit'])){
    $title=$_POST['title'];
    $username=$_POST['username'];
    $geolocation=$_POST['geolocation'];
    $description=$_POST['description'];
    $img_dir = $_FILES['file'];
    //echo $title;

    //echo $username;

    //echo $geolocation;

    //echo $description;

    //print_r($img_dir);


    $imageFileName=$img_dir['name'];
    //print_r($imageFileName);

    $imageFileError=$img_dir['error'];
    //print_r($imageFileError);

    $imageFileTemp=$img_dir['tmp_name'];
    //print_r($imageFileTemp);

    $fileName_separate=explode('.',$imageFileName);
    //print_r($fileName_separate);
 
    $fileExtension=strtolower(end($fileName_separate));
    //print_r($fileExtension);

    $extensions=array('jpeg', 'png', 'jpg');


}
?>
<html lang="en">
<head>
    
    <title>Plovdiv</title>
    <link rel="stylesheet" href="uploadstyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,500;0,600;1,300;1,600&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"   >
    <style>
        img{
            width: 200px;
        }
    </style>

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
    
        <div class="d-inline-flex p-2">
                
                    <form>
                        <?php if(in_array($fileExtension, $extensions)){
                            $uploadImg='plovdivImg/'.$imageFileName;
                            move_uploaded_file($imageFileTemp,$uploadImg);
                            $sql=" insert into `imagesuploaded` (title, username, geolocation, description, img_dir) values ('$title', '$username','$geolocation',' $description',  '$uploadImg')";
                            $result=mysqli_query($db, $sql);
                                if($result){ ?>                           
                                        <?php echo'<div class="alert alert-success" role="alert">
                                                                Your upload has been succsessful! 
                                                                </div>'; ?>                
                                <?php
                                }else{
                                    die(mysqli_error($db)); 
                                }
                            } ?>
                    </form>
                
        </div>                

        <h1 class="text-center my-4" color= >User Data</h1>
        <div class="container mt-5">
        <table class="table table-bordered">
  <thead>
    <tr>
  
      <th scope="col">Title</th>
      <th scope="col">Username</th>
      <th scope="col">Geo Location</th>
      <th scope="col">Description</th>
      <th scope="col">Image</th>
    </tr>
  </thead>
  <tbody>
     <?php
     $sql="SELECT * FROM `imagesuploaded`";
     $result=mysqli_query($db, $sql);
     while($row=mysqli_fetch_assoc($result)){
        $id=$row['ID'];
        $title=$row['title'];
        $username=$row['username'];
        $geolocation=$row['geolocation'];
        $description=$row['description'];
        $image=$row['img_dir'];
        echo '  <tr>

        <td>'.$title.'</td>
        <td>'.$username.'</td>
        <td>'.$geolocation.'</td>
        <td>'.$description.'</td>
        <td><img src=' .$image.' /></td>
  
        </tr>';
    }
     

     ?>

    
  </tbody>
</table>
        </div>



</body>
</html>