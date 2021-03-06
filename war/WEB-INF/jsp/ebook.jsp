<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

	<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>
	
	<!-- start: Page Title -->
	<div id="page-title">

		<div id="page-title-inner">

			<!-- start: Container -->
			<div class="container">

				<h1 id="_name2" itemprop="name"><i class="ico-fire ico-white"></i>${publicacion.titulo}</h1>

			</div>
			<!-- end: Container  -->

		</div>	

	</div>
	<!-- end: Page Title -->
	
	<!--start: Wrapper -->
	<div itemscope itemtype="http://schema.org/Article" itemref="_author3 _datePublished5 _image6 _articleBody7 _publisher8 _aggregateRating9" id="wrapper">
		<div style="display:none"><span  itemprop="url">http://www.comprarmicroondashoy.com/microondas/${publicacion.url}</span></div>		
		<!--start: Container -->
    	<div class="container">
	
			<!-- start: Flexslider -->
			<div style="width: 440px;height: 320px; margin-left: 280px;" class="slider" >
				<div id="flex1" style="margin-top:80px" class="flexslider home">
					<c:if test="${publicacion.script ne '#' }">
						<a target="_blank" href="/venta/principal/${publicacion.url}">
					</c:if>
					<ul class="slides">
						<c:forEach var="imagen" items="${publicacion.lImages}" varStatus="status">
						<c:if test="${status.count ne 3}">
							<li>
								<img style="width: 420px;height: 280px;" src="${imagen}"  alt="${publicacion.titulo}" />
								<c:if test="${status.count < 2}">
									<div class="slide-caption n">
										<h3>${publicacion.titulo2}</h3>
									</div>
								</c:if>
							</li>
						</c:if>
						</c:forEach>
					</ul>
					</a>
				</div>
			</div>
			<!-- end: Flexslider -->

			<hr>
			
			<% pageContext.setAttribute("newLineChar", "\n"); %>
			<!-- start: Row -->
			<div class="row">
				
				<div class="span2">					
					<ul class="project-info" style="font-size: 12px;">
						<li><strong>Número visitas&nbsp;</strong>&nbsp;  ${publicacion.numVisitas}</li>
						<c:if test="${publicacion.sumaPuntos gt 0 }">
							<div>
								<li><strong>Puntos&nbsp;</strong>&nbsp; 
								<a href="#comments"><b><span>${publicacion.sumaPuntos}</span></b></a>
								&nbsp;&nbsp;(de <span>${publicacion.votantes}</span> votantes)</li>								
							</div> 
						</c:if>
						
						<li><strong>Autor&nbsp;</strong>&nbsp; <a target="_blank" href="${publicacion.googleAutor}" rel=”author”><span id="_author3" itemprop="author" itemscope itemtype="http://schema.org/Person">
						<span itemprop="name">${publicacion.autor}</span></span></a></li>
					</ul>					
				</div>				
				<div class="span10">
					<meta id="_articleBody7" itemprop="articleBody" content="${fn:replace(publicacion.articulo, "\"", "'")}">
					${publicacion.articulo}				
					<br>
					<c:if test="${publicacion.disponible ne 'N'}">
						<br><h2><a href="/venta/principal/${publicacion.url}" class="button color launch">Cómpralo Hoy!</a></h2>
					</c:if>					
					<br>
					<!-- AddThis Button BEGIN -->
					<div class="addthis_toolbox addthis_default_style ">
					<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
					<a class="addthis_button_tweet"></a>
					<a class="addthis_button_pinterest_pinit"></a>
					<a class="addthis_counter addthis_pill_style"></a>&nbsp;&nbsp;
					<g:plusone href="/microondas/${publicacion.url}" align="right" size="medium"></g:plusone>
					</div>
					<script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
					<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-523eb37018889803"></script>
					<!-- AddThis Button END -->
					<!-- Botón +1. -->
					<script type="text/javascript">
					  (function() {
					    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
					    po.src = 'https://apis.google.com/js/plusone.js';
					    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
					  })();
					</script> 
					
					<br><br>
					<p style="font-style: italic;">Por favor, no dudes en puntuar y comentar tu opinión para aportar más detalles sobre el producto en la sección de <a href="#comments">comentarios</a></p>
				</div>	
				
			</div>
			<!-- end: Row -->
			
			
			<hr><hr>
			
				<!-- start: Row -->
      		<div class="row">
	
				<div class="span9">
					
					<div class="title"><h3>También te puede interesar...</h3></div>
					
					<!-- start: Row -->
		      		<div class="row">
						<c:forEach var="publicacionRel" items="${publicaciones}" varStatus="status" end="2">	
						<div class="span3">	
							<div class="picture">
								<a href="/microondas/${publicacionRel.url}" title="${publicacionRel.titulo}">
									<c:if test="${!empty publicacionRel.lImages }">
									<img style="width: 270px;height: 200px;" src="${publicacionRel.lImages[0]}" alt="${publicacionRel.titulo}"/>
									</c:if>
									<div class="image-overlay-link"></div>
								</a>
							</div>
							<div class="item-description">
								<h4><a href="/microondas/${publicacionRel.url}">${publicacionRel.titulo}</a></h4>
								<p>
									${fn:replace(publicacionRel.descripcion, newLineChar, "</p><p>")}
								</p>
							</div>					
        				</div>
        				</c:forEach>					
					</div>
				</div>
				<div class="span3">
					
					<!-- start: Testimonials-->

					<div class="testimonial-container">

						<div class="title"><h3>Últimos Comentarios</h3></div>

							<div itemscope itemtype="http://data-vocabulary.org/Review" class="testimonials-carousel" data-autorotate="3000">

								<ul class="carousel">
									<c:forEach var="comentario" items="${comentarios}" varStatus="status" >	
									<li class="testimonial">
										<div class="testimonials"><span itemprop="summary">${fn:substring(comentario.comentario, 0, 400)}
										<c:if test="${fn:length(comentario.comentario)>400}">
										...
										</c:if></span>
										</div>
										<div class="testimonials-bg"></div>
										<c:choose>
										<c:when test="${comentario.publicacion.tipo eq 'EB' }">
											<div class="testimonials-author"><span itemprop="reviewer">${comentario.nombre}</span>, en <a href="/microondas/${comentario.publicacion.url }"><span itemprop="itemreviewed">${comentario.publicacion.titulo}</span></a></div>
										</c:when>	
										<c:otherwise>
											<div class="testimonials-author"><span itemprop="reviewer">${comentario.nombre}</span>, en <a href="/blog/${comentario.publicacion.url }"><span itemprop="itemreviewed">${comentario.publicacion.titulo}</span></a></div>
										</c:otherwise>
										</c:choose>
										<div style="display:none">
											<c:if test="${comentario.puntos gt 0}">
												<span itemprop="rating">${comentario.puntos}</span>
												<span itemprop="best">5</span>
											</c:if>
											<time itemprop="dtreviewed" datetime="<fmt:setLocale value='es_ES' scope='session'/><fmt:formatDate type='date' dateStyle='short' value='${comentario.fecha}'/>"><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="both" dateStyle="medium" timeStyle="short" value="${comentario.fecha}"/></time>
										</div>
									</li>
									</c:forEach>
								</ul>

							</div>

						</div>

					<!-- end: Testimonials-->
					
        		</div>
			</div>
			
			<hr><hr>
			
			<%@ include file="/WEB-INF/jsp/includes/masleidos.jsp"%>
			
			
			<div class="row" style="margin-top: 35px;">			
				<div class="span9">
				<!-- start: Comments -->
				 <h4>Comentarios <span class="comments-amount">(${fn:length(publicacion.lComentarios)})</span></h4>
							
				<c:choose>
				<c:when test="${publicacion.votantes gt 0}">
					<div itemscope itemtype="http://data-vocabulary.org/Review-aggregate" id="comments" class="comments-sec">
						<div style="display:none"><span  itemprop="itemreviewed">${publicacion.titulo}</span><span itemprop="count">${publicacion.votantes}</span><span itemprop="best">5</span></div>
						<ol class="commentlist">
						<c:forEach var="comentario" items="${publicacion.comentariosDeref}" varStatus="status">
							<li style="width: 100%;">
								<div class="comments">
									<div class="avatar">
									<c:choose>
									<c:when test="${empty comentario.gravatar }">
									<img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> 
									</c:when>
									<c:otherwise>
									<img src="${comentario.gravatar}" alt="" width="50" height="50" border="0" />
									</c:otherwise>
									</c:choose>
									</div>
									<div class="comment-des">
										<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >#${status.count}</a>
										<div class="comment-by">
										<c:choose>
										<c:when test="${empty comentario.web}">
										<strong><span itemprop="reviewer">${comentario.nombre}</span></strong>
										</c:when>
										<c:otherwise>
										<a rel="nofollow" href="http://${comentario.web}"><strong>${comentario.nombre}</strong></a>
										</c:otherwise>
										</c:choose>
										 <span class="reply"><span style="color:#aaa"><c:if test="${comentario.puntos gt 0}">/ </span><b>&nbsp;<span itemprop="rating">${comentario.puntos}</span></b> puntos</c:if></span><span class="date"><time itemprop="dtreviewed" datetime="<fmt:setLocale value='es_ES' scope='session'/><fmt:formatDate type='date' dateStyle='short' value='${comentario.fecha}'/>"><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="both" dateStyle="medium" timeStyle="short" value="${comentario.fecha}"/></time></span></div>
										<p>
										<c:if test="${!empty comentario.comentarioReply}">
											<span style="color:#0088cc;">@${comentario.comentarioReplyNombre} &nbsp;</span><a onmouseover="document.getElementById('comment_ref_${status.count}').style.display='block'" onmouseout="document.getElementById('comment_ref_${status.count}').style.display='none';" onclick="document.getElementById('comment_ref_${status.count}').style.display='none';" class="ancla_referencia">#${comentario.comentarioReplyNbr}<span class="referencia" id="comment_ref_${status.count}" style="display:none;font-size: 13px;">${comentario.comentarioReply}</span></a> &nbsp;
										</c:if>
										
										<span itemprop="description">${fn:replace(comentario.comentario, newLineChar, "<br>")}</span>
										</p>
									</div>
								</div>		
							</li>						
						</c:forEach>
						</ol>
		
					</div>
				</c:when>
				<c:otherwise>
					<div id="comments" class="comments-sec">
						<ol class="commentlist">
						<c:forEach var="comentario" items="${publicacion.comentariosDeref}" varStatus="status">
							<li style="width: 100%;">
								<div class="comments">
									<div class="avatar">
									<c:choose>
									<c:when test="${empty comentario.gravatar }">
									<img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> 
									</c:when>
									<c:otherwise>
									<img src="${comentario.gravatar}" alt="" width="50" height="50" border="0" />
									</c:otherwise>
									</c:choose>
									</div>
									<div class="comment-des">
										<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >#${status.count}</a>
										<div class="comment-by">
										<c:choose>
										<c:when test="${empty comentario.web}">
										<strong><span>${comentario.nombre}</span></strong>
										</c:when>
										<c:otherwise>
										<a rel="nofollow" href="http://${comentario.web}"><strong>${comentario.nombre}</strong></a>
										</c:otherwise>
										</c:choose>
										 <span class="reply"><span style="color:#aaa"><c:if test="${comentario.puntos gt 0}">/ </span><b>&nbsp;<span>${comentario.puntos}</span></b> puntos</c:if></span><span class="date"><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="both" dateStyle="medium" timeStyle="short" value="${comentario.fecha}"/></span></div>
										<p>
										<c:if test="${!empty comentario.comentarioReply}">
											<span style="color:#0088cc;">@${comentario.comentarioReplyNombre} &nbsp;</span><a onmouseover="document.getElementById('comment_ref_${status.count}').style.display='block'" onmouseout="document.getElementById('comment_ref_${status.count}').style.display='none';" onclick="document.getElementById('comment_ref_${status.count}').style.display='none';" class="ancla_referencia">#${comentario.comentarioReplyNbr}<span class="referencia" id="comment_ref_${status.count}" style="display:none;font-size: 13px;">${comentario.comentarioReply}</span></a> &nbsp;
										</c:if>
										
										<span>${fn:replace(comentario.comentario, newLineChar, "<br>")}</span>
										</p>
									</div>
								</div>		
							</li>						
						</c:forEach>
						</ol>
		
					</div>
				</c:otherwise>
				</c:choose>
					<!-- end: Comments -->
				<div class="clear" style="padding-top: 35px;"></div>

				<!-- start: Comment Add -->
				<h4>Deja un comentario</h4>
				<div class="form-spacer"></div>
				
				<!-- Form -->
				<div id="comments-form">
					<form action="/microondas/${publicacion.url}/nuevoComentario" id="formComment" method="post">
						<input id="nbrComment" name="nbrComment" type="hidden"/>
						<div class="field">
							<label>Nombre: <span>*</span></label>
							<input id="comNombre" type="text" name="nombre" maxlength="30" class="text" />
						</div>

						<div class="field">
							<label>Email: (No será publicado) <span>*</span></label>
							<input id="comEmail" type="text" name="email" maxlength="40" class="text" />
						</div>
						
						<div class="field">
							<label>Web: </label>
							<input type="text" name="web" class="text" maxlength="90" />
						</div>							
						
						<div class="field">
							<label>Dar Puntos: </label>
							<select name="puntos" style="width: 9%;" title="Por favor, valora (5 lo mejor) este producto">
							  <option value="5">5</option>
							  <option value="4">4</option>
							  <option value="3">3</option>
							  <option value="2">2</option>
							  <option value="1">1</option>
							  <option value="0">No puntuar</option>
							</select>
						</div>

						<div class="field">
							<label>Comentario: <span>*</span></label>
							<textarea id="comComentario" name="comentario" class="text textarea" ></textarea>
						</div>
						
						<label>El comentario puede tardar unos instantes en aparecer publicado una vez enviado</label>
						
						<div class="field">
						<br>
							<input type="button" id="send" value="Enviar" onclick="if(validarComentarios()){this.form.submit()}"/>
						</div>
						<input name="url" type="hidden" value="${publicacion.url}"/>

					</form>
					
				</div>		

					<!-- end: Comment Add -->
			</div>
		</div>		
					
							
					<br><br>					
				<%--<div class="title"><h3>También te puede interesar...</h3></div>					
			
    				 <div class="container">
    					<div id="portfolio-wrapper" class="row">
						<c:forEach var="publicacionRel" items="${publicaciones}" varStatus="status" end="6">
							<c:if test="${publicacionRel.titulo ne publicacion.titulo }">				
							<div class="span4 portfolio-item nature people">
								<div class="picture"><a href="/microondas/${publicacionRel.url}" title="${publicacionRel.titulo}">
								<c:if test="${!empty publicacionRel.lImages }">
									<img src="${publicacionRel.lImages[0]}" alt="Detalle"/>
								</c:if>
								<div class="image-overlay-link"></div></a>
									<div class="item-description alt">
										<h5><a title="${publicacionRel.titulo}" href="/microondas/${publicacionRel.url}">${publicacionRel.titulo}</a></h5>
										<p>
											${fn:replace(publicacionRel.resumen, newLineChar, "</p><p>")}
										</p>
									</div>
									<div class="post-meta"><span><i class="mini-ico-calendar"></i><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="date" dateStyle="long" value="${publicacionRel.fechaCreacion}"/></span><span style="visibility:hidden"><i class="mini-ico-user"></i>  <a href="#">Jorge Amat</a></span> <span><i class="mini-ico-comment"></i><a href="#">${fn:length(publicacionRel.lComentarios)} comments</a></span></div>
								</div>	
							</div>
							</c:if>
						</c:forEach>
						</div>
					</div>--%>			
								
							
		</div>
		<!-- end: Container  -->
	
	</div>
	<!-- end: Wrapper -->		
	
	<%@ include file="/WEB-INF/jsp/includes/footer.jsp"%>

	<div id="banGoogle" class="iframe_wrap" style="position: absolute;top: 270px;right: 40px;">
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
	<script>
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$("#banGoogle").hide();
		}
		if($('#footer').width() < 1345){
			$("#banGoogle").hide();
		}
	</script>
	<div id="banAmazonHorizontal" class="iframe_wrap" style="position: absolute;top: 1000px;left: 54px;">
		<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?t=comprarmicroh-21&o=30&p=14&l=ur1&category=hogar&banner=1ESFST6P8W0JNG6Z4G02&f=ifr" width="160" height="600" scrolling="no" border="0" marginwidth="0" style="border:none;" frameborder="0"></iframe>
	</div>
	<script>
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$("#banAmazonHorizontal").hide();
		}
		if($('#footer').width() < 1079){
			$("#banAmazonHorizontal").hide();
		}
	</script>
	
	<div id="banAmazonEsquina" class="iframe_wrap" style="position: absolute;top: 155px;left: 393px;">
		<iframe src="http://rcm-eu.amazon-adsystem.com/e/cm?t=comprarmicroh-21&o=30&p=13&l=ur1&category=hogar&banner=1GW6MNKWMET3XVJB7302&f=ifr" width="468" height="60" scrolling="no" border="0" marginwidth="0" style="border:none;" frameborder="0"></iframe>
	</div>
	<script>
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$("#banAmazonEsquina").hide();
			$(".slide-caption").hide();
		}
		if($('#footer').width() < 1345){
			$("#banAmazonEsquina").hide();
			$(".slide-caption").hide();
		}
	</script>
	<script>
	$(window).bind('resize', function () { 
		if($('#footer').width() < 1345){
			$("#banGoogle").hide();
		}else{
			$("#banGoogle").show();
		}
		if($('#footer').width() < 1079){
			$("#banAmazonHorizontal").hide();
		}else{
			$("#banAmazonHorizontal").show();
		}
		if($('#footer').width() < 1345){
			$("#banAmazonEsquina").hide();
			$(".slide-caption").hide();
		}else{
			$("#banAmazonEsquina").show();
			$(".slide-caption").show();
		}
	});
	</script>
	<script>
	jQuery(document).ready(function($){
	    $('.iframe_wrap iframe').iframeTracker({
	        blurCallback: function(){
	            // You can know which iframe element is clicked via this._overId
	        	ga('send', 'event', 'Banner', '${publicacion.url}' , this._overId);
	        },
	        overCallback: function(element){
	            this._overId = $(element).parents('.iframe_wrap').attr('id'); // Saving the iframe wrapper id
	        },
	        outCallback: function(element){
	            this._overId = null; // Reset hover iframe wrapper id
	        },
	        _overId: null
	    });
	    
	    $('#_image6').click(function() {
	    	ga('send', 'event', 'Venta', '${publicacion.url}', 'Imagen Medio');  
	    });
	});
	</script>	

</body>
</html>