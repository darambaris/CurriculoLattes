<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
 		<!-- seção formação acadêmica -->
		<!-- os campos de doutorado, mestrado, especialização são opcionais -->
		<xsl:for-each select="CURRICULO/FORMACAO-ACADEMICA">
			<section>
				<h2> Formação Acadêmica </h2>
				<xsl:for-each select="DOUTORADO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="DURACAO/INICIO" />-<xsl:value-of select="DURACAO/CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="TITULO" /><br/>
							<xsl:value-of select="INSTITUICAO" /><br/>
							<b>Título:</b> <xsl:value-of select="TITULO-TESE" /><br/>
							<b>Orientador:</b><xsl:value-of select="ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>	
				</xsl:for-each>
				<xsl:for-each select="MESTRADO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="DURACAO/INICIO" />-<xsl:value-of select="DURACAO/CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="TITULO" /><br/>
							<xsl:value-of select="INSTITUICAO" /><br/>
							<b>Título:</b><xsl:value-of select="TITULO-TESE" /><br/>
							<b>Orientador:</b><xsl:value-of select="ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>	
				</xsl:for-each>
				<xsl:for-each select="ESPECIALIZACAO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="DURACAO/INICIO" />-<xsl:value-of select="DURACAO/CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="TITULO" /><br/>
							<xsl:value-of select="INSTITUICAO" /><br/>
							<b>Orientador:</b><xsl:value-of select="ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>
				</xsl:for-each>	
				<xsl:for-each select="GRADUACAO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="DURACAO/INICIO" />-<xsl:value-of select="DURACAO/CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="TITULO" /><br/>
							<xsl:value-of select="INSTITUICAO" /><br/>
							<b>Título:</b> <xsl:value-of select="TITULO-TCC" /><br/>
							<b>Orientador:</b> <xsl:value-of select="ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>	
				</xsl:for-each>
			</section>
		</xsl:for-each>	
 	</body> 
   </html>
</xsl:template>
</xsl:stylesheet>


				