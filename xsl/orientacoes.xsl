<?xml version="1.0" encoding="UTF-8"?>
<!-- *************************************************************************************
Nome: Jéssika Darambaris Oliveira No: 7961026
Nome: Vitor P. Ribeiro No: 7961005

Arquivo: orientacoes.xsl
Descricao: XSL responsável por transformar a seção "ORIENTACOES" do XML
************************************************************************************** -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ori="http://www.multimidia-lattes.com/lattes">
<xsl:template match="/">
   <html> 
   	<head> <link rel="stylesheet" type="text/css" href="./css/format.css"/></head>
   	<body id="curriculo">
         <section>
      		<xsl:for-each select="ori:CURRICULO/ori:ORIENTACOES">
               <h2>Orientações</h2><br/>
      			<h3> Orientações e supervisões em andamento </h3>
               <xsl:for-each select="ori:ORIENTACAO[@status='andamento']">
         			<xsl:for-each select=".[@tipo='iniciacao']">
         				<xsl:sort select="ori:ANO" order="descending" />
         				<table>
         					<tr>
         						<td><b>Iniciação científica</b></td>
         						<td>
         							<xsl:value-of select="ori:ALUNO" />.
         							<xsl:value-of select="ori:TITULO" />.
         							Início: <xsl:value-of select="ori:ANO" />.
         							<xsl:value-of select="ori:INSTITUICAO" />.
         						</td>
         					</tr>
         				</table>
         			</xsl:for-each>
         			<xsl:for-each select=".[@tipo='mestrado']">
         				<xsl:sort select="ori:ANO" order="descending" />
         				<table>
         					<tr>
         						<td><b>Mestrado</b></td>
         						<td>
         							<xsl:value-of select="ori:ALUNO"/>.
         							<xsl:value-of select="ori:TITULO" />.
         							Início: <xsl:value-of select="ori:ANO" />.
         							<xsl:value-of select="ori:INSTITUICAO" />.
         						</td>
         					</tr>
         				</table>			
         			</xsl:for-each>
         			<xsl:for-each select=".[@tipo='doutorado']">
         				<xsl:sort select="ori:ANO" order="descending" />
         				<table>
         					<tr>
         						<td><b>Doutorado</b></td>
         						<td>
         							<xsl:value-of select="ori:ALUNO" />.
         							<xsl:value-of select="ori:TITULO" />.
         							Início: <xsl:value-of select="ori:ANO" />.
         							<xsl:value-of select="ori:INSTITUICAO" />.
         						</td>
         					</tr>
         				</table>
         			</xsl:for-each>
      		   </xsl:for-each><br/>

               <h3> Orientações e supervisões concluídas </h3>
      		   <xsl:for-each select="ori:ORIENTACAO[@status ='concluido']">
         			<xsl:for-each select=".[@tipo='iniciacao']">
         				<xsl:sort select="ori:ANO" order="descending" />
         				<table>
         					<tr>
         						<td><b>Iniciação científica</b></td>
         						<td>
         							<xsl:value-of select="ori:ALUNO" />.
         							<xsl:value-of select="ori:TITULO" />.
         							<xsl:value-of select="ori:ANO" />.
         							<xsl:value-of select="ori:INSTITUICAO" />.
         						</td>
         					</tr>
         				</table>
         			</xsl:for-each>
         			<xsl:for-each select=".[@tipo='mestrado']">
         				<xsl:sort select="ori:ANO" order="descending" />
         				<table>
         					<tr>
         						<td><b>Mestrado</b></td>
         						<td>
         							<xsl:value-of select="ori:ALUNO" />.
         							<xsl:value-of select="ori:TITULO" />.
         							<xsl:value-of select="ori:ANO" />.
         							<xsl:value-of select="ori:INSTITUICAO" />.
         						</td>
         					</tr>
         				</table>	
         			</xsl:for-each>
         			<xsl:for-each select=".[@tipo='doutorado']">
         				<xsl:sort select="ori:ANO" order="descending" />
         				<table>
         					<tr>
         						<td><b>Doutorado</b></td>
         						<td>
         							<xsl:value-of select="ori:ALUNO" />.
         							<xsl:value-of select="ori:TITULO" />.
         							<xsl:value-of select="ori:ANO" />.
         							<xsl:value-of select="ori:INSTITUICAO" />.
         						</td>
         					</tr>
         				</table>
         			</xsl:for-each>
                </xsl:for-each>  
      		</xsl:for-each> 
         </section>
    </body> 
   </html>
</xsl:template>
</xsl:stylesheet>
