package letscode.sarafan.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.Session;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@RestController("/screenshare")
public class ScreenShareController {
    private static final Set<Session> sessions = Collections.synchronizedSet(new HashSet<>());

    @MessageMapping("/share")
    public void processShare(Session session) {
        sessions.add(session);
    }
}
