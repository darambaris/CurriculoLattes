<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
   		<!-- informações gerais (campos de título, foto e resumo-cv) -->
   		<xsl:for-each select="CURRICULO">
   			<h1><xsl:value-of select="NOME"/></h1><br/>
   			<div>
				<div class="avatar">
					<img src="{AVATAR/@src}" />
				</div>
				<div class="resumo">
					<xsl:value-of select="RESUMO-CV"/>
					<b><small>Texto informado pelo autor.</small></b>
				</div>
				<br class="clearfix"/>
			</div><br /><br />	
		</xsl:for-each>	

		<!-- informações pessoais (identificação, endereço e ) -->
		<xsl:for-each select="CURRICULO/INFORMACOES-PESSOAIS">	
			<div class="info-pessoais">
				<!-- seção identificação -->
				<section>
					<h2>Identificação</h2>
					<table>
						<tr>
							<td><b>Nome:</b></td>
							<td><xsl:value-of select="IDENTIFICACAO/NOME" /> </td>
						</tr>
						<tr>
							<td><b>Citações Bibliográficas:</b></td>
							<td>
								<xsl:for-each select="IDENTIFICACAO/CITACAO-BIBLIOGRAFICA">
									<xsl:value-of select="." />; 
								</xsl:for-each>
							</td>
						</tr>	
					</table> 
				</section>	
				<br /><br />
				<!-- seção endereço --> 
				<section>
					<xsl:for-each select="ENDERECO">
						<xsl:choose>	
							<!-- para aparecer o endereço profissional -->
							<xsl:when test="boolean(@preferencia = 'profissional' or @preferencia='ambos')">
								<h2> Endereço Profissional</h2>
								<table>
									<tr>
										<td><b>Instituição:</b></td>
										<td><xsl:value-of select="ENDERECO-PROFISSIONAL/INSTITUICAO" /> </td>
									</tr>
									<tr>
										<td><b>Órgão:</b></td>
										<td><xsl:value-of select="ENDERECO-PROFISSIONAL/ORGAO" /> </td>
									</tr>
									<tr>
										<td><b>Logradouro:</b></td>
										<td><xsl:value-of select="ENDERECO-PROFISSIONAL/LOGRADOURO-COMPLETO" /> </td>
										<td><b>CEP:</b></td>
										<td><xsl:value-of select="ENDERECO-PROFISSIONAL/CEP" /> </td>
									</tr>
									<tr>
										<td><b>Bairro:</b></td>
										<td><xsl:value-of select="ENDERECO-PROFISSIONAL/BAIRRO"/> </td>
										<td><b>Cidade:</b></td>
										<td><xsl:value-of select="ENDERECO-PESSOAL/CIDADE"/> </td>
										<td><b>País:</b></td>
										<td><xsl:value-of select="ENDERECO-PROFISSIONAL/PAIS" /> </td>
									</tr>	
									<tr>
										<td><b>Telefone:</b></td>
										<td>(<xsl:value-of select="ENDERECO-PROFISSIONAL/TELEFONE/DDD" />)
											<xsl:value-of select="ENDERECO-PROFISSIONAL/TELEFONE/NUMERO" />
										</td>
									</tr>	
								</table>
								<br /><br />	
							</xsl:when>
						</xsl:choose>
						<xsl:choose>
							<!-- para aparecer o endereço pessoal -->
							<xsl:when test="boolean(@preferencia='pessoal' or @preferencia='ambos')">
								<h2> Endereço Pessoal</h2>
								<table>
									<tr>
										<td><b>Logradouro:</b></td>
										<td><xsl:value-of select="ENDERECO-PESSOAL/LOGRADOURO-COMPLETO" /> </td>
										<td><b>CEP:</b></td>
										<td><xsl:value-of select="ENDERECO-PESSOAL/CEP" /> </td>
									</tr>
									<tr>
										<td><b>Bairro:</b></td>
										<td><xsl:value-of select="ENDERECO-PESSOAL/BAIRRO" /> </td>
										<td><b>Cidade:</b></td>
										<td><xsl:value-of select="ENDERECO-PESSOAL/CIDADE" /> </td>
										<td><b>País:</b></td>
										<td><xsl:value-of select="ENDERECO-PESSOAL/PAIS" /> </td>
									</tr>	
									<tr>
										<td><b>Telefone:</b></td>
										<td>(<xsl:value-of select="ENDERECO-PESSOAL/TELEFONE/DDD" />)
											<xsl:value-of select="ENDERECO-PESSOAL/TELEFONE/NUMERO" />
										</td>
									</tr>	
								</table><br /><br />	
							</xsl:when>
						</xsl:choose>		
					</xsl:for-each>
				</section>	
   			</div>
   		</xsl:for-each>	
    </body> 
   </html>
</xsl:template>
</xsl:stylesheet>
