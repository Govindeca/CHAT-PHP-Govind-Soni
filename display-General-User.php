<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
        'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    <title>
        FIRST CRUD
    </title>
    <!-- Style -- Can also be included as a file usually style.css -->
    <style type="text/css">
        table.table-style-three {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #3A3A3A;
            border-collapse: collapse;
        }

        table.table-style-three th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #FFA6A6;
            background-color: #D56A6A;
            color: #ffffff;
        }

        table.table-style-three a {
            color: blue;
            text-decoration: none;
        }

        table.table-style-three tr:hover td {
            cursor: pointer;
        }

        table.table-style-three tr:nth-child(even) td {
            background-color: #F7CFCF;
        }

        table.table-style-three td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #FFA6A6;
            background-color: #ffffff;
        }
    </style>

</head>
<?php
    require_once("config.php");
    require_once("header.php");
    // call to function fetchAllUsers() from functions.php
    $allusers = fetchAllUsers();

?>
    <body>
        <div id='left-nav'>
            <?php include("left-nav.php"); ?>
        </div>

        <pre>
            <?php //print_r($allusers); ?>
        </pre>
        <table class="table-style-three">
            <thead>

                <th>UserID</th>
                <th>UserName</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Roles</th>
                <th>Privilege</th>
            </thead>
            <tbody>
                <?php //NOTICE THE USE OF PHP IN BETWEEN HTML
                foreach ($allusers as $userdetails) {
                ?>
                    <tr>

                            <td><?php print $userdetails['UserID']; ?></td>
                            <td><?php print $userdetails['UserName']; ?></td>
                            <td><?php print $userdetails['FirstName']; ?></td>
                            <td><?php print $userdetails['LastName']; ?></td>
                            <td><?php print $userdetails['roles']; ?></td>
                            <td><?php print $userdetails['privilege']; ?></td>
                    </tr>

            <?php } ?>
            </tbody>
        </table>
    </body>
</html>