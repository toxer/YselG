package yser.service

import java.util.logging.Logger;

import it.ictechnology.eaco.client.framework.Client
import it.ictechnology.eaco.client.framework.FrameworkFacade

class EacoService {
	
	def resetSessionClient(def session){
		session.removeAttribute('client')
		session.removeAttribute('CurrentEnte')
	}
	
	def getUsersCreadentials(def request,def session){
		if (!session.client || !session.CurrentEnte){
			Client eacoClient = FrameworkFacade.getClient(request);
			def client = [:]
			if (eacoClient){
				client = [userId:eacoClient.getUserId(),cciaaApp:eacoClient.getCciaaApp(),cliente:eacoClient.getCliente(),account:eacoClient.getAccount(),profili:eacoClient.getProfili().toList()]
				def profili=[]
				
				session.client=client;
				session.CurrentEnte=client.cliente
			}
		}
		return session.client;
		
	}
}
