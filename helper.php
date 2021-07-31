<?php
	$connect = mysqli_connect("localhost", "root", "", "livesearch");
	$output = '';

	if(isset($_POST["query"]))
	{
		$search = mysqli_real_escape_string($connect, $_POST["query"]);

		$query="SELECT * FROM students WHERE name LIKE '%".$search."%'
					OR registration LIKE '%".$search."%' 
					OR roll LIKE '%".$search."%' 
					OR session LIKE '%".$search."%' 
					OR batch LIKE '%".$search."%'
					OR dept LIKE '%".$search."%' 
					OR univ LIKE '%".$search."%'
				";
	}
	else
	{
		$query = "SELECT * FROM students ORDER BY id";
	}

	$result = mysqli_query($connect, $query);

	if($result->num_rows > 0)
	{
		$output .= '<div class="table-responsive">
						<table class="table table bordered">
							<tr>
								<th width="2%"> Serial </th>
								<th width="12%"> Student Name </th>
								<th width="5%"> Registration No </th>
								<th width="5%"> Roll No </th>
								<th width="5%"> Session </th>
								<th width="5%"> Batch </th>					
								<th width="12%"> Department </th>
								<th width="12%"> University </th>

							</tr>';
		
		$i=0;

		while($value = $result->fetch_assoc())
		{
			$i++;
			
			$output .= '<tr>
							<td>'.$i.'</td>
							<td>'.$value["name"].'</td>
							<td>'.$value["registration"].'</td>
							<td>'.$value["roll"].'</td>
							<td>'.$value["session"].'</td>
							<td>'.$value["batch"].'</td>
							<td>'.$value["dept"].'</td>
							<td>'.$value["univ"].'</td>

						</tr>';
		}

		echo $output;
	}
	else
	{
?>

<h4 style="color: red; text-align: center;"> Whoops !!! no related data found ...</h4>

<?php
		
		
	}
?>