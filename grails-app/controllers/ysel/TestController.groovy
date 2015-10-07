package ysel

import org.codehaus.groovy.grails.web.json.JSONObject

class TestController {
	def restclientService;
	def index(){
		def test = new JSONObject();
		test.provaLista=[:]
		test.provaLista.put('Prova1','p1');
		test.provaLista.put('Prova2','p2');
		test.campo1='Campo1';
		def resp = restclientService.sendJsonRequest("http://restserice.com",test);
		log.info("Resp: "+resp)
		return;
		
	}
}
