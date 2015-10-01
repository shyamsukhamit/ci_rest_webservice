<?php
/*
Add a new user
*/
function native_curl_insert($new_name, $new_Password)
{
    $username = 'admin';
    $password = '1234';
     
    // Alternative JSON version
    // $url = 'http://twitter.com/statuses/update.json';
    // Set up and execute the curl process
    
    $curl_handle = curl_init();
    curl_setopt($curl_handle, CURLOPT_URL, 'http://localhost/rest_ci/index.php/api/new_user/X-API-KEY/8hu8fWMCIhCXyq0U4TP0CMJ9waHkCGNcsrqok8zS');
    curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl_handle, CURLOPT_POST, 1);
    curl_setopt($curl_handle, CURLOPT_POSTFIELDS, array(
        'username' => $new_name,
        'password' => $new_Password
    ));
     
    // Optional, delete this line if your API is open
    curl_setopt($curl_handle, CURLOPT_USERPWD, $username . ':' . $password);
     
    $buffer = curl_exec($curl_handle);
    curl_close($curl_handle);
     
    $result = json_decode($buffer);
 
    if(isset($result->status) && $result->status == 'success')
    {
        echo 'User has been updated.';
    }
     
    else
    {
        echo 'Something has gone wrong';
    }
}
function native_curl_update($id,$new_name, $new_Password)
{
    $username = 'admin';
    $password = '1234';
     
    // Alternative JSON version
    // $url = 'http://twitter.com/statuses/update.json';
    // Set up and execute the curl process
    
    $curl_handle = curl_init();
    curl_setopt($curl_handle, CURLOPT_URL, 'http://localhost/rest_ci/index.php/api/user/X-API-KEY/8hu8fWMCIhCXyq0U4TP0CMJ9waHkCGNcsrqok8zS');
    curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl_handle, CURLOPT_POST, 1);
    curl_setopt($curl_handle, CURLOPT_POSTFIELDS, array(
    	'id'=>$id,
        'username' => $new_name,
        'password' => $new_Password
    ));
     
    // Optional, delete this line if your API is open
    curl_setopt($curl_handle, CURLOPT_USERPWD, $username . ':' . $password);
     
    $buffer = curl_exec($curl_handle);
    curl_close($curl_handle);
     
    $result = json_decode($buffer);
 
    if(isset($result->status) && $result->status == 'success')
    {
        echo 'User has been updated.';
    }
     
    else
    {
        echo 'Something has gone wrong';
    }
}
 $id = 1;
 $new_name = "Sanjay Mohit";
 $new_Password="aaabbbbccc";
 $result       = native_curl_insert($new_name, $new_Password);
 $resultUpdate = native_curl_update($id,$new_name, $new_Password);
 echo $result;
 echo $resultUpdate;
?>