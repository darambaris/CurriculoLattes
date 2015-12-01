<?xml version="1.0" encoding="UTF-8"?>
<!-- *************************************************************************************
Nome: Jéssika Darambaris Oliveira No: 7961026
Nome: Vitor P. Ribeiro No: 7961005

Arquivo: academica.xsl
Descricao: XSL responsável por transformar a seção "FORMACAO-ACADEMICA" do XML
************************************************************************************** -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:acad="http://www.multimidia-lattes.com/lattes">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
 		<!-- seção formação acadêmica -->
		<!-- os campos de doutorado, mestrado, especialização são opcionais -->
		<xsl:for-each select="acad:CURRICULO/acad:FORMACAO-ACADEMICA">
			<section>
				<h2> Formação acadêmica </h2>
				<xsl:for-each select="acad:DOUTORADO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="acad:DURACAO/acad:INICIO" />-<xsl:value-of select="acad:DURACAO/acad:CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="acad:TITULO" /><br/>
							<xsl:value-of select="acad:INSTITUICAO" /><br/>
							<b>Título:</b> <xsl:value-of select="acad:TITULO-TESE" /><br/>
							<b>Orientador:</b><xsl:value-of select="acad:ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>	
				</xsl:for-each>
				<xsl:for-each select="acad:MESTRADO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="acad:DURACAO/acad:INICIO" />-<xsl:value-of select="acad:DURACAO/acad:CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="acad:TITULO" /><br/>
							<xsl:value-of select="acad:INSTITUICAO" /><br/>
							<b>Título:</b><xsl:value-of select="acad:TITULO-TESE" /><br/>
							<b>Orientador:</b><xsl:value-of select="acad:ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>	
				</xsl:for-each>
				<xsl:for-each select="acad:ESPECIALIZACAO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="acad:DURACAO/acad:INICIO" />-<xsl:value-of select="acad:DURACAO/acad:CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="acad:TITULO" /><br/>
							<xsl:value-of select="acad:INSTITUICAO" /><br/>
							<b>Orientador:</b><xsl:value-of select="acad:ORIENTADOR" /><br/>
						</td>
					</tr>	
				</table>
				</xsl:for-each>	
				<xsl:for-each select="acad:GRADUACAO">
				<table>
					<tr>
						<td>
							<b><xsl:value-of select="acad:DURACAO/acad:INICIO" />-<xsl:value-of select="acad:DURACAO/acad:CONCLUSAO" /></b>
						</td>
						<td>
							<xsl:value-of select="acad:TITULO" /><br/>
							<xsl:value-of select="acad:INSTITUICAO" /><br/>
							<b>Título:</b> <xsl:value-of select="acad:TITULO-TCC" /><br/>
							<b>Orientador:</b> <xsl:value-of select="acad:ORIENTADOR" /><br/>
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


				