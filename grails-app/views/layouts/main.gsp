<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<%--Inserisce in sessione le credenziali eaco--%>
<g:include controller="start" action="init" />
<%--Va messo anche in tutte le sotto gsp --%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:stylesheet src="common.css" />
<asset:stylesheet src="${session.CurrentEnte }_style.css" />
<asset:javascript src="application.js" />

<g:layoutHead />

</head>
<g:if test="${session.CurrentEnte && session.client}">
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<!-- navbar -->
					<nav
						class="navbar navbar-main navbar-default navbar-fixed-top bkgImgXS"
						id="nav" role="navigation ">
						<!-- Logo e pulsante per barra ridimensionata -->
						<div class="navbar-header">
							<div class="navbar-brand"
								style="margin-bottom: 5px; padding-bottom: 5px">
								<a href="${createLink(uri:'/')}"><img style="height: 60px"
									src="${resource(dir: 'images')}/logo/${session.CurrentEnte}.png" />
								</a>
							</div>


							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-ex1-collapse"
								style="margin-bottom: 25px; margin-top: 20px;">
								<span class="sr-only">Espandi barra di navigazione</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="hidden-xs  navbar-brand"></a>
						</div>
						<!--Elementi della barra -->
						<div class="collapse navbar-collapse navbar-ex1-collapse bkgImg"
							style="border: none; width: 100%">
							<ul class="nav navbar-nav navbar-right">
								<!--<li class="active"><a href="#">News</a></li> -->
								<li class="visible-xs "><a href="${createLink(uri:'/')}"
									id="returnHome" class="navbar-button"><i
										class="glyphicon glyphicon-home"></i> Home</a></li>
								<li><a href="${createLink(controller: 'test')}"
									id="ricerca" class="navbar-button"><i
										class="glyphicon glyphicon-search"></i> PULSANTE 1</a></li>
								<li><a href="${createLink(controller: 'test')}" id="news"
									class="navbar-button"><i
										class="glyphicon glyphicon-th-list"></i> PULSANTE 2</a></li>

								<li class="paddingRightNavBar"><a
									href="${createLink(controller: 'test')}" id="iscriviti"
									class="navbar-button"><i
										class="glyphicon glyphicon-th-list"></i> Pulsante 3</a></li>

								<li><a id="assistenzaButton"
									class="visible-xs  glyphicon glyphicon-envelope navbar-button">
										ASSISTENZA</a></li>
							</ul>

						</div>

						<div class="breadCumb  hidden-xs gradient">
							<p>

								<g:layoutTitle />



							</p>
						</div>
					</nav>



					<div id="spinner" style="display: none;">
						<g:img uri="${resource(dir: 'images')}/spinner.gif"
							alt="Loading..." />
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-md-12 mainContainer">
					<g:layoutBody />
				</div>
			</div>

		</div>
	</body>
</g:if>
<g:else>
	<div class="container-fluid">
		<div class="row-fluid" align="center">
			<h1>Ente non trovato</h1>
		</div>
	</div>
</g:else>
</html>
