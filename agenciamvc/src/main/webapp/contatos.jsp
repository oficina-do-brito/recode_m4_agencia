<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8">
<title>Contact</title>
<link rel="stylesheet" href="./assets/css/reset.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="stylesheet" href="./assets/css/contatos.css">
</head>

<body>
	<!-- TODO: navbar stick  -->
	<nav class="navbar w-100 sticky-md-top navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand" href="HomeServlet"> <img
				src="./assets/img/logo.png" alt="logo da agencia" width="50"
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
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="HomeServlet">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="DestinoServlet">Destinos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="HomeServlet#promocoes">Promoções</a></li>
					<li class="nav-item"><a class="nav-link active"
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

	<div
		class=" container-fluid d-flex flex-column justify-content-center c-body-contact">
		<!-- TODO: banner info -->
		<div
			class="container-fluid p-0 banner w-100 d-flex flex-column align-items-start justify-content-center">
			<h2 class="text-center fs-1 fw-semibold text-light p-5">Entre em
				contato conosco</h2>
		</div>

		<div class="explicativos justify-self-start p-5">
			<h3 class="fs-3 text-primary text-opacity-75">Motivos para voçê
				entrar em contato</h3>
			<p class="fw-light">Pedir melhorar a qualidade nossos serviços
				prestados</p>
			<p class="fw-light">Solicilitar mais serviços</p>
			<p class="fw-light">Retirar duvidas</p>
			<p class="fw-light">Reclamações</p>
		</div>

		<!-- TODO: container form  -->
		<div
			class="container h-auto border rounded position-absolute mb-5 form-contato mb-3">
			<!-- form  -->
			<form class="row g-3 p-5" action="" method="POST">
				<div class="col-md-12">
					<label for="inputEmail4" class="form-label">Email</label> <input
						type="email" class="form-control" id="inputEmail4" name="email">
				</div>
				<div class="col-md-12">
					<label for="exampleFormControlTextarea1" class="form-label">Duvidas
						ou sugestões</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3"
						placeholder="Digite aqui a sua duvida ou sugestão de melhoria..."
						name="sugestao"></textarea>
				</div>
				<div class="col-12">
					<label for="inputAddress" class="form-label">Endereço</label> <input
						type="text" class="form-control" id="inputAddress"
						placeholder="1234 Main St">
				</div>
				<div class="col-12">
					<label for="inputAddress2" class="form-label">Complemento</label> <input
						type="text" class="form-control" id="inputAddress2"
						placeholder="Apartment, studio, or floor">
				</div>
				<div class="col-md-6">
					<label for="inputCity" class="form-label">Cidade</label> <input
						type="text" class="form-control" id="inputCity">
				</div>
				<div class="col-md-4">
					<label for="inputState" class="form-label">Estado</label> <select
						id="inputState" class="form-select">
						<option selected>Choose...</option>
						<option>...</option>
					</select>
				</div>
				<div class="col-md-2">
					<label for="inputZip" class="form-label">Numero</label> <input
						type="text" class="form-control" id="inputZip">
				</div>
				<div class="col-12">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck">
						<label class="form-check-label" for="gridCheck"> Check me
							out </label>
					</div>
				</div>
				<div class="col-12">
					<button type="submit" class="btn btn-outline-primary rounded-pill">Enviar</button>
				</div>
			</form>
		</div>

		<div class="container w-100 h-100"></div>

	</div>
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