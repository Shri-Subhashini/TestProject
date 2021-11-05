<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

</head>
<body>

<nav class="navbar navbar-default navbar-static-top">
<div class="container">
<div class="navbar=header">

<button type="button" class="navbar-toggle-collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
<span class="sr-only">Toggle navi</span>

<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="https.amazon.com">Amazon.com</a>
</div>
<div id="navbar" class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="active"><a href="https://www.onlyxcodes.com/2018/11/jquery-autocomplete-from-database-in-jsp.html">Page1</a></li>
</ul>
</div>
</div>
</nav>

<div class="container">
<label>Enter country name</label>
<input type="text" id="txtCountry" class="form-control" placeholder="enter country name">
<div id="showList">
<ul class="list-group">
</ul>
</div>
</div>
</body>
</html>

<script src="js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function()
	{
		$('#txtCountry').keyup(function())
		{
			var serach=$('#txtCountry').val();
			if(search !=='' && search !== null)
			{
				$.ajax({
					type:'POST',
					url:'record.jsp',
					data:'key='+search,
					success:function(data)
					{
						$('#showList').html(data);
					}
				});
				
			}
			else
			{
				$('#showList').html('');
			}
		});
		$(document).on('click','li',function()
		{
			$('#txtCountry').val($(this).text());
		
		});
	
	});
</script>







