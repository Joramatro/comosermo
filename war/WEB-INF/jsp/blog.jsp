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

				<h1><i class="ico-lightbulb ico-white"></i>Blog</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	<% pageContext.setAttribute("separadorClase", "-"); %>
	<!--start: Wrapper-->
	<div id="wrapper">
		<div id="banGoogleETop" class="iframe_wrap" style="width: 54%;margin: -16px auto;">
		<%-- 
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- superior 2 skyscraper csmg -->
			<ins class="adsbygoogle"
			     style="display:inline-block;width:728px;height:90px"
			     data-ad-client="ca-pub-3168560600423825"
			     data-ad-slot="4657093346"></ins>
			<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
		--%>
		
		</div>
		
		<!-- start: Container -->	
		<div class="container">

			<div id="filters" style="margin-top: 15px;">
				<ul id="optionSet1" class="option-set" data-option-key="filter">
					<li><a href="#filter" class="selected" data-option-value="*">Todos</a></li>
					<c:forEach var="categoria" items="${categorias}" varStatus="status" >
						<li><a href="#filter" class='${fn:replace(categoria, " ", separadorClase)}' data-option-value=".${fn:replace(categoria, " ", separadorClase)}">${categoria}</a></li>
					</c:forEach>
				</ul>
			</div> 
		</div>
		<!-- end: Container  -->
				
		<!--start: Container -->
    	<div class="container">
			<!-- start: articulo -->
			<div id="portfolio-wrapper" class="row">
				<% pageContext.setAttribute("newLineChar", "\n"); %>
				<div class="span4 portfolio-item Seducción Trucos">
				<div class="picture">
				<div id="blog1" style="width: 67%;margin: 0 auto;">				
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- interior1r -->
					<ins class="adsbygoogle"
					     style="display:block"
					     data-ad-client="ca-pub-3168560600423825"
					     data-ad-slot="9603133345"
					     data-ad-format="vertical"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>				
				</div>	
				</div>
				</div>				
				<c:forEach var="publicacion" items="${publicaciones}" varStatus="status" >				
				<div class="span4 portfolio-item ${fn:replace(publicacion.clase1, " ", separadorClase)} ${fn:replace(publicacion.clase2, " ", separadorClase)}">
					<div class="picture"><a href="/blog/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a title="${publicacion.titulo}" href="/blog/${publicacion.url}">${publicacion.titulo}</a></h5>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "</p><p>")}
							</p>
						</div>
						
					</div>	
				</div>
				</c:forEach>
				<div class="span4 portfolio-item Seducción Trucos">
				<div class="picture">
					
				</div>
				</div>
			</div>
			<!-- end: articulo -->
			
			<div class="clear" style="padding-top: 25px;"></div>
			<div id="banGoogleMasVistos" style="margin-bottom: 25px;" class="iframe_wrap">
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- interior1r -->
				<ins class="adsbygoogle"
				     style="display:block"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="9603133345"
				     data-ad-format="auto"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>			
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>			
      		
		</div>
		<!--end: Container-->
				
	</div>
	<!-- end: Wrapper  -->
	
<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>
<script>
	
	jQuery(document).ready(function($){
	    
	    function getURLParameter(name) {
	        return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null;
	    }
	    
	    if (getURLParameter("filtro")!=null){
	    	$('#optionSet1 .selected').removeClass('selected');
	    	$('#optionSet1 .'+getURLParameter("filtro")).addClass('selected');
	    	$('#portfolio-wrapper').isotope({ filter: '.'+ getURLParameter("filtro")});
	    }
	});
	
</script>

</body>
</html>				