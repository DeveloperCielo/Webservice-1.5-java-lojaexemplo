<%@page import="br.com.cbmp.ecommerce.pedido.Produto"%>
<%@page import="br.com.cbmp.ecommerce.util.Produtos"%>
<%@page import="br.com.cbmp.ecommerce.pedido.IndicadorAutorizacao"%>
<%@page import="br.com.cbmp.ecommerce.pedido.Modalidade"%>
<html>
	<head>
		<title>Loja Exemplo : Cria��o de Token</title>
	</head>
	<center>
		<h2>
			Token
		</h2>
		<form name="frm" action="criandoToken.jsp" method="post">
			<table border="1">
				<tr>
					<td>Cart�o</td>
					<td>
						<table border="0">
							<tr>
								<td>N�mero</td>
								<td><input type="text" name="cartao.numero" value="4012001038443335"></td>
							</tr>
							<tr>
								<td>Validade (jun/2010 = 201006)</td>
								<td><input type="text" name="cartao.validade" value="201805"></td>
							</tr>
							<tr>
								<td>C�d. Seguran�a</td>
								<td><input type="text" name="cartao.codigoSeguranca" value="123"></td>
							</tr>
							<tr>
								<td>Nome Portador</td>
								<td><input type="text" name="cartao.nomePortador" value="FULANO DA SILVA"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="Criar"/>
					</td>
				</tr>
			</table>
		</form>
		<a href="menu.html">Menu</a>
	</center>
</html>