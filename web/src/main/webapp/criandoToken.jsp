<%@page import="java.util.Date"%>
<%@page import="br.com.cbmp.ecommerce.pedido.Pedido"%>
<%@page import="br.com.cbmp.ecommerce.resposta.Transacao"%>
<%@page import="br.com.cbmp.ecommerce.util.web.WebUtils"%>
<%@ page import="br.com.cbmp.ecommerce.contexto.Loja" %>
<%@ page import="br.com.cbmp.ecommerce.resposta.RetornoToken" %>
<%@ page errorPage="novoPedidoErro.jsp" %>

<%
	WebUtils webUtils = new WebUtils(request);
	Pedido pedido = webUtils.criarRequisicaoToken();
	pedido.setLoja(new Loja(1006993069L,  "25fbb99741c739dd84d7b06ec78c9bac718838630f30b112d033ce2e621b34f3"));
	
	RetornoToken retornoToken = (RetornoToken) pedido.criarToken();
 
	getServletConfig().getServletContext().getRequestDispatcher("/retornoToken.jsp").forward(request, response);
%>