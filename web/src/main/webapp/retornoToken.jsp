<%@page import="br.com.cbmp.ecommerce.resposta.Transacao.DadosToken"%>
<%@page import="br.com.cbmp.ecommerce.pedido.StatusTransacao"%>
<%@page import="br.com.cbmp.ecommerce.resposta.Transacao"%>
<%@page import="br.com.cbmp.ecommerce.pedido.Pedido"%>
<%@page import="br.com.cbmp.ecommerce.util.web.WebUtils"%>
<%@page import="java.util.Date"%>
<%@ page import="br.com.cbmp.ecommerce.resposta.RetornoToken" %>
<%
	Pedido pedido = new WebUtils(request).recuperarUltimoPedido();

	RetornoToken transacao = pedido.getRetornoToken();
	
	DadosToken dadosToken = transacao.getToken().getDadosToken();	
	
%>
<html>
	<head>
		<title>Cielo - Loja Exemplo</title>
	</head>
	<center>
		<h3>Fechamento (<%= new Date() %>)</h3>
		<table border="1">
			<tr>
				<th>C�d Token</th>
				<th>N� Cart�o</th>
				<th>Status</th>				
			</tr>
			<tr>
				<td><%= dadosToken.getCodigoToken() %></td>
				<td><%= dadosToken.getNumeroCartaoTruncado() %></td>
				<td><%= dadosToken.getStatus() %></td>
			</tr>			
		</table>				
		<h3>XML</h3>
		<textarea name="xmlRetorno" cols="80" rows="25">
<%= transacao.getConteudo() %>
		</textarea>
		
		<p><a href="menu.html">Menu</a></p>
		<p><a href="pedidos.jsp">Pedidos</a></p>
	</center>
</html>
