<!DOCTYPE html>
<html>
<head>
	<title>CSP Lab</title>
</head>
<body style="background-color:#ebdc34;">
	<h1><center>All Job Information</center></h1>
	<table align="center" border="1">
	<tr>
		<th>JobType</th>
		<th>Category</th>
		<th>JobTitle</th>
		<th>Company</th>
        <th>Vacancy</th>
		<th>Salary</th>
		<th>Deadline</th>
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

		// Retrieve form data
		//$jobType = $_GET['jobType'];
		$category = $_GET['category'];

		$sql = "SELECT * FROM job_search WHERE Category = '$category'"; 

		/*	// Constructing the SQL query based on job type and category
			if ( 'Contract' ==$jobType  &&  'Finance' == $category) {
				$sql = "SELECT * FROM job_search WHERE JobType='Contract' AND Category='Finance'";
			} elseif ('Part time' == $jobType  &&  'Finance' == $category ) {
				$sql = "SELECT * FROM job_search WHERE JobType='Part time' AND Category='Finance'";
			} elseif ('Full time' == $jobType  && 'Finance'== $category) {
				$sql = "SELECT * FROM job_search WHERE JobType='Full time' AND Category='Finance'";
			} elseif ( 'Contract' == $jobType &&  'Sales'== $category ) {
				$sql = "SELECT * FROM job_search WHERE JobType='Contract' AND Category='Sales'";
			} elseif ( 'Part time' == $jobType  &&  'Sales' == $category ) {
				$sql = "SELECT * FROM job_search WHERE JobType='Part time' AND Category='Sales'";
			} elseif ( 'Full time' == $jobType  && 'Sales' == $category ) {
				$sql = "SELECT * FROM job_search WHERE JobType='Full time' AND Category='Sales'";
			} elseif ('Contract' == $jobType  && 'Technology' == $category) {
				$sql = "SELECT * FROM job_search WHERE JobType='Contract' AND Category='Technology'";
			} elseif ('Part time' == $jobType  && 'Technology' == $category) {
				$sql = "SELECT * FROM job_search WHERE JobType='Part time' AND Category='Technology'";
			} elseif ('Full time' == $jobType  && 'Technology' == $category ) {
				$sql = "SELECT * FROM job_search WHERE JobType='Full time' AND Category='Technology'";
			}*/

			$result = $conn->query($sql);


		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc()) {
				?>
				<tr>
					<?php
					echo "<td>" . $row["JobType"] . "</td>";
					echo "<td>" . $row["Category"] . "</td>";
					echo "<td>" . $row["JobTitle"] . "</td>";
					echo "<td>" . $row["Company"] . "</td>";
					echo "<td>" . $row["Vacancy"] . "</td>";
					echo "<td>" . $row["Salary"] . "</td>";
					echo "<td>" . $row["LastDateofApply"] . "</td>";
					echo "<td>" . $row["Location"] . "</td>";
					?>
				</tr>
			<?php
			}
		} else {
			echo "0 results";
		}

		$conn->close();
	?>
	
	</table>
</body>
</html>


		

		