/* depois de ler todo o documento */
$(document).ready(function() {
 
  $("nav li").click(function(){
  		var tipo = $(this).attr("id");
  		
  		/* design do botão quando ativo */
  		$("nav li").removeClass("ativo");
  		$("#"+tipo).addClass("ativo");
  });

});

