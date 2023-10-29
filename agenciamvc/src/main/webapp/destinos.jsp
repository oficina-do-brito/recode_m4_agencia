<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8">
<title>Destino</title>
<link rel="stylesheet" href="./assets/css/reset.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<!-- TODO: navbar stick  -->
	<nav class="navbar w-100 sticky-md-top navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"> <img
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
					<li class="nav-item"><a class="nav-link active"
						href="DestinoServlet">Destinos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="HomeServlet#promocoes">Promoções</a></li>
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

	<main class="d-flex flex-column">
		<h1 class="h1-centralizado fw-light mt-sm-5">Destino x</h1>
		<div class="w-100 h-auto s1">
			<div class="container-fluid row">
				<!-- TODO: barra esquerda  -->
				<div class="col-sm-12 col-md-2 h-auto">
					<ul class="nav flex-column">
						<form class="row g-3">
							<div class="col-auto">
								<label for="inputSearch" class="visually-hidden">Buscar
									Destino</label> <input type="text" class="form-control rounded-pill"
									id="inputSearch" placeholder="... pesquisar destino">
							</div>
							<div class="col-auto">
								<button type="submit"
									class="btn btn-outline-primary rounded-pill mb-3">Buscar</button>
							</div>
						</form>
					</ul>
				</div>
				<!-- TODO: barra central  -->
				<div class="col-sm-12 col-md-6 col-lg-7 col-xl-8 h-auto">
					<img class="img-fluid" src="./assets/img/noronha.jpg" alt="">
					<p class="mt-2">Fernando de Noronha é um arquipélago brasileiro
						do estado de Pernambuco. Formado por 21 ilhas, ilhotas e rochedos
						de origem vulcânica, ocupa uma área total de 26 km² — dos quais 17
						km² são da ilha principal — e se situa no Oceano Atlântico a
						nordeste do Brasil continental, distando 545 km da capital
						pernambucana, Recife. O centro comercial da ilha é o núcleo urbano
						de Vila dos Remédios. A administração do Parque Nacional está
						atualmente a cargo do Instituto Chico Mendes de Conservação da
						Biodiversidade (ICMBio). Avistada pela primeira vez entre 1500 e
						1502, tem sua descoberta atribuída a uma expedição comandada pelo
						explorador Fernão de Loronha, embora haja controvérsias; porém é
						certo que o primeiro a descrevê-la foi Américo Vespúcio, em
						expedição realizada entre 1503 e 1504. Primeira capitania
						hereditária do Brasil, o arquipélago sofreu constantes invasões de
						ingleses, franceses e holandeses entre os séculos XVI e XVIII. Em
						24 de setembro de 1700, Fernando de Noronha tornou-se, por carta
						régia, dependência de Pernambuco, capitania com a qual já tinha
						uma ligação histórica. Em 1736, a ilha foi invadida pela Companhia
						Francesa das Índias Orientais, passando-se a chamar Isle Dauphine,
						porém, no ano seguinte, uma expedição enviada pelo Recife expulsou
						os franceses. Em 1942, com a Segunda Guerra Mundial, o arquipélago
						tornou-se território federal, cuja sigla era FN, passando a servir
						como base avançada de guerra; mas voltou à a dministração
						pernambucana quatro décadas e meia depois, no ano de 1988.
						Atualmente Fernando de Noronha constitui um distrito estadual de
						Pernambuco, e é gerida por um administrador-geral designado pelo
						governo do estado. Após uma campanha liderada pelo ambientalista
						José Truda Palazzo Júnior, em 14 de outubro de 1988 a maior parte
						do arquipélago foi declarada Parque Nacional, com cerca de 11 270
						ha, para a proteção das espécies endêmicas lá existentes e da área
						de concentração dos golfinhos rotadores (Stenella longirostris),
						que se reúnem diariamente na Baía dos Golfinhos — o lugar de
						observação mais regular da espécie em todo o planeta. No ano de
						2001 a UNESCO declarou Fernando de Noronha Patrimônio Natural da
						Humanidade. A fauna é tão rica que pesquisadores continuam
						descobrindo novas espécies endêmicas de peixes na região — em
						2020, uma expedição descobriu quatro novas espécies de peixes
						ainda não descritas pela ciência.</p>
				</div>
				<!-- TODO: barra direita  -->
				<div class="col-sm-12 col-md-2 h-auto">
					<h5>Hoteis</h5>
					<div class="card m-auto" style="width: 15rem;">
						<img class="card-img-top" src="./assets/img/hoteis/hotel1.jpg"
							alt="...">
						<div class="card-body">
							<h6>hotel xxx</h6>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulkof the card's content.</p>
							<a href="#" class="btn btn-outline-primary">veja</a>
						</div>
					</div>
					<div class="card  m-auto" style="width: 15rem;">
						<img class="card-img-top" src="./assets/img/hoteis/hotel2.jpg"
							alt="...">
						<div class="card-body">
							<h6>hotel xxx</h6>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulkof the card's content.</p>
							<a href="#" class="btn btn-outline-primary">veja</a>
						</div>
					</div>
					<div class="card  m-auto" style="width: 15rem;">
						<img class="card-img-top" src="./assets/img/hoteis/hotel3.jpg"
							alt="...">
						<div class="card-body">
							<h6>hotel xxx</h6>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulkof the card's content.</p>
							<a href="#" class="btn btn-outline-primary">veja</a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="w-100 h-auto s2">
			<h5 class="h1-centralizado mt-sm-5">Pontos turisticos</h5>
			<div class="d-flex gap-3 justify-content-center flex-wrap mb-2">
				<div class="card" style="width: 15rem;">
					<img src="https://picsum.photos/200/100" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h6>Nome do Ponto</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulkof the card's content.</p>
						<a href="#" class="btn btn-outline-primary">veja</a>
					</div>
				</div>
				<div class="card" style="width: 15rem;">
					<img src="https://picsum.photos/200/100" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h6>Nome do Ponto</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulkof the card's content.</p>
						<a href="#" class="btn btn-outline-primary">veja</a>
					</div>
				</div>
				<div class="card" style="width: 15rem;">
					<img src="https://picsum.photos/200/100" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h6>Nome do Ponto</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulkof the card's content.</p>
						<a href="#" class="btn btn-outline-primary">veja</a>
					</div>
				</div>
			</div>

		</div>
		<!-- TODO: Figure com Depoimentos dos clientes  -->
		<div class="row w-100 h-auto p-5 bg-container-figure">
			<figure class="flex-column align-items-center col-sm-12 col-md-4">
				<blockquote class="blockquote ">
					<p>É sempre um prazer viajar com vocês.</p>
				</blockquote>
				<figcaption class="blockquote-footer">
					Brazil, <cite title="Source Title">Ricardo E.</cite>
				</figcaption>
			</figure>
			<figure class="flex-column align-items-center col-sm-12 col-md-4">
				<blockquote class="blockquote">
					<p>Viajo sempre que posso, recomendo essa agência possui otimo
						atendimento e nunca me deixou na mão..</p>
				</blockquote>
				<figcaption class="blockquote-footer">
					Brazil, <cite title="Source Title">Mariana L.</cite>
				</figcaption>
			</figure>
			<figure class="flex-column align-items-center col-sm-12 col-md-4">
				<blockquote class="blockquote">
					<p>A agencia muito boa, possui preços razoavelmente bons para
						os serviços que eles oferecem.</p>
				</blockquote>
				<figcaption class="blockquote-footer">
					California, <cite title="Source Title">John Twarte</cite>
				</figcaption>
			</figure>
		</div>
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