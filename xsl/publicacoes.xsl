<?xml version="1.0" encoding="UTF-8"?>
<!-- *************************************************************************************
Nome: Jéssika Darambaris Oliveira No: 7961026
Nome: Vitor P. Ribeiro No: 7961005

Arquivo: publicacoes.xsl
Descricao: XSL responsável por transformar a seção "PUBLICACOES" do XML
************************************************************************************** -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pub="http://www.multimidia-lattes.com/lattes">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
   		<section>
	   		<xsl:for-each select="pub:CURRICULO/pub:PUBLICACOES">
	   			<h2>Publicações</h2><br />
	   			<h3>Artigos publicados em periódicos</h3>
	   			<xsl:for-each select="./pub:PUBLICACAO[@tipo='artigo']">
	   				<xsl:sort select="pub:ANO" order="descending" />
	   				<table>
	   					<tr>
							<td><b><xsl:value-of select="pub:ANO" /></b></td>
							<td>
							<xsl:for-each select="pub:AUTOR">
								<xsl:value-of select="." />;
							</xsl:for-each>
							<xsl:value-of select="pub:TITULO" />.
							<xsl:value-of select="pub:IN" />.
							<xsl:value-of select="pub:TITULO-PUBLICACAO" />.
							</td>
						</tr>	
	   				</table><br />
	   			</xsl:for-each>
	   			<h3>Capítulo de livros publicados</h3>
	   			<xsl:for-each select="./pub:PUBLICACAO[@tipo='capitulo_livro']">
	   				<xsl:sort select="pub:ANO" order="descending" />
	   				<table>
	   					<tr>
							<td><b><xsl:value-of select="pub:ANO" /></b></td>
							<td>
							<xsl:for-each select="pub:AUTOR">
								<xsl:value-of select="." />;
							</xsl:for-each>
							<xsl:value-of select="pub:TITULO" />.
							<xsl:value-of select="pub:IN" />.
							<xsl:value-of select="pub:TITULO-PUBLICACAO" />.
							</td>
						</tr>	
	   				</table><br />
	   			</xsl:for-each>
	   			<h3>Trabalhos completos publicados</h3>
	   			<xsl:for-each select="./pub:PUBLICACAO[@tipo='trabalho']">
	   				<xsl:sort select="pub:ANO" order="descending" />
	   				<table>
	   					<tr>
							<td><b><xsl:value-of select="pub:ANO" /></b></td>
							<td>
							<xsl:for-each select="pub:AUTOR">
								<xsl:value-of select="." />;
							</xsl:for-each>
							<xsl:value-of select="pub:TITULO" />.
							<xsl:value-of select="pub:IN" />.
							<xsl:value-of select="pub:TITULO-PUBLICACAO" />.
							</td>
						</tr>	
	   				</table><br />
	   			</xsl:for-each>
	   		</xsl:for-each>	
   		</section>
   	</body>
   </html>
</xsl:template>
</xsl:stylesheet>   	