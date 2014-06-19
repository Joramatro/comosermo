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
	<c:when test="${!empty publicacion && publicacion.tipo eq 'AR'}">
		<title>${publicacion.titulo} en Como Ser Mas Guapo</title> 
		<meta name="description" content="${publicacion.descripcion}"/>
		<meta name="keywords" content="${publicacion.keywords}" />
		<meta name="title" content="${publicacion.titulo} en Como Ser Mas Guapo. - Como Ser Mas Guapo - www.comosermasguapo.com" />
		<meta name="author" content="Como Ser Mas Guapo" />
		<meta name="copyright" content="Como Ser Mas Guapo" />
		<meta name="application-name" content="${publicacion.titulo} en Como Ser Mas Guapo" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="${publicacion.titulo}"/>
		<meta property="og:description" content="${publicacion.descripcion}"/>
		<meta property="og:type" content="articulos"/>
		<meta property="og:url" content="http://www.comosermasgupao.com/blog/${publicacion.url}"/>
		<meta property="og:image" content="${publicacion.lImages[2]}"/>
		<meta property="og:email" content="contacta.comosermasguapo@gmail.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@comosermasguapo">
		<meta name="twitter:creator" content="@comosermasguapo">
		<meta name="twitter:title" content="${publicacion.titulo}">
		<meta name="twitter:description" content="${publicacion.descripcion}">
		<meta name="twitter:image" content="${publicacion.lImages[2]}">
		<meta name="twitter:domain" content="comosermasguapo.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comosermasguapo.com/blog/${publicacion.url}"/>
	</c:when>	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'contacta')}">
		<title>Contacta con Como Ser Mas Guapo</title> 
		<meta name="description" content="Contacta con Cómo Ser Mas Guapo"/>
		<meta name="title" content="Contacta con Como Ser Mas Guapo. - Como Ser Mas Guapo - www.comosermasguapo.com" />
		<meta name="author" content="Como Ser Mas Guapo" />
		<meta name="copyright" content="Como Ser Más Guapo" />
		<meta name="application-name" content="Contacto en Como Ser Mas Guapo" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Contacta Como Ser Mas Guapo"/>
		<meta property="og:description" content="Contacta con Como Ser Mas Guapo"/>
		<meta property="og:type" content="contacto"/>
		<meta property="og:url" content="http://www.comosermasguapo.com/contacto"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="contacta.comosermasguapo@gmail.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@comosermasguapo">
		<meta name="twitter:creator" content="@comosermasguapo">
		<meta name="twitter:title" content="Contacta con Como ser Mas Guapo">
		<meta name="twitter:description" content="Contacta con Como ser Mas Guapo">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comosermasguapo.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comosermasguapo.com/contacto"/>
	</c:when>
	<c:when test="${fn:contains(pageContext.request.requestURI, 'extras')}">
		<title>Productos recomendados en Como Ser Mas Guapo</title> 
		<meta name="description" content="Recomendaciones personales para comprar online los mejores productos de belleza y salud, una forma de ser mas guapo y ser hombres lindos"/>
		<meta name="keywords" content="productos belleza, productos salud, comprar productos belleza, comprar productos salud, ser mas guapo" />
		<meta name="title" content="Productos recomendados en Como Ser Mas Guapo - www.comosermasguapo.com" />
		<meta name="author" content="Como Ser Mas Guapo" />
		<meta name="copyright" content="Como Ser Mas Guapo" />
		<meta name="application-name" content="Productos recomendados en Como Ser Mas Guapo" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Productos recomendados en Como Ser Mas Guapo"/>
		<meta property="og:description" content="Recomendaciones personales para comprar online los mejores productos de belleza y salud, una forma de ser mas guapo y ser hombres lindos"/>
		<meta property="og:type" content="products"/>
		<meta property="og:url" content="http://www.comosermasguapo.com/productos"/>
		<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
		<meta property="og:email" content="contacta.comosermasguapo@gmail.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@comosermasguapo">
		<meta name="twitter:creator" content="@comosermasguapo">
		<meta name="twitter:title" content="Productos recomendados en Como Ser Mas Guapo">
		<meta name="twitter:description" content="Recomendaciones personales para comprar online los mejores productos de belleza y salud, una forma de ser mas guapo y ser hombres lindos">
		<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
		<meta name="twitter:domain" content="comosermasguapo.com">
		<!-- end: Twitter tags -->		
		<link rel="canonical" href="http://www.comosermasguapo.com/productos"/>
	</c:when>	
	<c:when test="${fn:contains(pageContext.request.requestURI, 'blog')}">
		<title>Artículos sobre Belleza en Como Ser Mas Guapo</title> 
		<meta name="description" content="Sigue los consejos de belleza y salud que te brindo en mi blog, todo lo que tienes que saber para sentirte mejor, seducir mujeres y parecer hombres lindos en Como Ser Mas Guapo"/>
		<meta name="keywords" content="como ser mas guapo, belleza, salud, sano" />
		<meta name="title" content="Trucos de belleza y salud para ser hombres lindos en Como Ser Mas Guapo. - Como Ser Mas Guapo - www.comosermasguapo.com" />
		<meta name="author" content="Como Ser Mas Guapo" />
		<meta name="copyright" content="Como Ser Mas Guapo" />
		<meta name="application-name" content="Blog en Como Ser Mas Guapo" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Opinion y artículos sobre salud y belleza para ser hombres lindos y sobre como ser mas guapo"/>
		<meta property="og:description" content="Sigue los consejos de belleza y salud que te brindo en mi blog, todo lo que tienes que saber para sentirte mejor, seducir mujeres y parecer hombres lindos en Como Ser Mas Guapo"/>
		<meta property="og:type" content="articulo"/>
		<meta property="og:url" content="http://www.comosermasguapo.com/blog"/>
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta property="og:image" content="${publicaciones[0].lImages[0]}"/>
			</c:if>
		</c:if>
		<meta property="og:email" content="contacta.comosermasguapo@gmail.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@comosermasguapo">
		<meta name="twitter:creator" content="@comosermasguapo">
		<meta name="twitter:title" content="Trucos de para ser más guapo y saludable en Como Ser Mas Guapo, hombres lindos, salud y belleza">
		<meta name="twitter:description" content="Sigue los consejos de belleza y salud que te brindo en mi blog, todo lo que tienes que saber para sentirte mejor, seducir mujeres y parecer hombres lindos en Como Ser Mas Guapo">
		<c:if test="${!empty publicaciones}">
			<c:if test="${!empty publicaciones[0].lImages}">
				<meta name="twitter:image" content="${publicaciones[0].lImages[0]}">
			</c:if>
		</c:if>
		<meta name="twitter:domain" content="comosermasguapo.com">
		<!-- end: Twitter tags -->
		<link rel="canonical" href="http://www.comosermasguapo.com/blog"/>		
	</c:when>
	<c:otherwise>
		<title>Bienvenido a Como Ser Mas Guapo</title> 
		<meta name="description" content="Bienvenido a mi blog dónde quiero darte trucos para ser más guapo sentirte más saludable, más sano, y ser hombres lindos. Todo lo que tienes que saber para sentirte mejor y seducir a los demás en Como Ser Mas Guapo"/>
		<meta name="keywords" content="como ser mas guapo, belleza y salud, hombres lindos" />
		<meta name="title" content="Consejos y trucos de belleza y salud en Como ser Mas Guapo" />
		<meta name="author" content="Como Ser Mas Guapo" />
		<meta name="copyright" content="Como Ser Mas Guapo" />
		<meta name="application-name" content="Como Ser Mas Guapo" />
		<!-- start: Facebook Open Graph -->
		<meta property="og:title" content="Consejos y trucos de belleza y salud en Como ser Mas Guapo"/>
		<meta property="og:description" content="Bienvenido a mi blog dónde quiero darte trucos para ser más guapo sentirte más saludable, más sano, y ser hombres lindos. Todo lo que tienes que saber para sentirte mejor y seducir a los demás en Como Ser Mas Guapo"/>
		<meta property="og:type" content="principal"/>
		<meta property="og:url" content="http://www.comosermasguapo.com"/>
		<meta property="og:image" content="/img/img-meta/logoGrande.jpg"/>
		<meta property="og:email" content="contacta.comosermasguapo@gmail.com"/>
		<!-- end: Facebook Open Graph -->
		<!-- start: Twitter tags -->
		<meta name="twitter:card" content="summary_large_image">
		<meta name="twitter:site" content="@comosermasguapo">
		<meta name="twitter:creator" content="@comosermasguapo">
		<meta name="twitter:title" content="Consejos belleza y salud en Como ser Mas Guapo">
		<meta name="twitter:description" content="Bienvenido a mi blog dónde quiero darte trucos para ser más guapo y sentirte más saludable, más sano, y ser hombres lindos. Todo lo que tienes que saber para sentirte mejor y seducir a los demás en Como Ser Mas Guapo">
		<meta name="twitter:image" content="/img/img-meta/logoGrande.jpg">
		<meta name="twitter:domain" content="comosermasguapo.com">
		<!-- end: Twitter tags -->				
		<link rel="canonical" href="http://www.comosermasguapo.com"/>
	</c:otherwise>		
	</c:choose>
	<link rel="alternate" type="application/rss+xml" title="Como Ser Mas Guapo RSS Feed" href="http://www.comosermasguapo.com/rssfeed"/>
	<link rel="author" href="https://plus.google.com/114538229665853420789" />
	<link rel="publisher" href="https://plus.google.com/114538229665853420789" />
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

  ga('create', 'UA-44421452-1', 'comosermasguapo.com');
  ga('require', 'displayfeatures');
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
					<a class="brand" href="/"><i class="ico-eye-open circle"></i>Como Ser Mas <span>Guapo</span>.</a>
	          		<div class="nav-collapse collapse">
	            		<ul id="menuSuperior" class="nav" style="margin-right:-30px;">
							<li id="menuInicio">
	                			<a href="/">Inicio</a>
	              			</li>
							<li class="dropdown">
	                			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Destacados<b class="caret"></b></a>
	                			<ul class="dropdown-menu">
	                				<c:forEach var="publicacion" items="${publicacionesDestacadas}" varStatus="status" end="5">
										<c:choose>
											<c:when test="${publicacion.tipo eq 'EB' }">
												<li><a title="${publicacion.titulo}" href="/blog/${publicacion.url}">${publicacion.titulo}</a></li>
											</c:when>	
											<c:otherwise>
												<li><a title="${publicacion.titulo}" href="/blog/${publicacion.url}">${publicacion.titulo}</a></li>
											</c:otherwise>
										</c:choose>										
	                  				</c:forEach>	                					                  				
								</ul>
	              			</li>
	              			<li id="menuProductos"><a title="Productos" href="/productos">Productos</a></li>
	              			<li id="menuBlog"><a title="Blog" href="/blog">Blog</a></li>	              																			
	              			<li id="menuContacto"><a title="Contacto" href="/contacto">Contacto</a></li>
	              			<li style="margin-top: -8px;"><a href="#newsletter" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></li>
	            		</ul>
	          		</div>
	        	</div>
	      	</div>
			<!--end: Navbar -->
						
		</div>
		<!--end: Container-->			
	<div id="header" class="iframe_wrap" style="width: 55%; margin:0 auto; display:none;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- superior 1 skyscraper csmg -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:728px;height:90px"
		     data-ad-client="ca-pub-3168560600423825"
		     data-ad-slot="9366494543"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
		
		</div>
	<div id="headerMob" class="iframe_wrap" style="display:none;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- mobile header -->
		<ins class="adsbygoogle"
		     style="display:inline-block;width:320px;height:50px"
		     data-ad-client="ca-pub-3168560600423825"
		     data-ad-slot="5554851741"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>
	</header>
	<!--end: Header-->