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
	
	    <title>Home</title>
		
    </head>
	
	<body>
	
	    <table width="100%" height="80px" bgcolor="#43c1d0" >
				<form method="post" >
					<tr>
				
						<td width="25%" align="middle"><font face = "Comic sans MS"><h1>RENT/\HOME.COM</h1></font></td>
						
						<td width="50%" align="left"><input type="text" size = "70" name="tbsearch" placeholder="Search Your Loaction!"/>
						
						<input type="Submit" value="Search" name="tsearch"/></td>
						
					
				
					</tr>
					<tr>
						<td><label><?= $unerr; ?></label></td> 
					</tr>
				</form>	
		    </table>
		
		<table width="100%" height="470px">
		
		    <tr>
			
			    <td width = "75%" align="middle" bgcolor = "lightgray">
				
				    <table  width="100%">
						
						<h1 align="middle">Contact Details</h1>
							
						<tr align="middle">
							
						    <h3>Company Name : RENT/\HOME<br/>
							Email : RENT/\HOME@gmail.com<br/>
							Phone : 01851080223</br>
							Address : R#6A, H#201, Dhanmondi, Dhaka, Bangladesh </h3>
								
						</tr>
							
				    </table>
					
				</td>
				
				<td width="15%" align="middle" valign = "top" bgcolor="#43c1d0">
				    
					<table>
				        
						
						
						<tr>
							
							<td align="middle"><br/><a href="home.php"><input type="Submit" value="HOME" name="home"   /></a></td>
							
						</tr>
						
						<tr>
							
							<td align="middle"><br/><a href="upostad.php"><input type="Submit" value="POST AD" name="ad"/></td>
							
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