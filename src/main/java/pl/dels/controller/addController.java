package pl.dels.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class addController {

    @GetMapping("/add")
    public String add() {
        return "add";
    }
}