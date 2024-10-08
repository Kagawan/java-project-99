package hexlet.code.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;

@RestController
@RequestMapping("/welcome")
public final class WelcomeController {

    @GetMapping(path = "")
    public String welcome() {
        return "Welcome to Spring!";
    }
}
