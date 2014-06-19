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

				<h1><i class="ico-lightbulb ico-white"></i>Productos</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
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

			<div id="filters">
				<ul class="option-set" data-option-key="filter">
					<li><a href="#filter" class="selected" data-option-value="*">Todos</a></li>
					<c:forEach var="categoria" items="${categorias}" varStatus="status" >
						<li><a href="#filter" data-option-value=".${fn:replace(categoria, " ", separadorClase)}">${categoria}</a></li>
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
				
				<div class="span4 portfolio-item">
				<div class="picture">
				<div style="width: 35%;margin: 0 auto;">
				<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-na.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=US&source=ss&ref=ss_til&ad_type=product_link&tracking_id=csmgex-20&marketplace=amazon&region=US&placement=B00J4V5TFM&asins=B00J4V5TFM&linkId=BWH3XJEE2NRG3V7Y&show_border=true&link_opens_in_new_window=true">
				</iframe>
				</div>	
				</div>
				</div>
				
				<div class="span4 portfolio-item">
				<div class="picture">
					<div id="extras1" style="width: 67%;margin: 0 auto;display:none">
						<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- articulo superior recuadro csmg -->
						<ins class="adsbygoogle"
						     style="display:inline-block;width:300px;height:250px"
						     data-ad-client="ca-pub-3168560600423825"
						     data-ad-slot="3319960944"></ins>
						<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
						</script>	
					</div>
					<div id="extras1Mob" style="width: 67%;margin-left: -8px;display:none">
						<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- articulo superior recuadro csmg -->
						<ins class="adsbygoogle"
						     style="display:inline-block;width:300px;height:250px"
						     data-ad-client="ca-pub-3168560600423825"
						     data-ad-slot="3319960944"></ins>
						<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
					</div>	
				</div>
				</div>								
				
															
				<%-- 
				<c:forEach var="publicacion" items="${publicaciones}" varStatus="status" >				
				<div class="span4 portfolio-item ${fn:replace(publicacion.clase1, " ", separadorClase)} ${fn:replace(publicacion.clase2, " ", separadorClase)}">
					<div class="picture">
					<a target="_blank" title="${publicacion.titulo}" onClick="ga('send', 'event', 'Venta', '${publicacion.url}', 'Extra');" href="/venta/extra/${publicacion.url}">
					<c:if test="${!empty publicacion.lImages }">
					<img src="${publicacion.lImages[0]}" alt="${publicacion.titulo}"/>
					</c:if>
					
					<div class="image-overlay-link"></div></a>
						<div class="item-description alt">
							<h5><a target="_blank" title="${publicacion.titulo}" onClick="ga('send', 'event', 'Venta', '${publicacion.url}', 'Extra');" href="/venta/extra/${publicacion.url}">${publicacion.titulo}</a>
							<p>
								${fn:replace(publicacion.resumen, newLineChar, "<p/><p>")}
							</p>
						</div>
						<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacion.fechaCreacion}"/></span><span style=""></div>
					</div>	
				</div>
				</c:forEach>
				--%>
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
	jQuery(document).ready(function($){
	    $('.iframe_wrap iframe').iframeTracker({
	        blurCallback: function(){
	            // You can know which iframe element is clicked via this._overId
	        	ga('send', 'event', 'Banner', 'Extras' , this._overId);
	        },
	        overCallback: function(element){
	            this._overId = $(element).parents('.iframe_wrap').attr('id'); // Saving the iframe wrapper id
	        },
	        outCallback: function(element){
	            this._overId = null; // Reset hover iframe wrapper id
	        },
	        _overId: null
	    });
	});
	
	jQuery(document).ready(function($){
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {		
			$("#extras1Mob").show();
			//$("#extras2Mob").show();
		}else{
			$("#extras1").show();
			//$("#extras2").show();
		}
	});
	</script>
	
</body>
</html>				