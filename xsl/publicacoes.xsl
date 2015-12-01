<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
   		<h2>Publicações</h2><br />
   		<xsl:for-each select="CURRICULO/PUBLICACOES">
   			<h3>Artigos Publicados em Periódicos</h3>
   			<xsl:for-each select="./PUBLICACAO[@tipo='artigo']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
						<td><b><xsl:value-of select="ANO" /></b></td>
						<td>
						<xsl:for-each select="AUTOR">
							<xsl:value-of select="." />;
						</xsl:for-each>
						<xsl:value-of select="TITULO" />.
						<xsl:value-of select="IN" />.
						<xsl:value-of select="AREA" />.
						</td>
					</tr>	
   				</table><br />
   			</xsl:for-each>
   			<h3>Capítulo de Livros Publicados</h3>
   			<xsl:for-each select="./PUBLICACAO[@tipo='capitulo_livro']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
						<td><b><xsl:value-of select="ANO" /></b></td>
						<td>
						<xsl:for-each select="AUTOR">
							<xsl:value-of select="." />;
						</xsl:for-each>
						<xsl:value-of select="TITULO" />.
						<xsl:value-of select="IN" />.
						<xsl:value-of select="AREA" />.
						</td>
					</tr>	
   				</table><br />
   			</xsl:for-each>
   			<h3>Trabalhos Completos Publicados</h3>
   			<xsl:for-each select="./PUBLICACAO[@tipo='trabalho']">
   				<xsl:sort select="ANO" order="descending" />
   				<table>
   					<tr>
						<td><b><xsl:value-of select="ANO" /></b></td>
						<td>
						<xsl:for-each select="AUTOR">
							<xsl:value-of select="." />;
						</xsl:for-each>
						<xsl:value-of select="TITULO" />.
						<xsl:value-of select="IN" />.
						<xsl:value-of select="AREA" />.
						</td>
					</tr>	
   				</table><br />
   			</xsl:for-each>
   		</xsl:for-each>	
   	</body>
   </html>
</xsl:template>
</xsl:stylesheet>   	