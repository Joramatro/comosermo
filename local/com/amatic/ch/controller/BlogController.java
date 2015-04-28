package com.amatic.ch.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.amatic.ch.constants.WebConstants;
import com.amatic.ch.dto.Publicacion;
import com.amatic.ch.utils.WebUtils;

@Controller
public class BlogController extends PublicacionAbstract {

    @RequestMapping(value = { "/blog" }, method = { RequestMethod.GET })
    public String getPublicaciones(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {

	setPublicaciones(model, WebConstants.SessionConstants.ARTICULO);

	return "blog";
    }

    @RequestMapping(value = { "/blog/{url}" }, method = RequestMethod.GET)
    public String cargarPublicacion2(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException {

	setPublicacion(url, request, model);

	return "articulo";
    }

    @RequestMapping(value = { "/blog/{url}/nuevoComentario" }, method = { RequestMethod.POST })
    public void guardarComentario2(ModelMap model,
	    @RequestParam("url") String url,
	    @RequestParam("nombre") String nombre,
	    @RequestParam("email") String email,
	    @RequestParam("puntos") String puntos,
	    @RequestParam("comentario") String comentario,
	    @RequestParam("web") String web,
	    @RequestParam("nbrComment") String nbrComment,
	    HttpServletRequest request, HttpServletResponse response)
	    throws Exception {

	guardarComentarioPub(request, url, nombre, email, puntos, comentario,
		web, nbrComment, response);

	response.sendRedirect("/blog/" + url);

    }

    @RequestMapping(value = { "/productos" }, method = { RequestMethod.GET })
    public String getAccesorios5(ModelMap model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {

	setPublicaciones(model, WebConstants.SessionConstants.ACCESORIO);

	return "extras";
    }

    @RequestMapping(value = { "/free/{url}" }, method = { RequestMethod.GET })
    public String getVenta(ModelMap model, @PathVariable String url,
	    HttpServletRequest request, HttpServletResponse response)
	    throws IOException, NoSuchAlgorithmException {

	String key = WebUtils.SHA1(url.replaceAll("-", " ").toLowerCase());
	/*
	 * Publicacion publicacion = null;
	 * 
	 * publicacion = publicacionService.getPublicacion(key,
	 * WebConstants.SessionConstants.ARTICULO);
	 * 
	 * if (publicacion == null) { publicacion =
	 * publicacionService.getPublicacion(key,
	 * WebConstants.SessionConstants.ACCESORIO); } if (publicacion == null)
	 * { publicacion = new Publicacion(); if (url.equals("logo1")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo1);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo1img); }
	 * else if (url.equals("logo2")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo2);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo2img); }
	 * else if (url.equals("logo3")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo3);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo3img); }
	 * else if (url.equals("logo4")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo4);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo4img); }
	 * else if (url.equals("logo5")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo5);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo5img); }
	 * else if (url.equals("logo6")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo6);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo6img); }
	 * else if (url.equals("logo7")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo7);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo7img); }
	 * else if (url.equals("logo8")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo8);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo8img); }
	 * else if (url.equals("logo9")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo9);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo9img); }
	 * else if (url.equals("logo10")) {
	 * publicacion.setScript(WebConstants.SessionConstants.logo10);
	 * publicacion.setScript2(WebConstants.SessionConstants.logo10img); }
	 * else { publicacion = null; } }
	 * 
	 * if (publicacion == null) { String uri = request.getRequestURI();
	 * throw new UnknownResourceException("No existe la ruta: " + uri); //
	 * return "channelNotFound"; }
	 */

	Publicacion publicacion = new Publicacion();
	publicacion
		.setScript("http://47bb84roqflk1y6gy2sg52n53v.hop.clickbank.net/?tid=HEADER");

	StringBuffer mensaje = new StringBuffer();
	Enumeration<String> headerNames = request.getHeaderNames();
	boolean existsAccept = false;
	boolean condition1 = false;
	boolean condition2 = false;
	boolean condition3 = false;
	while (headerNames.hasMoreElements()) {
	    String headerName = headerNames.nextElement();
	    if (headerName.equals("Accept")) {
		existsAccept = true;
	    }
	    mensaje.append(headerName);
	    String headerValue = request.getHeader(headerName);
	    if (headerName.equals("X-AppEngine-Country")
		    && headerValue.equals("US")) {
		condition1 = true;
	    }
	    if (headerName.equals("X-AppEngine-Region")
		    && headerValue.equals("?")) {
		condition2 = true;
	    }
	    if (headerName.equals("X-AppEngine-City")
		    && headerValue.equals("?")) {
		condition3 = true;
	    }
	    mensaje.append(", " + headerValue);
	    mensaje.append("\n");
	}
	mensaje.append("ip: " + WebUtils.getClienAddress(request) + "\n");
	if (condition1 && condition2 && condition3) {
	    mensaje.append("NO ENVIADO A VENTAS");
	    // Mail.sendMail(mensaje.toString(), "CEH " +
	    // request.getRequestURI());
	    return null;
	} else if (existsAccept) {
	    // Mail.sendMail(mensaje.toString(), "CSMG " +
	    // request.getRequestURI());
	    model.addAttribute("publicacion", publicacion);

	    return "venta/venta";
	} else {
	    mensaje.append("NO ENVIADO A VENTAS POR NO TENER ACCEPT");
	    // Mail.sendMail(mensaje.toString(), "CMH " +
	    // request.getRequestURI());

	    return null;
	}
    }

}
