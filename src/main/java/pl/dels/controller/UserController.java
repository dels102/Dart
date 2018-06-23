package pl.dels.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.dels.model.User;
import pl.dels.service.UserService;

@Controller
public class UserController {

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	
	@GetMapping("/login")
	public String loginForm() {
	    return "login";
	}

	@PostMapping("/register")
	public String addUser(@RequestParam String username, @RequestParam String email, @RequestParam String password) {

		if (checkNotEmpty(username, password, email)) {
			User user = new User(username, password, email);
			userService.addWithDefaultRole(user);
			return "registerOk";
		} else
			return "index";
	}

	private boolean checkNotEmpty(String username, String email, String password) {
		return (username != null && username.length() > 0) && (email != null && email.length() > 0)
				&& (password != null && password.length() > 0);
	}
}