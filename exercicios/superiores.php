<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Web-Academia</title>
		<link rel="stylesheet" href="../front-end/style.css">
	</head>

	<body>
	
		<nav>
			<label class="logo">Web-Academia</label>
			<ul>
				<li><a href="../home.html">Home</a></li>
				<li><a href="../exercicios.html">Exercícios</a></li>
				<li><a href="">Perfil</a></li>
				<li><a href="index.html">Sair</a></li>
			</ul>
		</nav>
		
		<div class="categoriaTitle">
			<label class="logo">Alongamentos</label>
		</div>
		
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webacademia";

//Conexão
$conn = mysqli_connect($servername, $username, $password, $dbname);

//Verificar conexão
if (!$conn) {
  die("Erro: " . mysqli_connect_error());
}else{

	$sql = "SELECT nome, descricao, link FROM exercicio where categoria = 'superiores'";
	$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		
	  //OUTPUT AQUI
	  while($row = mysqli_fetch_assoc($result)) {
		echo utf8_encode("
		<div class='exercicio'>
		<label class='titulo'>" . $row["nome"] . "</label> <br><br> <label class='descricao'>" . $row["descricao"] . "</label> <br><br> <a href = '" . $row["link"] . "'>Video auxiliar</a>
		</div><br>
		");
	  }
	} else {
	  echo "Esta categoria está vazia!";
	}
}
mysqli_close($conn);

?>
		
	</body>
</html>
