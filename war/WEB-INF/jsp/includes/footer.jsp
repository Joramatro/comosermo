<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
    <!-- start: Footer Menu -->
	<div id="footer-menu" class="hidden-tablet hidden-phone">

		<!-- start: Container -->
		<div class="container">
			
			<!-- start: Row -->
			<div class="row">

				<!-- start: Footer Menu Logo -->
				<div class="span2">
					<div id="footer-menu-logo">
						<div id="logo-chart"></div><a class="brand" href="http://www.comosermasguapo.com/">CSM<span>G</span>.</a>
					</div>
				</div>
				<!-- end: Footer Menu Logo -->

				<!-- start: Footer Menu Links-->
				<div class="span9">
					
					<div id="footer-menu-links">

						<ul id="footer-nav">

							<li><a href="http://www.comosermasguapo.com/">Inicio</a></li>

							<li><a href="/blog">Blog</a></li>
							
							<li><a href="/contacto">Contacto</a></li>

						</ul>

					</div>
					
				</div>
				<!-- end: Footer Menu Links-->

				<!-- start: Footer Menu Back To Top -->
				<div class="span1">
						
					<div id="footer-menu-back-to-top">
						<a href="http://www.comosermasguapo.com/"></a>
					</div>
				
				</div>
				<!-- end: Footer Menu Back To Top -->
			
			</div>
			<!-- end: Row -->
			
		</div>
		<!-- end: Container  -->	

	</div>	
	<!-- end: Footer Menu -->

	<!-- start: Footer -->
	<div id="footer">
		
		<!-- start: Container -->
		<div class="container">			
			<!-- start: Row -->
			<div class="row" style="margin-top: 20px;">

				<!-- start: About -->
				<div class="span3">
					
					<h3>Sobre nosotros</h3>
					<p>
						Nos gusta la belleza y la salud, en este blog queremos compartir contigo secretos y consejos para tu día a día.
					</p>
						
				</div>
				<!-- end: About -->

				<!-- start: Photo Stream -->
				<div class="span3">
					
					<h3></h3>
					<div class="flickr-widget">
							
						<div class="clear"></div>
					</div>
					
				</div>
				<!-- end: Photo Stream -->

				<div class="span6">
				
					<!-- start: Follow Us -->
					<h3>Síguenos!</h3>
					<ul class="social-grid">
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-twitter">
											<a onClick="ga('send', 'event', 'Social', 'Pie Pagina', 'Boton Twitter');" target="_blank" href="https://twitter.com/comosermasguapo"></a>
										</div>
										<div class="social-info-back social-twitter-hover">
											<a onClick="ga('send', 'event', 'Social', 'Pie Pagina', 'Boton Twitter');" target="_blank" href="https://twitter.com/comosermasguapo"></a>
										</div>	
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="social-item">				
								<div class="social-info-wrap">
									<div class="social-info">
										<div class="social-info-front social-facebook">
											<a onClick="ga('send', 'event', 'Social', 'Pie Pagina', 'Boton Facebook');" target="_blank" href="https://www.facebook.com/comosermasguapo"></a>
										</div>
										<div class="social-info-back social-facebook-hover">
											<a onClick="ga('send', 'event', 'Social', 'Pie Pagina', 'Boton Facebook');" target="_blank" href="https://www.facebook.com/comosermasguapo"></a>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
					<!-- end: Follow Us -->
				
					<!-- start: Newsletter -->
					<form id="newsletter" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=ComoSerMasGuapo&amp;loc=es_ES', 'popupwindow', 'scrollbars=yes,width=550,height=520');">
						<h3>Suscríbete! &nbsp; <a href="http://www.comosermasguapo.com/rssfeed" accesskey="r"><img src="/img/rssmenu.png" alt="RSS"></a></h3>
						<p>Por favor, deja tu email para recibir nuestras novedades.</p>
						<label for="newsletter_input">@:</label>
						<input style="border: 1px solid #29a9df;" type="text" name="email" id="newsletter_input">
						<input type="submit" id="btnSuscripcion" value="Enviar">			
						<input type="hidden" value="ComoSerMasGuapo" name="uri"/>
						<input type="hidden" name="loc" value="es_ES"/>						
					</form>
					<!-- end: Newsletter -->
				
				</div>
				
			</div>
			<!-- end: Row -->	
			
		</div>
		<!-- end: Container  -->

	</div>
	<!-- end: Footer -->

	<!-- start: Copyright -->
	<div id="copyright">
	
		<!-- start: Container -->
		<div class="container">
		
			<div class="span12">
				<jsp:useBean id="date" class="java.util.Date" />
				<p>
				<a style="margin-right: 35px;" href="http://www.comosermasguapo.com/rssfeed" accesskey="r"><img src="/img/rss.gif" alt="RSS"/>RSS</a>
				&copy; <fmt:formatDate value="${date}" pattern="yyyy" />,&nbsp;<a target="_blank" href="https://plus.google.com/114538229665853420789"><span id="_publisher8" itemprop="publisher" itemscope itemtype="http://schema.org/Organization">
<span itemprop="name">Como Ser Mas Guapo</span></span></a><i style="margin-top: -18px;" class="ico-color ico-sun"></i>
				<a style="margin-left: 19px;" href="/politica-de-privacidad">Política de privacidad</a>					
				</p>
			</div>
	
		</div>
		<!-- end: Container  -->
		
	</div>	
	<!-- end: Copyright -->
<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/js/jquery.lazyload.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/isotope.min.js"></script>
<script src="/js/jquery.imagesloaded.min.js"></script>
<script src="/js/flexslider.min.js"></script>
<script src="/js/carousel.min.js"></script>
<script src="/js/jquery.cslider.min.js"></script>
<script src="/js/slider.min.js"></script>
<script src="/js/fancybox.min.js"></script>
<script defer="defer" src="/js/custom.min.js"></script>
<script async src="/js/apprise-v2.min.js"></script>
<script async src="/js/jquery.rateit.min.js"></script>
<script src="//load.sumome.com/" data-sumo-site-id="5b0c3c445c318aa588d40fac325fd7a79b53b48adebba640ad29561895f5656c" async="async"></script>

<%@ include file="/WEB-INF/jsp/includes/scripts.jsp"%>


<script>
$("head").append("<link rel='stylesheet' type='text/css' href='/css/apprise-v2.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/icons.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/icons-color.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/social-icons.min.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/hover.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/fancybox.css' />");
$("head").append("<link rel='stylesheet' type='text/css' href='/css/rateit.css' />");
</script>
<script>
	$("img.lazy").lazyload({
	    threshold : 250
	});
	var pathname = window.location.pathname;
	var parts = pathname.split('/');
	$("#menuSuperior > li").removeClass('active');
	if(parts[1] == 'contacto'){		
		$("#menuContacto").addClass('active');
	}else if(parts[1] == 'sobre'){	
		$("#menuSobre").addClass('active');
	}else if(parts[1] == 'blog'){	
		$("#menuBlog").addClass('active');
	}else if(parts[1] == 'productos'){	
		$("#menuProductos").addClass('active');
	}else{
		$("#menuInicio").addClass('active');
	}
	
	
</script>
