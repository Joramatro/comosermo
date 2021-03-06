<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="es">

	<%@ include file="/WEB-INF/jsp/includes/header.jsp"%>

	<div id="banAmazonHorizontal" style="position: absolute;top: 1400px;left: 54px;">
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
	<div itemscope itemtype="http://schema.org/Article" id="wrapper">
		<link  itemprop="url" href="http://www.comosermasguapo.com/blog/${publicacion.url}" />		
		<!--start: Container -->
    	<div class="container">
    	
    		<% 
				int port = request.getServerPort();
				StringBuilder result = new StringBuilder();
				result.append(request.getScheme())
				      .append("://")
				      .append(request.getServerName());
				
				if (port != 80) {
				  result.append(':')
				        .append(port);
				}
				
				pageContext.setAttribute("separador", "-");
			%>
			<div>
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- interior1r -->
						<ins class="adsbygoogle"
						     style="display:block"
						     data-ad-client="ca-pub-3168560600423825"
						     data-ad-slot="9603133345"
						     data-ad-format="rectangle"></ins>
						<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
			</div>
			<br>
    		<ul class="breadcrumbs"><li class="home" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a name="header.breadcrumb.1" href="<%=result.toString()%>" itemprop="url" title="Página principal"><span itemprop="title">Página principal</span></a></li>
				<li class="crumb0" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.2" href="<%=result.toString()%>/blog" itemprop="url" title="Salud y Belleza"><span itemprop="title">Salud y Belleza</span></a></li>
				<li class="crumb1" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.3" href="<%=result.toString()%>/blog?filtro=${fn:replace(publicacion.clase1, " ", separador)}" itemprop="url" title="${publicacion.clase1}"><span itemprop="title">${publicacion.clase1}</span></a></li>
				<c:if test="${not empty publicacion.clase2}">
					<li class="crumb2" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.4" href="<%=result.toString()%>/blog?filtro=${fn:replace(publicacion.clase2, " ", separador)}" itemprop="url" title="${publicacion.clase2}"><span itemprop="title">${publicacion.clase2}</span></a></li>				
				</c:if>
				<c:if test="${not empty publicacion.clase3}">
					<li class="crumbPrecio" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><span>&nbsp;&gt;&nbsp;</span><a name="header.breadcrumb.precio" href="<%=result.toString()%>/blog?filtroPrecio=${fn:replace(publicacion.clase3, " ", separador)}" itemprop="url" title="${publicacion.clase3}"><span itemprop="title">${publicacion.clase3}</span></a></li>				
				</c:if>
				<li class="crumbFinal"><span>&nbsp;&gt;&nbsp;</span>${publicacion.titulo}</li>
			</ul>     	
    		<br>
				
			<!-- start: Flexslider -->
			<div style="max-width: 512px;height: 325px; margin: 0 auto;" class="slider" >
				<div id="flex1" class="flexslider home">
					<ul class="slides">
						<c:forEach var="imagen" items="${publicacion.lImages}" varStatus="status">
						<c:if test="${status.count ne 3}">
							<li>
								<img style="width: 420px;height: 300px;" src="${imagen}"/>
							</li>
						</c:if>
						</c:forEach>
						<div class="slide-caption n">
							<h3>${publicacion.titulo2}</h3>
						</div>
					</ul>
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
							<strong>Media&nbsp;</strong>&nbsp;&nbsp;<div class="rateit" data-rateit-value="${publicacion.sumaPuntos div publicacion.votantes}" data-rateit-ispreset="true" data-rateit-readonly="true" title="<fmt:formatNumber type="number" minFractionDigits="2" maxFractionDigits="2" value="${publicacion.sumaPuntos div publicacion.votantes}" /> / 5"></div> 
						</c:if>
						
						<li><strong>Autor&nbsp;</strong>&nbsp; <a target="_blank" href="https://twitter.com/comosermasguapo" rel=”author”><span id="_author3" itemprop="author" itemscope itemtype="http://schema.org/Person">
						<span itemprop="name">Yago Fierro</span></span></a></li>
					</ul>
					<div>
					<br>
					<div id="linkunitmenu" style="display:none">
						<%-- <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
						<!-- link units article info -->
						<ins class="adsbygoogle"
						     style="display:inline-block;width:160px;height:90px"
						     data-ad-client="ca-pub-3168560600423825"
						     data-ad-slot="7729588940"></ins>
						<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
						</script>
						--%>
					</div>
					</div>					
				</div>
				<div id="linkunittop" style="margin-left:225px">
				<%-- <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- csmg link units top -->
				<ins class="adsbygoogle"
				     style="display:inline-block;width:728px;height:15px"
				     data-ad-client="ca-pub-3168560600423825"
				     data-ad-slot="4776122546"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>--%>
				</div>
				<%--<br>--%>				
				<div class="span10">				
					<!-- Go to www.addthis.com/dashboard to customize your tools -->
					<div class="addthis_native_toolbox"></div>
					<br>
					
					<div id="art1">
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
					<br>
					<br>
																				
					<div id="content" itemprop="articleBody">
					${publicacion.articulo}
					</div>
					<br>
					
					<br>
					<%-- <h2><a target="_blank" href="/free/${publicacion.url}" onClick="ga('send', 'event', 'Venta', '${publicacion.url}', 'Btn Art Down');" class="button color launch">¡Consigue ya unos abdominales perfectos!</a></h2> --%>					
					<div>
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- links -->
					<ins class="adsbygoogle"
					     style="display:block"
					     data-ad-client="ca-pub-3168560600423825"
					     data-ad-slot="2940567746"
					     data-ad-format="link"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
					</div>
					<br><br>
					<!-- Go to www.addthis.com/dashboard to customize your tools -->
					<div class="addthis_native_toolbox"></div>
					
					<br><br>
					<p style="font-style: italic;">Por favor, no dudes en puntuar y comentar tu opinión sobre este artículo en la sección de <a href="#comments">comentarios</a>. Gracias!</p>
					
					<%-- <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- link units end article -->
					<ins class="adsbygoogle"
					     style="display:inline-block;width:468px;height:15px"
					     data-ad-client="ca-pub-3168560600423825"
					     data-ad-slot="3159788548"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>--%>
					
				</div>	
				<div id="banGoogleFinArticulo" class="iframe_wrap" style="width: 64%; margin:0 auto;">
				
				<%--
					<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- fin articulo skyscraper csmg -->
					<ins class="adsbygoogle"
					     style="display:inline-block;width:728px;height:90px"
					     data-ad-client="ca-pub-3168560600423825"
					     data-ad-slot="1703626944"></ins>
					<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				--%>				
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
								<a href="/blog/${publicacionRel.url}" title="${publicacionRel.titulo}">
									<c:if test="${!empty publicacionRel.lImages }">
									<img style="width: 270px;height: 200px;" class="lazy" data-original="${publicacionRel.lImages[0]}" alt="${publicacionRel.titulo}"/>
									</c:if>
									<div class="image-overlay-link"></div>
								</a>
							</div>
							<div class="item-description">
								<h4><a title="${publicacionRel.titulo}" href="/blog/${publicacionRel.url}">${publicacionRel.titulo}</a></h4>
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
											<div class="testimonials-author"><span itemprop="reviewer">${comentario.nombre}</span>, en <a title="${comentario.publicacion.titulo}" href="/blog/${comentario.publicacion.url }"><span itemprop="itemreviewed">${comentario.publicacion.titulo}</span></a></div>
										</c:when>	
										<c:otherwise>
											<div class="testimonials-author"><span itemprop="reviewer">${comentario.nombre}</span>, en <a title="${comentario.publicacion.titulo}" href="/blog/${comentario.publicacion.url }"><span itemprop="itemreviewed">${comentario.publicacion.titulo}</span></a></div>
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
						<meta itemprop="itemreviewed" content="${publicacion.titulo}" />
						<meta itemprop="count" content="${publicacion.votantes}" />
						<meta itemprop="rating" content="${publicacion.sumaPuntos div publicacion.votantes}" />												
						<ol class="commentlist">
						<c:forEach var="comentario" items="${publicacion.comentariosDeref}" varStatus="status">
							<li style="width: 100%;padding-bottom:6px">
								<div class="comments">
									<div class="avatar">
									<c:choose>
									<c:when test="${empty comentario.gravatar }">
									<img class="lazy" data-original="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> 
									</c:when>
									<c:otherwise>
									<img class="lazy" data-original="${comentario.gravatar}" alt="" width="50" height="50" border="0" />
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
										 <span class="reply"><span style="color:#aaa"><c:if test="${comentario.puntos gt 0}">/ </span><b>&nbsp;<span>${comentario.puntos}</span></b> puntos</c:if></span><span class="date"><time itemprop="dtreviewed" datetime="<fmt:setLocale value='es_ES' scope='session'/><fmt:formatDate type='date' dateStyle='short' value='${comentario.fecha}'/>"><fmt:setLocale value="es_ES" scope="session"/><fmt:formatDate type="both" dateStyle="medium" timeStyle="short" value="${comentario.fecha}"/></time></span></div>
										<p>
										<c:if test="${!empty comentario.comentarioReply}">
											<span style="color:#0088cc;">@${comentario.comentarioReplyNombre} &nbsp;</span><a style="display:inherit" onmouseover="document.getElementById('comment_ref_${status.count}').style.display='block'" onmouseout="document.getElementById('comment_ref_${status.count}').style.display='none';" onclick="document.getElementById('comment_ref_${status.count}').style.display='none';" class="ancla_referencia">#${comentario.comentarioReplyNbr}<span class="referencia" id="comment_ref_${status.count}" style="display:none;font-size: 13px;">${comentario.comentarioReply}</span></a> &nbsp;
										</c:if>
										
										<span itemprop="description">${fn:replace(comentario.comentario, newLineChar, "<br>")}</span>
										</p>
										<div style="clear: both;padding-top: 10px;padding-bottom: 10px;">
											<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >Responder</a>
										</div>
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
							<li style="width: 100%;padding-bottom:6px">
								<div class="comments">
									<div class="avatar">
									<c:choose>
									<c:when test="${empty comentario.gravatar }">
									<img class="lazy" data-original="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=50" alt="" width="50" height="50" border="0" /> 
									</c:when>
									<c:otherwise>
									<img class="lazy" data-original="${comentario.gravatar}" alt="" width="50" height="50" border="0" />
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
											<span style="color:#0088cc;">@${comentario.comentarioReplyNombre} &nbsp;</span><a style="display:inherit" onmouseover="document.getElementById('comment_ref_${status.count}').style.display='block'" onmouseout="document.getElementById('comment_ref_${status.count}').style.display='none';" onclick="document.getElementById('comment_ref_${status.count}').style.display='none';" class="ancla_referencia">#${comentario.comentarioReplyNbr}<span class="referencia" id="comment_ref_${status.count}" style="display:none;font-size: 13px;">${comentario.comentarioReply}</span></a> &nbsp;
										</c:if>
										
										<span>${fn:replace(comentario.comentario, newLineChar, "<br>")}</span>
										</p>
										<div style="clear: both;padding-top: 10px;padding-bottom: 10px;">
											<a title="Responder mensaje citando" href="#comments-form" onclick="javascript:replyComment('${status.count}');" style="font-size:14px;" >Responder</a>
										</div>
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
					<form action="/blog/${publicacion.url}/nuevoComentario" id="formComment" method="post">
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
								<div class="picture"><a href="/blog/${publicacionRel.url}" title="${publicacionRel.titulo}">
								<c:if test="${!empty publicacionRel.lImages }">
									<img src="${publicacionRel.lImages[0]}" alt="Detalle"/>
								</c:if>
								<div class="image-overlay-link"></div></a>
									<div class="item-description alt">
										<h5><a title="${publicacionRel.titulo}" href="/blog/${publicacionRel.url}">${publicacionRel.titulo}</a></h5>
										<p>
											${fn:replace(publicacionRel.resumen, newLineChar, "<p/><p>")}
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

	<script>
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$("#banAmazonHorizontal").hide();
		}
		if($('#footer').width() < 1079){
			$("#banAmazonHorizontal").hide();
		}
	</script>
	
	<div id="banAmazonEsquina" style="position: absolute;top: 155px; left: 393px;">
		<%-- <a onClick="ga('send', 'event', 'Banner', '${publicacion.url}', 'banAmazonEsquina');" href="http://es.phieropremium.net/?utm_source=aff_524cc124259d9&utm_medium=banner&utm_campaign=shop&utm_nooverride=1&amp;a_aid=524cc124259d9&amp;a_bid=33bc4172" target="_top"><img src="http://www.naturalrevenue.com/affiliate/accounts/default1/banners/33bc4172.gif" alt="" title="" width="468" height="60" /></a><img style="border:0" src="http://www.naturalrevenue.com/affiliate/scripts/imp.php?a_aid=524cc124259d9&amp;a_bid=33bc4172" width="1" height="1" alt="" />	--%></div>
	<script>
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$(".imageContextual").css("margin-left", "0px");
			$("#banAmazonEsquina").hide();
			$(".slide-caption").hide();
			$("#_image6").css("margin-left", "0px");
		}
		if($('#footer').width() < 1345){
			$("#banAmazonEsquina").hide();
			$(".slide-caption").hide();
			$("#linkunittop").hide();
		}
	</script>
	<script>
	$(window).bind('resize', function () { 
		if($('#footer').width() < 1079){
			$("#banAmazonHorizontal").hide();
		}else{
			$("#banAmazonHorizontal").show();
		}
		if($('#footer').width() < 1345){
			$("#banAmazonEsquina").hide();
			$(".slide-caption").hide();
			$("#linkunittop").hide();
		}else{
			$("#banAmazonEsquina").show();
			$(".slide-caption").show();
			$("#linkunittop").show();
		}
	});
	</script>
	<script>
	jQuery(document).ready(function($){
	    
	    $('#_image6').click(function() {
	    	ga('send', 'event', 'Venta', '${publicacion.url}', 'Imagen Medio');  
	    });
	    $('#imageContextual').click(function() {
	    	ga('send', 'event', 'Venta', '${publicacion.url}', 'Imagen');  
	    });
	});
	
	</script>
	
	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5213a7af197d855e" async="async"></script>	
	
</body>
</html>