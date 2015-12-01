
/******** CONSTANTES **********/
const XMLNAME = "pssouza.xml";
const XSLNAME = ["inf_pessoal.xsl","orientacoes.xsl"];

/* depois de ler todo o documento */
$(document).ready(function() {

  /* modo completo - default */	
  $(".conteudo").append(addXML(XMLNAME,XSLNAME[0]));
  $(".conteudo").append(addXML(XMLNAME,XSLNAME[1]));
  
  $("nav li").click(function(){
  		var tipo = $(this).attr("id");
  		
  		/* definindo documentos */
  		var inf_pessoal = addXML(XMLNAME,XSLNAME[0]);
  		var orientacoes = addXML(XMLNAME,XSLNAME[1]);
  		
  		/* limpa todos os filhos de conteudo */
  		$(".conteudo").empty();

  		/* design do botão quando ativo */
  		$("nav li").removeClass("ativo");
  		$("#"+tipo).addClass("ativo");

  		/* adiciona xml */
  		$(".conteudo").append(inf_pessoal); // todos possuem
  		switch(tipo){
  			case "b-completo":
  				$(".conteudo").append(orientacoes);
  			break;	
  			case "b-orientacoes":
  				$(".conteudo").append(orientacoes); 
  			break;
  		}
  		
  });

});

/* função retirada da última aula */
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

