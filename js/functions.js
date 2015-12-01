/* depois de ler todo o documento */
$(document).ready(function() {
  addXML();
  
  $("nav li").click(function(){
  		var tipo = $(this).attr("id");
  		
  		/* design do botão quando ativo */
  		$("nav li").removeClass("ativo");
  		$("#"+tipo).addClass("ativo");
  });

});


/* deixando em JavaScript mesmo - evita o uso de bibliotecas externas do JQuery */
function addXML(){
	// loads an xml file, parses it and stores it in xmlDoc
	xmlDoc=document.implementation.createDocument("","",null);
	xslDoc=document.implementation.createDocument("","",null);
	xmlDoc.async = false;
	xslDoc.async = false;
	xmlDoc.load("./xml/pssouza.xml");
	xslDoc.load("./xsl/inf_pessoal.xsl");
	xsltProcessor= new XSLTProcessor();
	xsltProcessor.importStylesheet(xslDoc);
	resultDocument = xsltProcessor.transformToFragment(xmlDoc,document);
	$(".conteudo").append(resultDocument);
}

