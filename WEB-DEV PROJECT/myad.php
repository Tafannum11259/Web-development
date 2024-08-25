<?php
   session_start();
   if(isset($_SESSION['username']))
{

}
else
{
	header("Location:login.php");
} 

$name=$_SESSION['fname'];
$unerr="";
	
	if(isset($_POST['search']))
	{
		$c = $_POST['City'];
		if ($c == 0)
        {
			header("Location:Dfilter.php");
		}
		else if ($c == 1)
		{
			header("Location:Cfilter.php");
		}
	}
	
	if (isset($_POST['tsearch']))
	{

		$ts = $_POST['tbsearch'];
		$_SESSION['search']= $ts;
		if ($ts == "" )
		{
			$unerr= "field empty";
		}
		else
		{
			$con=mysqli_connect("localhost","root","","project");			//open database Connection
			if(!$con)
			{
				die("Connection Error: ".mysqli_connect_error()."<br/>");
			}
		$sql="select * from ads where area = '$ts'";
		$result=mysqli_query($con,$sql);	
		if(mysqli_num_rows($result)>0)
		{
					header("Location:Dfilter.php")		;				
		}
		else
		{
			$unerr= "Please Enter Area!!!"	;
		}
		}
	}
		
	

?>
	
	
<html>
    <head>
	    <title>Show Ad</title>
    </head>
	<body>
		
	        <table width="100%" height="80px" bgcolor="#43c1d0" >
				<form method="post" >
					<tr>
						<td width="25%" align="center"><font face = "Comic sans MS"><h1>RENT/\HOME.COM</h1></font></td>	
                        <td width="50%" align="left"><input type="text" size = "70" name="tbsearch" placeholder="Search Your Loaction!"/>
						
						<input type="Submit" value="Search" name="tsearch"/></td>						
					</tr>
					<tr>
						<td><label><?= $unerr; ?></label></td> 
					</tr>
				</form>	
		    </table>
		    <table valign = "top" width="100%" height="470px">
		
		    <tr>
			
			    <td width="85%" align="center" bgcolor="#f1ecec"> 
				    
					<?php 

		
					$unm = $_SESSION['username'];
					include_once("db.php");
					
					$sql = "select * from ads WHERE username='$unm'";
					$result = mysqli_query($con, $sql);
					$resultCheck = mysqli_num_rows($result);

					echo "<table align='left' width='70%' border='1'>
					         <tr>
					         	<td>Image</td>
					         	<td>ID</td>
					         	<td>Area</td>
					         	<td>Details</td>
					         	<td>Masterbed</td>
					         	<td>Singlebed</td>
					         	<td>Balcony</td>
					         	<td>Washroom</td>
					         	<td>Rent</td>
					         	<td>Username</td>
					         	<td>Contact</td>
					         	<td>Action</td>
					         </tr>";

					if ($resultCheck > 0) {
						
						while ($row = mysqli_fetch_assoc($result)) {
						echo "<tr>
					         	<td><img src='{$row['Image']}' hight='100px' width='100px'></td>
					         	<td>{$row['id']}</td>
					         	<td>{$row['area']}</td>
					         	<td>{$row['house_details']}</td>
					         	<td>{$row['masterbed']}</td>
					         	<td>{$row['singlebed']}</td>
					         	<td>{$row['balcony']}</td>
					         	<td>{$row['washroom']}</td>
					         	<td>{$row['rent']}</td>
					         	<td>{$row['username']}</td>
					         	<td>{$row['number']}</td>
					         	<td><a href='mydelete.php?id={$row['id']}'>Delete</a></td>
					         </tr>";
						}
					}
					echo "</table>";
					?>
				    
				</td>
				
				<td width="15%" align="center" valign = "top" bgcolor="#43c1d0">
				    
					<table>
						<tr>
							
							<td align="middle"><br/><a href="home.php"><input type="Submit" value="HOME" name="home"/></td>
							
						</tr>

						<tr>
							
							<td align="middle"><br/><a href="upostad.php"><input type="Submit" value="POST AD" name="ad"/></td>
							
						</tr>
						
						<tr>
							
							<td align="middle"><br/><a href="contact.php"><input type="Submit" value="CONTACT" name="contact"/></a></td>
							
						</tr>
						
						<tr>
							
							<td align="middle"><br/><a href="profile.php"><input type="Submit" value="PROFILE" name="profile"/></a></td>
							
						</tr>
						
						<tr>
							
							<td align="middle"><br/><a href="logout.php"><input type="Submit" value="LOG OUT" name="index"/></a></td>
							
						</tr>
						
						
				    </table>
					
				
				
				</td>
				
			</tr>
			
		</table>
		
	</body>
	
</html>	  