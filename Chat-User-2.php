<?php

require_once("config.php");
require_once("header.php");
require_once("Chat-User-2.php");
//require_once ("userstatuspage.php");

// to get value from userstatus page
if(isset($_GET['FirstName'])){
$thisUserName = $_GET['FirstName'];
$_SESSION['OnlineUserName'] = $thisUserName;
}
$thisUserName = $_SESSION['OnlineUserName'];
echo $thisUserName;
// to get value from logged in user session
$_SESSION['user'] = "$loggedInUser->first_name";
$user = $_SESSION['user'];
echo $user;
// call a function to insert values in chatroom table

$chatrommdata = Fetchchatroomfetchdata($user,$thisUserName);
if(is_array($chatrommdata)){

?>  <?php
    foreach ($chatrommdata as $displayRecords) { ?>
        <tr>
            <td><?php print $displayRecords['ChatID']; ?></td>
            <td><?php print $displayRecords['User1']; ?></td>
            <td><?php print $displayRecords['user2']; ?></td>
        </tr>
    <?php }} ?>

<?php

 if($chatrommdata == NULL){
 $chatroominserted = indertintochatroom($user, $thisUserName);
 echo $chatroominserted;
}

// $user = $_SESSION['user'];
//$message  = $_POST['message'];
//$newuser = createNewmessage($user, $message);

    if (isset($_POST['message'])) {
         $user = $_SESSION['user'];
        $message = $_POST['message'];
        $newuser = createNewmessage($user, $message);

}




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="style.css" />
    <script
        src="https://code.jquery.com/jquery-3.2.1.js"
        integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
        crossorigin="anonymous">
    </script>
    <script>
        function Ajax(){
            var req = new XMLHttpRequest();
            req.onreadystatechange = function () {
                if(req.readyState == 4 && req.status == 200)
                {
                    document.getElementById('chat_box_ID').innerHTML = req.responseText;

                }
            }
            req.open('GET' , 'chat_box.php', true);
            req.send();

        }

        setInterval(function () {
            scrolldata()
            Ajax()
        }, 1000)
    </script>

</head>

<body onload="Ajax();">

<div id = "wrapper">
    <h1>Chat with me !</h1>
    <div class = "chat_wrapper">
        <div id= "chat">

            <div id = "chat_box_ID">

            </div>

        </div>

        <form action="Chat-User-2.php" method = "POST" >
            <textarea name ="message" , cols="30" , rows="10" class = "textarea"></textarea>
        </form>

    </div>
    <h3><p>Welcome !<a href="index.php">Taste of India</a></p></h3>

</div>

</body>
</html>



<script>
    $('.textarea').keyup(function (e) {
        if(e.which == 13) {
            $('form').submit();
        }
    });


</script>



<script>

    function scrolldata() {
        var height = 0;
        $('div').each(function (i, value) {
            height += parseInt($(this).height());
        });
        height += '';
        $('#chat').animate({scrollTop: height});
    }
</script>




