<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
<meta charset="UTF-8">
<title>Manage-clientes</title>
<link rel="stylesheet" href="./assets/css/reset.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script defer
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="stylesheet" href="./assets/css/m_clientes.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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
					<li class="nav-item"><a class="nav-link" href="DestinoServlet">Destinos</a></li>
					<li class="nav-item"><a class="nav-link"
						href="HomeServlet#promocoes">Promoções</a></li>
					<li class="nav-item"><a class="nav-link" href="ContatoServlet">Contatos</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- TODO: main  -->
	<main>
		<div class="container-fluid p-0 m-0 h-auto">
			<div class="row p-0 m-0 h-auto">
				<div class="col-sm-12 col-md-3 col-2 p-0  h-auto sidebar-nav">
					<div class="sidebar">

						<ul>
							<li class="logo"><a href="#"> <span class="icon"><i
										class="bi bi-clipboard-data"></i></span> <span class="text">Manage</span>
							</a></li>
						</ul>

						<ul>
							<li><a href="#"> <span class="icon"><i
										class="bi bi-house"></i></span> <span class="text">Home</span>
							</a></li>
							<li><a href="#"> <span class="icon"><i
										class="bi bi-person"></i></span> <span class="text">Profile</span>
							</a></li>
							<li><a href="ReadPacoteServlet"> <span class="icon"><i
										class="bi bi-box-seam"></i></span> <span class="text">Pacotes</span>
							</a></li>
							<li><a href="#"> <span class="icon"><i
										class="bi bi-chat-dots"></i></span> <span class="text">Inbox</span>
							</a></li>
							<li><a href="#"> <span class="icon"><i
										class="bi bi-bar-chart-fill"></i></span> <span class="text">Analise</span>
							</a></li>
							<li><a href="#"> <span class="icon"><i
										class="bi bi-airplane-engines"></i></span> <span class="text">Companhias</span>
							</a></li>
							<li><a href="#"> <span class="icon"><i
										class="bi bi-gear"></i></span> <span class="text">Settings</span>
							</a></li>
						</ul>

						<ul>
							<div class="bottom">
								<li id="nohover">
									<a href="#">
										<span class="icon">
										<div class="avatar"><img src="https://picsum.photos/200" alt="" /></div>
										</span><span class="text">Usuario x</span>
									</a>
								</li>
								<li>
									<a href="HomeServlet">
										<span class="icon"><i class="bi bi-box-arrow-right"></i></span>
									    <span class="text">Logout</span>
									</a>
								</li>
							</div>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md-9 col-10 p-0 h-auto">
					<div class="d-flex flex-column p-0">
						<h2 class="h2-destaque text-center">Pacotes cadastrados</h2>
						<select class="form-select align-self-center w-50 mb-5"
							aria-label="Default select example">
							<option selected>Selecione opção de visualização</option>
							<option value="1">Top viagens</option>
							<option value="2">Top Internacional</option>
							<option value="3">Top nacional</option>
						</select>
						<div class="container-fluid h-100 my-2 p-0 d-flex align-content-start justify-content-center gap-2 flex-wrap"
							id="clientes">

							<div class="card greencard" style="width: 15rem;">
								<a href="CreatePacoteServlet" class="card-title text-center p-2 text-success">
								<span class="m-auto p-2 text-primary"><i class="bi bi-plus-lg h5"></i></span>
								<span class="h5 text-primary">Cadastrar Novo</span>
								<span class="m-auto p-2 text-primary"><i class="bi bi-plus-lg h5"></i></span>
								</a>
							</div>
						</div>

						<div class="d-flex flex-row flex-wrap my-2">
							<!-- TODO: editar e excluir -->
							<p:forEach items="${pacotes}" var="pacote">
								<div class="card" style="width: 18rem;">
									<img class="card-img-top" src="/agenciamvc/assets/img/${pacote.imagem}" width="150" height="200"  alt="Card image cap">
									<div class="card-body">
										<h5 class="card-title text-center">${pacote.titulo}</h5>
										<p class="card-text">Meio de Transporte: ${pacote.meioTransporte}</p>
										<p class="card-text">Possui Hospedadgem: ${pacote.possuiHospedagem}</p>
										<p class="card-text">Valor desconto: ${pacote.valorDesconto} %</p>
										<p class="card-text">Preço bruto: ${pacote.precoTotal}</p>
										<p class="card-text">Prazo de cancelamento: ${pacote.prazoCancelamento}</p>
										<p class="card-text">Data marcada: ${pacote.dataViagem}</p>
										<a href="UpdatePacoteServlet?id=${pacote.id}" class="btn btn-primary">Editar</a>
										<a href="DeletePacoteServlet?id=${pacote.id}" class="btn btn-danger">Excluir</a>
									</div>
								</div>
							</p:forEach>
						</div>

					</div>
				</div>



			</div>
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
	<script defer src="./assets/js/findclients.js"></script>
</body>

</html>