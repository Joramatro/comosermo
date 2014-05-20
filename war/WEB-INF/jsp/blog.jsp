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
				<div id="blog1" style="width: 87%;margin: 0 auto;display:none">
					<iframe src="http://geo.hyperlinksecure.com/?userId=1298401&size=315x300&type=iframe&tracker=blog1&offer=|5|21|72|96|115|121|138|153|356|&hard=1&animated=1" frameborder="0" scrolling="no" width="315" height="300"></iframe>
				
				<%-- 
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- articulo superior recuadro csmg -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:300px;height:250px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="3319960944"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
				--%>
				</div>	
				</div>
				</div>				
				<c:forEach var="publicacion" items="${publicaciones}" varStatus="status" >				
				<div class="span4 portfolio-item ${fn:replace(publicacion.clase1, " ", separadorClase)} ${fn:replace(publicacion.clase2, " ", separadorClase)}">
					<div class="picture"><a href="/blog/${publicacion.url}" title="${publicacion.titulo}">
					
					<c:if test="${!empty publicacion.lImages }">
					<img pagespeed_no_defer="" src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a title="${publicacion.titulo}" href="/blog/${publicacion.url}">${publicacion.titulo}</a></h5>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "<p/><p>")}
							</p>
						</div>
						<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span><%--<span style=""> <i class="mini-ico-user"></i>  <a href="/blog/${publicacion.url}">Jorge Amat</a>--%></span> <span><i class="mini-ico-comment"></i><a href="/blog/${publicacion.url}/#comments">${fn:length(publicacion.lComentarios)} comentarios</a></span></div>
					</div>	
				</div>
				</c:forEach>
				<div class="span4 portfolio-item Seducción Trucos">
				<div class="picture">
				<div id="blog1Mob" style="width: 87%;margin: 0 auto;display:none">
					<iframe src="http://geo.hyperlinksecure.com/?userId=1298401&size=300x250m&type=iframe&tracker=blog1_mob&offer=|47|98|114|118|122|123|223|317|347|394|404|&hard=1&animated=1" frameborder="0" scrolling="no" width="300" height="250m"></iframe>
				
				<%-- 
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- articulo superior recuadro csmg -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:300px;height:250px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="3319960944"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
				--%>
				</div>	
				</div>
				</div>
			</div>
			<!-- end: articulo -->
			
			<div class="clear" style="padding-top: 25px;"></div>
			<div id="banGoogleMasVistos" style="margin-bottom: 25px;" class="iframe_wrap">
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
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>			
      		
		</div>
		<!--end: Container-->
				
	</div>
	<!-- end: Wrapper  -->
	
<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>
<script>
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		$("#banGoogleVistos").hide();
	}
	
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
	
	jQuery(document).ready(function($){
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {		
			$("#blog1Mob").show();
		}else{
			$("#blog1").show();
		}
	});
</script>

</body>
</html>				