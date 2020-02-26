package hncj.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import hncj.util.OnlineCounter;
@WebListener
public class OnlineCountListener implements HttpSessionListener{

	@Override
	public void sessionCreated(HttpSessionEvent e) {
		// TODO Auto-generated method stub
		OnlineCounter.addCounter();
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		OnlineCounter.reduceCounter();
	}

}
