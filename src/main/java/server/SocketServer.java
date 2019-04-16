package server;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@ServerEndpoint("/server")
public class SocketServer {


    private static Set<Session> client = new HashSet<>();
//    private static List<String> messages = new ArrayList<>();

    @OnOpen
    public void onOpen(Session session) {
        client.add(session);
//        System.out.println("Open Connection ..." + session.getId());
    }


    @OnClose
    public void onClose(Session session) throws IOException {
//        System.out.println(session.getId());

        client.remove(session);

    }


    @OnMessage
    public String allMessage(String message,Session senders_session) throws IOException {



        for (Session clients_session : client) {
//            System.out.println(clients_session);
//            System.out.println(message);
            if(!clients_session.getId().equals(senders_session.getId())){
                clients_session.getBasicRemote().sendText(message);
            }
        }
        return message;
    }


    @OnError
    public void onError(Throwable e) {
        e.printStackTrace();
    }


    //    public String onMessage(String message){
//        System.out.println("Message from the client: " + message);
//
//
//        Iterator<Session> iterator = client.iterator();
//        while (iterator.hasNext()) {
//            Session loadsession = iterator.next();
//            try {
//                loadsession.getBasicRemote().sendText(message);
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }{
//            return message;
//       }
//    }
//


}
