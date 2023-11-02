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
 <a href="https://github.com/oficina-do-brito/recode_m4_agencia/blob/main/modelagem/roadmap.png">Roadmap da aplicação</a> •
  <a href="#Modelo_Conceitual">Modelo Conceitual</a> •
  <a href="#Modelo_Logico">Modelo Logico</a> •
  <a href="#Diagrama_de_Classe">Diagrama de Classe</a> •
  <a href="#Versões">Versões mais antigas</a> •
  <a href="#Tecnologias_usadas">Tecnologias Usadas</a> •
   <a href="#Rodando_aplicação">Rodando aplicação</a> •
  <a href="https://github.com/oficina-do-brito/recode_m4_agencia/blob/main/LICENSE">License</a>
</p>

## Explicações
Esse projeto usa de strategia para salvamento de imagem via "path e nome da imagem" salvando no banco apenas o nome da imagem mesmo então
caso queira ver a pasta onde são realizadas os uploads de imagens da sua aplicação geralmente elas se encontram na sua pasta de deploy do tomcat: 
C:\Users\${USER}\OneDrive\Documentos\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\agenciamvc\assets\img

## Versões

- [Versão 1](https://github.com/oficina-do-brito/recode_m2_agencia)
- [Versão 2 - console](https://github.com/oficina-do-brito/recode_m3_agencia)
- [Versão Atual 3 - web](https://github.com/oficina-do-brito/recode_m4_agencia)
  - Versão 3.1
  - Versão 3.2
- Versão 3
## Modelo_Conceitual

<img src="https://github.com/oficina-do-brito/recode_m4_agencia/blob/main/modelagem/conceitual.jpg" />

## Modelo_Logico

<img src="https://github.com/oficina-do-brito/recode_m4_agencia/blob/main/modelagem/logico.jpg" />

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
- Baixar o servidor [apache tomCat 9](https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.82/bin/apache-tomcat-9.0.82.zip)
- Baixar o connector java com Mysql em [MySQL Connector](https://dev.mysql.com/downloads/connector/j/)
- Baixar [jstl 1.2](https://repo1.maven.org/maven2/javax/servlet/jstl/1.2/jstl-1.2.jar)
- Baixar [java servlet 3.1 ](https://repo1.maven.org/maven2/javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar)

### Rodando o projeto

- Anexar o jstl,servelet e connector como uma recursos dependencia do projeto. Clicando com lado direito do mouse encima do projeto e em properties> build Path >  Libraries> classpath path> adicione eles como external jars, aply e close.
- Coloque na pasta de frontend doprojeto dentro de web-inf > lib os jars de jstl e do mysql connector

- Se quizer rodar o projeto com banco ja de databse criada, é a conselhavel ter o docker e docker-compose na sua maquina,
- Ainda não contem o sql das tabelas que estão dentro de modelagem, execute o sql de criação ...
- Configurar um servidor Tomcat 9.0 e seo projeto pra ele servir e play.



### Como visualizar projeto web

- Entrar no [Endereço](http://localhost:8080/agenciamvc/)
