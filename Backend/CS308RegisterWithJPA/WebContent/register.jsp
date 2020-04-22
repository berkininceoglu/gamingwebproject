<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sign up!</title>
<meta name="description"
	content="You Can Freely Buy The Best Goods on the Internet">
<meta name="author" content="CS308">

<!-- Deniz CSS and JS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<!-- Berkin CSS and JS-->
<link rel="stylesheet" href="css/register.css">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/slick.css">
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/register.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="js/search.js"></script>

<meta charset="UTF-8">
</head>
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container" style="margin-right: 22%;">
			<a class="navbar-brand" href="index.jsp"> <img src="img/logo.png" width="34"
				height="34" class="d-inline-block align-top" alt=""> Tech
				Market
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mr-auto">
					 <li class="dropdown"><a class="nav-link" href="Home_HTML">Action
                        <span class="sr-only">(current)</span>
                    </a>

                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML">Multiplayer <span class="sr-only">(current)</span></a>

					</li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML"> Sports <span
                            class="sr-only">(current)</span></a>

                    </li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML"> FPS <span class="sr-only">(current)</span></a>

                   </li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML"> RPG <span
                            class="sr-only">(current)</span></a>
                   </li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML">Strategy<span class="sr-only">(current)</span></a>
					<li style="margin-left: 5%; margin-top: 5px;"><input id="search"  type="text" placeholder="Search.."  onkeydown="if (event.keyCode == 13) { search(); }"></li>
					<li class="dropdown" style="margin-left: 5%;"><a
						class="fa fa-user" style="font-size: 34px; color: grey;"></a>

						<div class="dropdown-content">
							<a href="login.jsp">Login</a> 
							<a href="register.jsp">Register</a> 
							<a href="myOrders.jsp">My Orders</a> 
								<a href="#account">Account</a> 
						</div></li>
					<a class="fa fa-shopping-cart" href="#Shopping_Cart" style="font-size: 34px; color: grey; margin-left: 10%;"></a>
				</ul>
			</div>
		</div>
	</nav>

</header>
<body>
	<div class="main">
	<div class="register-container">
		<div class="register-left">
			<form action="register" method="post">
				<div class="col-md-auto">
					<h2>Please sign up in order to continue</h2>
				</div>
				<img src="img/logo.png" height="100px" width="100px"> <br> <br>
				<input class="register" id="name_field" type="text" name="name" placeholder="Name"> <br> 
				<input class="register" id="mail_field" type="email" name="email" placeholder="E-mail"><br>
				<input class="register" id="pwd_field" type="password" name="pass" placeholder="Password"><br> <br>
				<h7> *Your password should be at least 6 characters.</h7>
				<input class="btn btn-primary btn-block btn-lg" type="submit" value="Sign up"> <br> 
				<a href="login.jsp"> Do you already have an account? Log in! </a>
			</form>
		</div>
		<div class="register-right">
			<h4>Milyonlarca Ürün 30 farklı kategoride 2.700.000'in üzerinde
				ürünle ne ararsan hepsi burada, tek tıkla ayağında!</h4>
			<br />
			</h4>
			<h4>Süper hızlı gönderi logosunu gördüğün ürünlerde saat 14:00’a
				kadar vereceğin tüm siparişler, aynı gün kargoda!</h4>
			<br />
			<h4>Değiştirmek istediğin ürünü 14 gün içinde ücretsiz iade
				edebilirsin.</h4>
			<br />
			<h4>Olur da yardıma ihtiyaç duyarsan, müşteri hizmetlerimiz bir
				telefon yakınında!</h4>
			<br />
		</div>
	</div>
</div>
</body>
<footer> </footer>
</html>