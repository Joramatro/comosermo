<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="es">

<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>

	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h1><i class="ico-lightbulb ico-white"></i>Microondas</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	<% pageContext.setAttribute("separadorClase", "-"); %>
	<!--start: Wrapper-->
	<div id="wrapper">		
		<!-- start: Container -->	
		<div class="container">

			<div id="filters">
				<ul id="optionSet1" class="option-set" data-option-key="filter">
					<li><a id="filter10" href="#filter" class="selected">Todos</a></li>
					<c:forEach var="categoria" items="${categorias}" varStatus="status" >
						<li><a id="filter1${status.count}" href="#filter" class='${fn:replace(categoria, " ", separadorClase)}'>${categoria}</a></li>
					</c:forEach>
				</ul>
				<ul id="optionSet2" class="option-set" data-option-key="filter">
					<li><a id="filter20" href="#filter" class="selected">Cualquier precio</a></li>
					<c:forEach var="categoriaPrecio" items="${categoriasPrecio}" varStatus="status" >
						<li><a id="filter2${status.count}" href="#filter" class='${fn:replace(categoriaPrecio, " ", separadorClase)}'>${categoriaPrecio}</a></li>
					</c:forEach>
				</ul>
			</div>  
		</div>
		<!-- end: Container  -->
		
		<!--start: Container -->
    	<div class="container">
			<!-- start: microondas -->
			<div id="portfolio-wrapper" class="row">
				<% pageContext.setAttribute("newLineChar", "\n"); %>
				<c:forEach var="publicacion" items="${publicaciones}" varStatus="status" >				
				<div class='span4 portfolio-item ${fn:replace(publicacion.clase1, " ", separadorClase)} ${fn:replace(publicacion.clase2, " ", separadorClase)} ${fn:replace(publicacion.clase3, " ", separadorClase)} ${fn:replace(publicacion.clase4, " ", separadorClase)} ${fn:replace(publicacion.clase5, " ", separadorClase)} ${fn:replace(publicacion.clase6, " ", separadorClase)}'>
					<div class="picture"><a href="/microondas/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a title="${publicacion.titulo}" href="/microondas/${publicacion.url}">${publicacion.titulo}</a></h5>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "</p><p>")}
							</p>
						</div>
						
					</div>	
				</div>
				</c:forEach>
			</div>
			<!-- end: microondas -->
			
			<div class="clear" style="padding-top: 25px;"></div>
			
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>
			
			<div id="banGoogleVistos" class="span3" style="float: right;margin-top: -410px;margin-right: -20px;">				
	<%-- <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
	<!-- csmg horizontal index -->
	<ins class="adsbygoogle"
	     style="display:inline-block;width:970px;height:90px"
	     data-ad-client="ca-pub-3168560600423825"
	     data-ad-slot="9010984948"></ins>
	<script>
	(adsbygoogle = window.adsbygoogle || []).push({});
	</script>--%>				
       		</div>
       		      	
		</div>
		<!--end: Container-->
	</div>
	<!-- end: Wrapper  -->
		
			
<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>
<script>
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		$("#banGoogleVistos").hide();
	}
</script>

</body>
</html>				