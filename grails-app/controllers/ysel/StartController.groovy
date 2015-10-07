package ysel

class StartController {
	def eacoService;
	def init(){
		log.info(eacoService.getUsersCreadentials(request,session))
	}

}
