<?xml version="1.0" encoding="UTF-8"?>
<!-- *************************************************************************************
Nome: Jéssika Darambaris Oliveira No: 7961026
Nome: Vitor P. Ribeiro No: 7961005

Arquivo: inf_pessoal.xsl
Descricao: XSL responsável por transformar a seção "INFORMACOES-PESSOAIS" do XML
************************************************************************************** -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:inf="http://www.multimidia-lattes.com/lattes">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
   		<!-- informações gerais (campos de título, foto e resumo-cv) -->
   		<xsl:for-each select="inf:CURRICULO">
   			<h1><xsl:value-of select="inf:NOME"/></h1><br/>
   			<div>
				<div class="avatar">
					<img src="{inf:AVATAR/@src}" />
				</div>
				<div class="resumo">
					<xsl:value-of select="inf:RESUMO-CV"/>
					<b><small>Texto informado pelo autor.</small></b>
				</div>
				<br class="clearfix"/>
			</div><br /><br />	
		</xsl:for-each>	

		<!-- informações pessoais (identificação, endereço e ) -->
		<xsl:for-each select="inf:CURRICULO/inf:INFORMACOES-PESSOAIS">	
			<div class="info-pessoais">
				<!-- seção identificação -->
				<section>
					<h2>Identificação</h2>
					<table>
						<tr>
							<td><b>Nome:</b></td>
							<td><xsl:value-of select="inf:IDENTIFICACAO/inf:NOME" /> </td>
						</tr>
						<tr>
							<td><b>Citações bibliográficas:</b></td>
							<td>
								<xsl:for-each select="inf:IDENTIFICACAO/inf:CITACAO-BIBLIOGRAFICA">
									<xsl:value-of select="." />; 
								</xsl:for-each>
							</td>
						</tr>	
					</table> 
				</section>	
				<br /><br />
				<!-- seção endereço --> 
				<section>
					<xsl:for-each select="inf:ENDERECO">
						<xsl:choose>	
							<!-- para aparecer o endereço profissional -->
							<xsl:when test="boolean(@preferencia = 'profissional' or @preferencia='ambos')">
								<h2> Endereço profissional</h2>
								<table>
									<tr>
										<td><b>Instituição:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:INSTITUICAO" /> </td>
									</tr>
									<tr>
										<td><b>Órgão:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:ORGAO" /> </td>
									</tr>
									<tr>
										<td><b>Logradouro:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:LOGRADOURO-COMPLETO" /> </td>
										<td><b>CEP:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:CEP" /> </td>
									</tr>
									<tr>
										<td><b>Bairro:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:BAIRRO"/> </td>
										<td><b>Cidade:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PESSOAL/inf:CIDADE"/> </td>
										<td><b>País:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:PAIS" /> </td>
									</tr>	
									<tr>
										<td><b>Telefone:</b></td>
										<td>(<xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:TELEFONE/inf:DDD" />)
											<xsl:value-of select="inf:ENDERECO-PROFISSIONAL/inf:TELEFONE/inf:NUMERO" />
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
										<td><xsl:value-of select="inf:ENDERECO-PESSOAL/inf:LOGRADOURO-COMPLETO" /> </td>
										<td><b>CEP:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PESSOAL/inf:CEP" /> </td>
									</tr>
									<tr>
										<td><b>Bairro:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PESSOAL/inf:BAIRRO" /> </td>
										<td><b>Cidade:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PESSOAL/inf:CIDADE" /> </td>
										<td><b>País:</b></td>
										<td><xsl:value-of select="inf:ENDERECO-PESSOAL/inf:PAIS" /> </td>
									</tr>	
									<tr>
										<td><b>Telefone:</b></td>
										<td>(<xsl:value-of select="inf:ENDERECO-PESSOAL/inf:TELEFONE/inf:DDD" />)
											<xsl:value-of select="inf:ENDERECO-PESSOAL/inf:TELEFONE/inf:NUMERO" />
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
