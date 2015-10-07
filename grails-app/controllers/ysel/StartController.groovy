package ysel

class StartController {
	def eacoService;
	def init(){
		def client=eacoService.getUsersCreadentials(request,request.getSession());
		log.debug(client)
		//lo si può trovare anche in sessione
		
		
	}

}
