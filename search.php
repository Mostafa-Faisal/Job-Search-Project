<!DOCTYPE html>
<html>
<head>
    <title>CSP Lab</title>
    <style>
        body {
            background-color: #ebdc34;
        }

        h1 {
            text-align: center;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
            margin-top: 30px;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Student Information</h1>
    <table>
        <tr>
            <th>Job Type</th>
            <th>Category</th>
            <th>Job Title</th>
            <th>Company</th>
            <th>Vacancy</th>
            <th>Salary</th>
            <th>Last Date of Apply</th>
            <th>Location</th>
        </tr> 
        <?php
        $servername = 'localhost';
        $username = 'root';
        $password = '';
        $dbname = 'dbms_ii_project';
        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        if(isset($_POST['submit'])){
            $JobType = $_POST['jobType'];
            $Category = $_POST['category'];

            if($JobType != "" || $Category != ""){
                $sql = "select * from job_search";
                
                $data = mysqli_query($conn, $query) or die('error');
                if(mysqli_num_rows($data)>0){
                    while($row = mysqli_fetch_assoc($data)){
                        
                        ?>

                    <tr>
                        <td><?php echo $JobType;?></td>
                        <td><?php echo $Category;?></td>
                        <td><?php echo $JobTitle;?></td>
                        <td><?php echo $Company;?></td>
                        <td><?php echo $Vacancy;?></td>
                        <td><?php echo $Salary;?></td>
                        <td><?php echo $LastDateofApply;?></td>
                        <td><?php echo $Location;?></td>
                    </tr>
                    <?php
                    }
                }
                else {
                    ?>
                    <tr>
                        <td colspan="8">No results found</td>
                    </tr>
                    <?php
                }
            }
        }
        $conn->close();
        ?>
    </table>
</body>
</html>
