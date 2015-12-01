<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
   		<h2>Orientações</h2><br/>
   		<xsl:for-each select="CURRICULO/ORIENTACOES">
   			<h3> Orientações e supervisões em andamento </h3>
   			<xsl:for-each select="INICIACAO-CIENTIFICA[@status='andamento']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
   						<td><b>Iniciação Científica</b></td>
   						<td>
   							<xsl:value-of select="ALUNO" />.
   							<xsl:value-of select="TITULO" />.
   							<xsl:value-of select="ANO" />.
   							<xsl:value-of select="INSTITUICAO" />.
   						</td>
   					</tr>
   				</table>
   			</xsl:for-each>
   			<xsl:for-each select="DISSERTACAO-MESTRADO[@status='andamento']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
   						<td><b>Mestrado</b></td>
   						<td>
   							<xsl:value-of select="MESTRANDO" />.
   							<xsl:value-of select="TITULO" />.
   							Início: <xsl:value-of select="ANO" />.
   							<xsl:value-of select="INSTITUICAO" />.
   						</td>
   					</tr>
   				</table>			
   			</xsl:for-each>
   			<xsl:for-each select="TESE-DOUTORADO[@status='andamento']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
   						<td><b>Doutorado</b></td>
   						<td>
   							<xsl:value-of select="DOUTORANDO" />.
   							<xsl:value-of select="TITULO" />.
   							Início: <xsl:value-of select="ANO" />.
   							<xsl:value-of select="INSTITUICAO" />.
   						</td>
   					</tr>
   				</table>
   			</xsl:for-each>
   		</xsl:for-each><br/>
   		<xsl:for-each select="CURRICULO/ORIENTACOES">
   			<h3> Orientações e supervisões concluídas </h3>
   			<xsl:for-each select="INICIACAO-CIENTIFICA[@status='concluido']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
   						<td><b>Iniciação Científica</b></td>
   						<td>
   							<xsl:value-of select="ALUNO" />.
   							<xsl:value-of select="TITULO" />.
   							<xsl:value-of select="ANO" />.
   							<xsl:value-of select="INSTITUICAO" />.
   						</td>
   					</tr>
   				</table>
   			</xsl:for-each>
   			<xsl:for-each select="DISSERTACAO-MESTRADO[@status='concluido']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
   						<td><b>Mestrado</b></td>
   						<td>
   							<xsl:value-of select="MESTRANDO" />.
   							<xsl:value-of select="TITULO" />.
   							<xsl:value-of select="ANO" />.
   							<xsl:value-of select="INSTITUICAO" />.
   						</td>
   					</tr>
   				</table>	
   			</xsl:for-each>
   			<xsl:for-each select="TESE-DOUTORADO[@status='concluido']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
   						<td><b>Doutorado</b></td>
   						<td>
   							<xsl:value-of select="DOUTORANDO" />.
   							<xsl:value-of select="TITULO" />.
   							<xsl:value-of select="ANO" />.
   							<xsl:value-of select="INSTITUICAO" />.
   						</td>
   					</tr>
   				</table>
   			</xsl:for-each>
   		</xsl:for-each>
    </body> 
   </html>
</xsl:template>
</xsl:stylesheet>
