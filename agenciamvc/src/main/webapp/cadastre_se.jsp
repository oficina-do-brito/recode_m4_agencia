<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8">
<title>Agencia de Viagens</title>
<link rel="stylesheet" href="./assets/css/reset.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="stylesheet" href="./assets/css/card.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

</head>

<body>
	<!-- TODO: navbar stick  -->
	<nav class="navbar w-100 sticky-md-top navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand" href="HomeServlet">
				<img src="./assets/img/logo.png" alt="logo da agencia" width="50"
				height="50">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="HomeServlet">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="DestinoServlet">Destinos</a></li>
					<li class="nav-item"><a class="nav-link" href="HomeServlet#promocoes">Promoções</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="ContatoServlet">Contatos</a></li>
				</ul>
				<button type="button"
					class="btn btn-outline-primary rounded-pill mx-md-5"
					onclick="clickFormVisible()">Login</button>
					<form class="container bg-light form-flutuante" action="LoginServlet" method="POST">

						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email">
							<label for="floatingInput">Email address</label>
						</div>

						<div class="form-floating ">
							<input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">
							<label for="floatingPassword">Password</label>
						</div>

						<a class=".text-primary" href="AdminServlet">Cadastre-se</a> 

						<div class="container d-flex">
							<a class="nav-link" href="LoginServlet">
								<button type="submit" class="btn btn-outline-primary rounded-pill mx-md-5">Entrar</button>
							</a>
							<a class="nav-link">
								<button type="button" class="btn btn-outline-danger rounded-pill mx-md-5" onclick="clickFormNotVisible()">Fechar</button>
							</a>
						</div>
					</form>
			</div>
		</div>
	</nav>
	<!-- TODO: header com carousel -->
	<header class="container-fluid w-100 h320">
		<!-- <header> -->
		<div class="carousel slide" data-bs-ride="carousel" id="crs">
			<!-- indicadores -->
			<div class="carousel-indicators">
				<button class="active" data-bs-target="#crs" data-bs-slide-to="0"></button>
				<button data-bs-target="#crs" data-bs-slide-to="1"></button>
				<button data-bs-target="#crs" data-bs-slide-to="2"></button>
			</div>
			<!-- carousel inner contendo os itens  -->
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="3000">
					<img class="d-block w-100 imagens-carousel "
						src="./assets/img/journey.png" alt="imagem planos para viagens">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="fs-1 fw-bold">Retire seus planos do papel</h5>
						<p class="fs-6">Planeje sua viagem contando com os melhores
							preços do mercado</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img class="d-block w-100 imagens-carousel"
						src="./assets/img/sunset.jpg" alt="praia">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="fs-1 fw-bold">Locais com eventos</h5>
						<p class="fs-6">Confira os eventos com previsão de
							acontecimento em tempo real</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img class="d-block w-100 imagens-carousel"
						src="./assets/img/peoples.jpg" alt="viagem com acompanhante">
					<div class="carousel-caption d-none d-md-block">
						<h5 class="fs-1 fw-bold">Pacotes adequados para viajar por
							todo Brasil</h5>
						<p class="fs-6">Combos para te proporcianar a sua viagem dos
							sonhos</p>
					</div>
				</div>
			</div>

			<div>
				<button class="carousel-control-prev" data-bs-target="#crs"
					data-bs-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</button>
				<button class="carousel-control-next" data-bs-target="#crs"
					data-bs-slide="next">
					<span class="carousel-control-next-icon"></span>
				</button>
			</div>
		</div>
	</header>
	<!-- TODO: Main  -->
	<main class="d-flex flex-column">
		<h1 class="h1-centralizado fs-1 fw-lighter mt-sm-2">Realizar cadastro</h1>
		<section class="w-100 h-auto s1">

				<!-- TODO: Form -->
				<form class="w-75 mx-auto h-auto" action="AdminServlet" method="POST">
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">nome</span>
						<input type="text" class="form-control" placeholder="nome" aria-label="nome" aria-describedby="basic-addon1" name="nome">
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">email@gmail.com</span>
						<input type="text" class="form-control" placeholder="email" aria-label="email" aria-describedby="basic-addon1" name="email">
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">password</span>
						<input type="password" class="form-control" placeholder="password" aria-label="password" aria-describedby="basic-addon1" name="password">
					</div>
					
					<div class="form-group mb-3">
						<label class="form-label">telefone</label>
						<input type="text" class="form-control" placeholder="84981818181" data-inputmask-mask="[9-]0-999" name="telefone" />
						<small class="text-muted">e.g "(dd) number"</small>
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">url com imagem sua</span>
						<input type="text" class="form-control" placeholder="www.imagem/user/id" aria-label="email" aria-describedby="basic-addon1" name="imagem">
					</div>

					<div class="input-group mb-3">
						<input type="hidden" class="form-control" placeholder="www.imagem/user/id" aria-label="email" aria-describedby="basic-addon1" name="tipoUsuario" value="1">
					</div>

					<div class="form-group mb-3"></div>
					<div class="col-auto">
						<button type="submit" class="btn btn-primary mb-3">Enviar</button>
					</div>
				</form>
				  <!-- TODO: Form -->
		</section>

	</main>
	<!-- TODO: Footer -->
	<footer class="h-auto m-0 container-fluid row p-5">
		<ul class="nav flex-column col-sm-12 col-md-3 align-items-center">
			<li class="text-light">
				<h5>Sobre a Empresa</h5>
			</li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="#" aria-current="page">Atendimento ao Cliente</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="#"> Termos de Uso</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="#">Políticas de Privacidade</a></li>
		</ul>

		<ul class="nav flex-column col-sm-12 col-md-3 align-items-center">
			<li class="text-light">
				<h5>Agencias e Parceiras</h5>
			</li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter "
				href="#" aria-current="page">Active link</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter "
				href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter "
				href="#">Disabled link</a></li>
		</ul>

		<ul class="nav flex-column col-sm-12 col-md-3 align-items-center">
			<li class="text-light text-center">
				<h5>Companhias Aéreas Parceiras</h5>
			</li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="#" aria-current="page">Nenhuma</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="#">Nenhuma</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="#">Alguma</a></li>
		</ul>

		<ul class="nav flex-column col-sm-12 col-md-3 align-items-center">
			<li class="text-light text-center">
				<h5>Entre em contato conosco</h5>
			</li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter"
				href="ContatoServlet" aria-current="page">Realizar contato</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter">84
					99999999</a></li>
			<li class="nav-item"><a class="nav-link text-light fw-lighter">@email.com</a>
			</li>
		</ul>
	</footer>
	<script defer src="./assets/js/index.js"></script>
</body>

</html>