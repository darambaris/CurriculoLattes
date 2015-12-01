<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
   		<h2>Orientações</h2>
   		<xsl:for-each select="CURRICULO/ORIENTACOES">
   			<h3> Em andamento </h3>
   			<xsl:for-each select="INICIACAO-CIENTIFICA[@status='andamento']">
   				iniciação
   			</xsl:for-each>
   			<xsl:for-each select="DISSERTACAO-MESTRADO[@status='andamento']">
   				mestrado
   			</xsl:for-each>
   			<xsl:for-each select="TESE-DOUTORADO[@status='andamento']">
   				doutorado
   			</xsl:for-each>
   		</xsl:for-each><br/>
   		<xsl:for-each select="CURRICULO/ORIENTACOES">
   			<h3> Concluído </h3>
   			<xsl:for-each select="INICIACAO-CIENTIFICA[@status='concluido']">
   				iniciação
   			</xsl:for-each>
   			<xsl:for-each select="DISSERTACAO-MESTRADO[@status='concluido']">
   				mestrado
   			</xsl:for-each>
   			<xsl:for-each select="TESE-DOUTORADO[@status='concluido']">
   				doutorado
   			</xsl:for-each>
   		</xsl:for-each>
    </body> 
   </html>
</xsl:template>
</xsl:stylesheet>
