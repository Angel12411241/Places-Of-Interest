<?php
function inputFields($placeholder,$username, $value,$type){
        $ele="



                <input type='$type' name='$username' placeholder='$placeholder' autocomplete=\"off\">
               
        


        ";
         echo $ele;
    }