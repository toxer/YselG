
<%--va incluso in tutte le pagine gsp--%>
<g:include controller="start" action="init" />
<head>
<meta name="layout" content="main" />

</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<h1>userid:${ session.client?.userId}</h1>
		</div>
	</div>
</body>