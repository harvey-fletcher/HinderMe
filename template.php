<?php

    //We need to get the location of the current file, and then import the sitesettings file
    $location = implode('/', array_slice( explode('/', __DIR__), 0, 5) );
    include_once($location . '/Config/SiteSettings.php');

?>
<html>
    <head>
        <title> hinder.me.uk | online names blacklist </title>
        <link rel="stylesheet" href="styles/<?php echo basename(__FILE__, '.php');?>.css" type="text/css">
        <link rel="stylesheet" href="styles/app.css" type="text/css">
    </head>
    <body onload="makecall();">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="js/<?php echo basename(__FILE__, '.php');?>.js"></script>
    </body>
</html>
