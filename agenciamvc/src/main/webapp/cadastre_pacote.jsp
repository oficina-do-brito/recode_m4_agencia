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
<!-- jquery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

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
						href="ContatoServlet">Contatos</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="ReadPacoteServlet">Manage</a>
					</li>
				</ul>
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
		<h1 class="h1-centralizado fs-1 fw-lighter mt-sm-5">Cadastrar Pacote</h1>
		<section class="w-100 h-auto s1">

				<!-- TODO: Form -->
				<form class="w-75 mx-auto h-auto" action="CreatePacoteServlet" enctype="multipart/form-data" method="POST">
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">titulo</span>
						<input type="text" class="form-control" placeholder="Qualquer titulo referente a viagem" aria-label="titulo" aria-describedby="basic-addon1" name="titulo">
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">status</span>
						<input type="text" class="form-control" placeholder="status" aria-label="status" aria-describedby="basic-addon1" name="status" />
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">valor desconto</span>
						<input type="text" class="form-control" placeholder="valor numerico, sera convertido em porcentagem" aria-label="valorDesconto" aria-describedby="basic-addon1" name="valorDesconto" />
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">preco total</span>
						<input type="number" class="form-control" placeholder="preco total bruto do pacote" aria-label="precoTotal" aria-describedby="basic-addon1" name="precoTotal" max="10000" />
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">possui hospedagem</span>
						<input type="text" class="form-control" placeholder="possui hospedagem? sim ou não" aria-label="possuiHospedagem" aria-describedby="basic-addon1" name="possuiHospedagem" />
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">meio transporte</span>
						<input type="text" class="form-control" placeholder="meio de transporte" aria-label="meioTransporte" aria-describedby="basic-addon1" name="meioTransporte" />
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">prazo cancelamento</span>
						<input type="text" class="form-control" placeholder="prazo para cancelamento" aria-label="prazoCancelamento" aria-describedby="basic-addon1" name="prazoCancelamento" />
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text" id="basic-addon1">data viagem</span>
						<input type="date" class="form-control" placeholder="data da viagem" aria-label="dataViagem" aria-describedby="basic-addon1" name="dataViagem" />
					</div>
					
					<div class="form-group mb-3">
						<span class="input-group-text" id="basic-addon1">Imagem do Pacote</span>
						<input type="file" class="form-control"  multiple="multiple" aria-describedby="basic-addon1" name="imagemPacote" />
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