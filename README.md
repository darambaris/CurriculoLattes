# CurriculoLattes
Criação de uma página HTML que contém a estrutura do currículo Lattes para o curso de Multimídia e Hipermídia.

Estrutura:

index.html --> página html principal responsável pela estrutura inicial da página.

Pasta XML: 
	possui dois arquivos XMLs de professores do ICMC-USP, 
	as informações foram retiradas do currículo LATTES disponível no site.

	pssouza.xml --> professor Paulo Sérgio Lopes de Souza
	rgoularte.xml --> professor Rudinei Goularte (responsável pela disciplina desse trabalho.)

	Obs:.para trocar o xml basta mudar o índice do vetor XMLNAME na página functions.js

Pasta XSL:
	possui quatro arquivos XSLs que representam as 3 visões do Lattes propostas no trabalho:

	inf_pessoal.xsl --> possui as informações pessoais
	academica.xsl --> possui a formação acadêmica
	orientacoes.xsl --> possui algumas orientações 
	publicacoes.xsl --> possui algumas publicações 	

	Completo: 
		possui todos os xsls
	Informações Pessoais e orientações:
		possui inf_pessoal.xsl e orientacoes.xsl
	Informações Pessoais e publicações:
		possui inf_pessoal.xsl e publicacoes.xsl

Pasta XSD:
	curriculo.xsd --> XMLSchema responsável por validar os XMLs contidos na ṕasta XML

Pasta JS:
	functions.js --> responsável tanto pelo design (seleção das abas) como carregamento dos arquivos (XML/XSL)
					para transformação XML=>XSL foi utilizado o código disponível na última aula : bandejao.html

Pasta CSS:
	reset.css --> retirado da internet, apenas zera os elementos para não herdar atributos pré-definidos pelo browser
	format.css --> possui os estilos referentes as classes utilizadas nos XSLs
	styles.css --> possui os estilos referentes as classes utilizadas no HTML
