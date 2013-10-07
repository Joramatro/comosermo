<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">

<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>
	
	<!-- start: Slider -->
	<div class="slider-wrapper">

		<div id="da-slider" class="da-slider">
			<c:forEach var="publicacion" items="${publicacionesPortada}" varStatus="status" end="4">
				<div class="da-slide">
					<h2>${publicacion.tituloPortada}</h2>
					<p>${publicacion.descPortada}</p>
					<c:if test="${publicacion.script ne '#' }">
						<a href="/venta/principal/${publicacion.url}" class="da-link">COMPRAR HOY</a>
					</c:if>
					<a href="/blog/${publicacion.url}" class="da-link">LEER MÁS</a>
					<div class="da-img">
						<c:choose>
							<c:when test="${publicacion.tipo eq 'EB' }">
								<a href="/blog/${publicacion.url}">
							</c:when>	
							<c:otherwise>
								<a href="/blog/${publicacion.url}">
							</c:otherwise>
						</c:choose>
						<c:if test="${!empty publicacion.lImages}">
							<img src="${publicacion.lImages[0]}" style="width: 450px;height:329px;" alt="${publicacion.titulo}" /></a>
						</c:if>
					</div>
				</div>							
			</c:forEach>			
			<nav class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>
			</nav>
		</div>
		
	</div>
	<!-- end: Slider -->
			
	<!--start: Wrapper-->
	<div id="wrapper">
				
		<!--start: Container -->
    	<div class="container">
			
			<hr>
			
      		<!-- start: Hero Unit - Main hero unit for a primary marketing message or call to action -->
      		<div class="hero-unit">
				<h3>
					La belleza y la salud están íntimamente relacionadas. Una persona que se sienta agusto consigo mismo y saludable se resultará irremediablemente más atractivo para con lo que se rodea. Si además sumamos ejercicio físico a nuestro día a día, junto a la ayuda de producto naturales que nos ayuden a mantenernos en nuestra línea, seremos personas felices y exitosas.
				</h3>
        		<p><a class="btn btn-primary btn-large" href="/blog">ver Blog</a> </p>
      		</div>
			<!-- end: Hero Unit -->
      		
			<hr>
			<!-- start: Row -->
			<div class="row">
				
				<!-- start: Icon Boxes -->
				<div class="icons-box-vert-container">

					<!-- start: Icon Box Start -->
					<div class="span4">
						<div class="icons-box-vert">
							<i class="ico-ok ico-white circle-color-full"></i>
							<div class="icons-box-vert-info">
								<h3>Equilibrio</h3>
								<p>Encuentra el equilibrio entre tu cuerpo y mente. Ambos equilibrios son imprenscindibles para lograr nuestros objetivos y sentirnos agusts con nostros mismos.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box-->

					<!-- start: Icon Box Start -->
					<div class="span4">
						<div class="icons-box-vert">
							<i class="ico-ok ico-white circle-color-full"></i>
							<div class="icons-box-vert-info">
								<h3>Salud</h3>
								<p>Te preguntas cómo ser más guapo? Sentirnos saludables y fuertes es importante para mostrarnos atractivos hacia las personas que nos rodean, transmitiendo subconscientemente buenas vibracionescuando entables contacto con otras personas.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box -->

					<!-- start: Icon Box Start -->
					<div class="span4">
						<div class="icons-box-vert">
							<i class="ico-ok ico-white circle-color-full"></i>
							<div class="icons-box-vert-info">
								<h3>Belleza</h3>
								<p>La belleza es el resultado de un cómputo de circunstancias que se dan en una personas. Una mente sana, un cuerpo cuidado y una personalidad marcada, harán que te conviertas en la persona que siempre has querido ser.</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<!-- end: Icon Box -->

				</div>
				<!-- end: Icon Boxes -->
				<div class="clear"></div>
			</div>
			<!-- end: Row -->
			
			<hr>
			
			<div style="width: 60%;margin: 0 auto;">
			<a href="http://es.500cosmetics.com/miembro-masculino/?utm_source=aff_524cc124259d9&utm_medium=banner&utm_campaign=shop&utm_nooverride=1&amp;a_aid=524cc124259d9&amp;a_bid=1cdcea94" target="_top"><img src="http://www.naturalrevenue.com/affiliate/accounts/default1/banners/1cdcea94.gif" alt="" title="" width="728" height="90" /></a><img style="border:0" src="http://www.naturalrevenue.com/affiliate/scripts/imp.php?a_aid=524cc124259d9&amp;a_bid=1cdcea94" width="1" height="1" alt="" />
			</div>
		
		<hr>			
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>
						
		<hr>	
		<div class="title"><h3>Últimas Publicaciones</h3></div>			
    	<div class="container">
			<!-- start: Portfolio -->
			<div id="portfolio-wrapper" class="row">
				<% pageContext.setAttribute("newLineChar", "\n"); %>
				<c:forEach var="publicacion" items="${publicacionesBlog}" varStatus="status" end="8">				
				<div class="span4 portfolio-item nature people">
					<div class="picture"><a href="/blog/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a href="/blog/${publicacion.url}">${publicacion.titulo}</a></h5>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "<p/><p>")}
							</p>
						</div>
						<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span><%-- <span style=""><i class="mini-ico-user"></i>  <a href="/blog/${publicacion.url}">Jorge Amat</a></span>--%> <span><i class="mini-ico-comment"></i><a href="/blog/${publicacion.url}/#comments">${fn:length(publicacion.lComentarios)} comments</a></span></div>
					</div>	
				</div>
				</c:forEach>				
			</div>
			<!-- end: Portfolio -->     	
		</div>
		<!--end: Container-->
		<hr>			
						
			
			
		</div>
		<!--end: Container-->
	
	</div>
	<!-- end: Wrapper  -->			

<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

</body>
</html>