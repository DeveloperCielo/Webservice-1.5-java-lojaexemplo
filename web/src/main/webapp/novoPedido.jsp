<%@page import="br.com.cbmp.ecommerce.util.web.WebUtils"%>
<%@page import="br.com.cbmp.ecommerce.pedido.Pedido"%>
<%@page import="br.com.cbmp.ecommerce.resposta.Transacao"%>
<%@ page import="br.com.cbmp.ecommerce.contexto.Loja" %>
<%@ page errorPage="novoPedidoErro.jsp" %>

<%
	// solicita cria��o da transa��o
	Pedido pedido = new WebUtils(request).recuperarUltimoPedido();
	pedido.setLoja(new Loja(1006993069L,  "25fbb99741c739dd84d7b06ec78c9bac718838630f30b112d033ce2e621b34f3"));
	Transacao transacao = pedido.criarTransacao();
	
	// obt�m URL de redirecionamento
	String urlRedirecionamento;
	urlRedirecionamento = transacao.getUrlAutenticacao();
	
	
	if(urlRedirecionamento == null){
		urlRedirecionamento = new WebUtils(request).getUrlRetorno();
	}

	// redireciona o fluxo para a Cielo
	System.out.print("urlRedirecionamento: " + urlRedirecionamento);
	
	response.sendRedirect(urlRedirecionamento);
%>