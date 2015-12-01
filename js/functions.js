
/**************************************************************************************
Nome: Jéssika Darambaris Oliveira No: 7961026
Nome: Vitor P. Ribeiro No: 7961005

Arquivo: functions.js
Descricao: arquivo com todas as rotinas necessárias em Javascript (charmar o XML/XSL)
e para trocar o conteúdo da tela de forma dinâmica (JQuery)
**************************************************************************************/

/******** CONSTANTES **********/
const XMLNAME = ["rgoularte.xml","pssouza.xml"];
const XSLNAME = ["inf_pessoal.xsl","academica.xsl","orientacoes.xsl","publicacoes.xsl"];

/* depois de ler todo o documento */
$(document).ready(function() {

  /* modo completo - default */	
  $(".conteudo").append(addXML(XMLNAME[0],XSLNAME[0]));
  $(".conteudo").append(addXML(XMLNAME[0],XSLNAME[1]));
  $(".conteudo").append(addXML(XMLNAME[0],XSLNAME[2]));
  $(".conteudo").append(addXML(XMLNAME[0],XSLNAME[3]));
  
  $("nav li").click(function(){
  		var tipo = $(this).attr("id");
  		
      /* se o elemento já está ativo não é necessário fazer nada */
      if ($(this).attr("class") == "ativo") return;
      
  		/* definindo documentos */
  		var inf_pessoal = addXML(XMLNAME[0],XSLNAME[0]);
  		var academica 	= addXML(XMLNAME[0],XSLNAME[1]);
  		var orientacoes = addXML(XMLNAME[0],XSLNAME[2]);
  		var publicacoes = addXML(XMLNAME[0],XSLNAME[3]);

  		/* limpa todos os filhos da div .conteudo */
  		$(".conteudo").empty();

  		/* design do botão quando ativo */
  		$("nav li").removeClass("ativo");
  		$("#"+tipo).addClass("ativo");

  		/* adiciona xml */
  		$(".conteudo").append(inf_pessoal); // todos possuem
  		switch(tipo){
        /* botao completo foi clicado */
  			case "b-completo":
  				$(".conteudo").append(academica);
  				$(".conteudo").append(orientacoes);
  				$(".conteudo").append(publicacoes);
  			break;	
         /* botao orientacoes foi clicado */
  			case "b-orientacoes":
  				$(".conteudo").append(orientacoes);
  			break;	 
        /* botao publicacoes foi clicado */
  			case "b-publicacoes":
  				$(".conteudo").append(publicacoes);
  			break;
  		}
  		
  });

});

/* função retirada da última aula - funciona apenas no Firefox */
/* o método utilizado pela w3c não funcionou nesse código então foi deixado o da aula */
/* deixando em JavaScript mesmo - evita o uso de bibliotecas externas do JQuery */
function addXML(xmlName,xslName){
  // loads an xml file, parses it and stores it in xmlDoc
  xmlDoc=document.implementation.createDocument("","",null);
  xslDoc=document.implementation.createDocument("","",null);
  xmlDoc.async = false;
  xslDoc.async = false;
  xmlDoc.load("./xml/"+xmlName);
  xslDoc.load("./xsl/"+xslName);
  
  xsltProcessor= new XSLTProcessor();
  xsltProcessor.importStylesheet(xslDoc);
  
  resultDocument = xsltProcessor.transformToFragment(xmlDoc,document);

  return resultDocument;
}

