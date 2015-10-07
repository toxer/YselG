package ysel

class StartController {
	def eacoService;
	def init(){
		def client=eacoService.getUsersCreadentials(request,session);
		log.info(client)
		//lo si può trovare anche in sessione
		
		
	}

}
