<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>

	<!-- start: Meta -->
	<meta charset="utf-8">
	<meta name="robots" content="index,all" />
	<meta name="revisit-after" content="1 days" />
	<meta name="lang" content="es" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	<c:choose>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'EB'}">
		<title>${publicacion.titulo} en Comprar Microondas Hoy</title> 
		<meta name="description" content="${publicacion.descripcion}"/>
		<meta name="keywords" content="${publicacion.keywords}" />
		<meta name="title" content="${publicacion.titulo} en Comprar Microondas Hoy. - Comprar Microondas Hoy - www.comprarmicroondashoy.com" />
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="${publicacion.titulo} en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo}"/>
		<meta property="og:description" content="${publicacion.descripcion}"/>
		<meta property="og:type" content="microondas"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com/microondas/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com/microondas/${publicacion.url}“/>
	</c:when>
	<c:when test="${!empty publicacion && publicacion.tipo eq 'AR'}">
		<title>${publicacion.titulo} en Comprar Microondas Hoy</title> 
		<meta name="description" content="${publicacion.descripcion}"/>
		<meta name="keywords" content="${publicacion.keywords}" />
		<meta name="title" content="${publicacion.titulo} en Comprar Microondas Hoy. - Comprar Microondas Hoy - www.comprarmicroondashoy.com" />
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="${publicacion.titulo} en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo}"/>
		<meta property="og:description" content="${publicacion.descripcion}"/>
		<meta property="og:type" content="articulos"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com/blog/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[0]}"/>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[0]}">
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com/blog/${publicacion.url}“/>
	</c:when>	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'extras')}">
		<title>Extras en Comprar Microondas Hoy</title> 
		<meta name="description" content="Accede a todos los extras para comprar online accesorios a tu microondas como un plato de microondas, plato crisp, tupperwares o agarres"/>
		<meta name="keywords" content="comprar microondas, comprar tupperware, comprar tapper, comprar agarres microondas" />
		<meta name="title" content="Extras en Comprar Microondas Hoy. - Comprar Microondas Hoy - www.comprarmicroondashoy.com" />
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="Extras en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Extras en Comprar Microondas Hoy"/>
		<meta property="og:description" content="Accede a todos los extras para comprar online accesorios a tu microondas como un plato de microondas, plato crisp o tupperwares"/>
		<meta property="og:type" content="extras"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com/extras"/>
		<c:if test="${!empty publicaciones}">
			<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
		</c:if>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Extras en Comprar Microondas Hoy">
		<meta name="twitter:description" content="Accede a todos los extras para comprar online accesorios a tu microondas como un plato de microondas, plato crisp ó tupperwares">
		<c:if test="${!empty publicaciones}">
			<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
		</c:if>
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<!-- end: Twitter tags -->		
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com/extras“/>
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'contacto')}">
		<title>Contacta con Comprar Microondas Hoy</title> 
		<meta name="description" content="Contacta con los que trabajamos en Comprar Microondas Hoy"/>
		<meta name="keywords" content="contacta microondas, comprar microondas" />
		<meta name="title" content="Contacta en Comprar Microondas Hoy. - Comprar Microondas Hoy - www.comprarmicroondashoy.com" />
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="Contacto en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Contacta en Comprar Microondas Hoy"/>
		<meta property="og:description" content="Contacta con los que trabajamos en Comprar Microondas Hoy"/>
		<meta property="og:type" content="contacto"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com/contacto"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@Jorge_Amat1">
		<meta name="twitter:title" content="Contacta con nosotros en Comprar Microondas Hoy">
		<meta name="twitter:description" content="Contacta con los que trabajamos en Comprar Microondas Hoy">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com/contacto“/>
		<link rel="shortcut icon" href="http://www.comprarmicroondashoy.com/favicon.ico?v=2" />
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'microondas')}">
		<title>Microondas y precios en Comprar Microondas Hoy</title> 
		<meta name="description" content="Análisis y precios de los mejores microondas en la actualidad para que puedas comprar tu microondas preferido y comparar online"/>
		<meta name="keywords" content="análisis microondas, microondas, comprar microondas, comparar precios microondas" />
		<meta name="title" content="Análisis y precios de microondas para poder comprarlo online. - Comprar Microondas Hoy - www.comprarmicroondashoy.com" />
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="Microondas en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Análisis y precios de microondas para poder comprarlo online en Comprar Microondas Hoy"/>
		<meta property="og:description" content="Análisis y precios de los mejores microondas en la actualidad para que puedas comprarlo online"/>
		<meta property="og:type" content="microondas"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com/microondas"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Análisis y precios de microondas para poder comprarlo online en Comprar Microondas Hoy">
		<meta name="twitter:description" content="Análisis y precios de los mejores microondas en la actualidad para que puedas comprarlo online">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com/microondas“/>
		<!-- end: Twitter tags -->		
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'blog')}">
		<title>Artículos sobre Microondas en Comprar Microondas Hoy</title> 
		<meta name="description" content="Opinión y artículos en nuestro blog de los mejores microondas en la actualidad para que puedas comprarlo online"/>
		<meta name="keywords" content="detalles microondas, artículos microondas, comprar microondas online, artículos microondas, blog microondas" />
		<meta name="title" content="Opinión y artículos sobre microondas para poder comprarlo online. - Comprar Microondas Hoy - www.comprarmicroondashoy.com" />
		<meta name="author" content="Jorge Amat" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="Blog en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Opinión y detalles sobre microondas para comprar poder comprarlo online"/>
		<meta property="og:description" content="Opinión y artículos en nuestro blog de los mejores microondas en la actualidad para que puedas comprarlo online"/>
		<meta property="og:type" content="articulo"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com/blog"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="Opinión y artículos sobre microondas para comprar tu microondas preferido en Comprar Microondas Hoy">
		<meta name="twitter:description" content="Opinión y artículos en nuestro blog de los mejores microondas en la actualidad para que puedas comprarlo online">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<!-- end: Twitter tags -->
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com/blog“/>		
	</c:when>
	<c:otherwise>
		<title>Bienvenido a Como ser más guapo</title> 
		<meta name="description" content="Información para que puedas comprar microondas adecuado a tus necesidades, microondas para coche, para casa, para camion, con horno, con grill, y tupperwares, además de baratos y muchas más posibilidades"/>
		<meta name="keywords" content="comprar microondas, comprar microondas barato, que microondas comprar, comprar microondas online, microondas conveccion, comprar tupperware, cocina microondas, mini microondas,microondas para camion,microondas portatil" />
		<meta name="title" content="Microondas online en Comprar Microondas Hoy" />
		<meta name="author" content="Comprar Microondas Hoy" />
		<meta name="copyright" content="Comprar Microondas Hoy" />
		<meta name="application-name" content="Microondas en Comprar Microondas Hoy" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Microondas en Comprar Microondas online"/>
		<meta property="og:description" content="Información para que puedas comprar microondas adecuado a tus necesidades, microondas para coche, para casa, para camion, con horno, tupperwares, con grill, además de baratos y muchas más posibilidades"/>
		<meta property="og:type" content="principal"/>
		<meta property="og:url" content="http://www.comprarmicroondashoy.com"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="hola@comprarmicroondashoy.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@ComprarHoy">
		<meta name="twitter:creator" content="@ComprarHoy">
		<meta name="twitter:title" content="eReaders en Comprar Microondas Hoy online">
		<meta name="twitter:description" content="Información para que puedas comprar microondas adecuado a tus necesidades, microondas para coche, para casa, para camion, con horno, tupperwares, con grill, además de baratos y muchas más posibilidades">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comprarmicroondashoy.com">
		<!-- end: Twitter tags -->				
		<link rel=”canonical” href=”http://www.comprarmicroondashoy.com“/>
	</c:otherwise>		
	</c:choose>
	
	<style>
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 400;
	  src: local('Droid Sans'), local('DroidSans'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/s-BiyweUPV0v-yRb-cjciBsxEYwM7FgeyaSgU71cLG0.woff) format('woff');
	}
	@font-face {
	  font-family: 'Droid Sans';
	  font-style: normal;
	  font-weight: 700;
	  src: local('Droid Sans Bold'), local('DroidSans-Bold'), url(http://themes.googleusercontent.com/static/fonts/droidsans/v3/EFpQQyG9GqCrobXxL-KRMQFhaRv2pGgT5Kf0An0s4MM.woff) format('woff');
	}
	</style>
    <!-- start: CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/css/parallax-slider.css" rel="stylesheet">   
	<%@ include file="/WEB-INF/jsp/includes/styles.jsp"%>
	<!-- end: CSS -->

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-44232925-1', 'comprarmicroondashoy.com');
  ga('send', 'pageview');

</script>
</head>
<body>
	
	<!--start: Header -->
	<header>
		
		<!--start: Container -->
		<div class="container">
			<%-- <div>
				<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- includes ch -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:970px;height:90px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="2942822544"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>--%>
			<!--start: Navbar -->
			<div class="navbar navbar-inverse">
	    		<div class="navbar-inner">
	          		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	          		</a>
					<a class="brand" href="/"><i class="ico-wifi-alt circle"></i>Como ser más <span>guapo</span>.</a>
	          		<div class="nav-collapse collapse">
	            		<ul id="menuSuperior" class="nav" style="margin-right:-30px;">
							<li id="menuInicio">
	                			<a href="/">Inicio</a>
	              			</li>
	              			<li id="menuMicroondas"><a href="/microondas">Microondas</a></li>
							<li class="dropdown">
	                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Destacados<b class="caret"></b></a>
	                			<ul class="dropdown-menu">
	                				<c:forEach var="publicacion" items="${publicacionesDestacadas}" varStatus="status" end="5">
										<c:choose>
											<c:when test="${publicacion.tipo eq 'EB' }">
												<li><a href="/microondas/${publicacion.url}">${publicacion.titulo}</a></li>
											</c:when>	
											<c:otherwise>
												<li><a href="/blog/${publicacion.url}">${publicacion.titulo}</a></li>
											</c:otherwise>
										</c:choose>										
	                  				</c:forEach>	                					                  				
								</ul>
	              			</li>
	              			<li id="menuBlog"><a href="/blog">Blog</a></li>
	              			<li id="menuSobre"><a href="/sobre">Sobre mi</a></li>	              																			
	              			<li id="menuContacto"><a href="/contacto">Contacto</a></li>
	              			<li style="margin-top: -8px;"><a href="#newsletter" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></li>
	            		</ul>
	          		</div>
	        	</div>
	      	</div>
			<!--end: Navbar -->
						
		</div>
		<!--end: Container-->			
			
	</header>
	<!--end: Header-->