<h1 align="center">
  <br>
  [ recode_m4_agencia ]
  <br>
</h1>

<h4 align="center">Repositorio com fins de de resolução da tarefa do modulo 3 da recode. 📑</h4>

<p align="center">
  [Project's badges]
</p>

<p align="center">
 <a href="https://github.com/oficina-do-brito/recode_m3_agencia/blob/main/modelagem/roadmap.png">Roadmap da aplicação</a> •
  <a href="#Modelo_Conceitual">Modelo Conceitual</a> •
  <a href="#Modelo_Logico">Modelo Logico</a> •
  <a href="#Diagrama_de_Classe">Diagrama de Classe</a> •
  <a href="#Versões">Versões mais antigas</a> •
  <a href="#Tecnologias_usadas">Tecnologias Usadas</a> •
   <a href="#Rodando_aplicação">Rodando aplicação</a> •
  <a href="https://github.com/oficina-do-brito/recode_m3_agencia/blob/main/LICENSE">License</a>
</p>

## Explicações


## Versões

- [Versão 1](https://github.com/oficina-do-brito/recode_m2_agencia)
- [Versão 2 - console](https://github.com/oficina-do-brito/recode_m3_agencia)
- [Versão 3 - web](https://github.com/oficina-do-brito/recode_m4_agencia)
  - Versão 3.1
  - Versão 3.2
- Versão 3
## Modelo_Conceitual

<img src="https://github.com/oficina-do-brito/recode_m3_agencia/blob/main/modelagem/conceitual.jpg" />

## Modelo_Logico

<img src="https://github.com/oficina-do-brito/recode_m3_agencia/blob/main/modelagem/logico.jpg" />

## Diagrama_de_Classe

<img src="https://github.com/oficina-do-brito/recode_m3_agencia/blob/main/modelagem/diagrama_class.png" />


## Tecnologias_usadas

Frontend:

<img src="https://user-images.githubusercontent.com/25181517/192158954-f88b5814-d510-4564-b285-dff7d6400dad.png" width="50" height="50"><img src="https://user-images.githubusercontent.com/25181517/183898674-75a4a1b1-f960-4ea9-abcb-637170a00a75.png" width="50" height="50"><img src="https://user-images.githubusercontent.com/25181517/183898054-b3d693d4-dafb-4808-a509-bab54cf5de34.png" width="50" height="50">

Backend:

IDE: 

<img src="https://user-images.githubusercontent.com/25181517/192108892-6e9b5cdf-4e35-4a70-ad9a-801a93a07c1c.png" width="50" height="50">

Combinação: 

<img src="https://user-images.githubusercontent.com/25181517/117201156-9a724800-adec-11eb-9a9d-3cd0f67da4bc.png" width="50" height="50"><img src="https://user-images.githubusercontent.com/25181517/183896128-ec99105a-ec1a-4d85-b08b-1aa1620b2046.png" width="50" height="50">

## Rodando_aplicação

Este é um exemplo de como você pode configurar o projeto para que possa executar. Para obter uma cópia local instalada e funcionando, siga estas etapas simples de exemplo.

### Prerequisitos

- Baixar o connector java com Mysql em [Connector](https://dev.mysql.com/downloads/connector/j/)
- Anexar ele como uma biblioteca externa, do projeto. Clicando com lado direito do mouse > build Path > Configure Build Path> Java Build Path> Libraries> Module path> Add Libraries>User Library> new > dar nome a biblioteca, depois importa jar do mysql nela e por fim seleciona ela e dar aply e close.

- Se quizer rodar o projeto com banco ja de databse criada, é a conselhavel ter o docker e docker-compose na sua maquina
- Configurar um servidor Tomcat 9.0 e setar o projeto pra ele servir.

### Rodando o projeto backend

Sem docker e docker-compose na maquina :

- Crie a database agencia no seu banco e certifique-se de estar usando usuario root e senha root.
- Depois vai no eclipse, verifique de estar com o mysql conect instalado no projeto, como biblioteca externa.
- E run.

Com docker e docker-compose na maquina, abra seu terminal git e:

- Vai no eclipse, verifique de estar com o mysql conect instalado no projeto, como biblioteca externa.
```bash
# Clone o repositorio e inicie um bd
  git clone https://github.com/oficina-do-brito/recode_m3_agencia.git && cd recode_m3_agencia/backend/ && docker-compose up
```
- E run.


### Como visualizar projeto web

- Entrar no [Endereço](http://localhost:8080/)