package pl.dels.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.dels.model.User;
import pl.dels.model.UserDetails;
import pl.dels.service.UserService;

@Controller
public class UserController {

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/login")
	public String loginForm() {
		return "login";
	}

	@GetMapping("/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}

	@PostMapping("/register")
	public String addUser(@RequestParam String username, @RequestParam String password, @RequestParam String email,
			@RequestParam String firstName, @RequestParam String lastName, @RequestParam String phoneNumber) {

		if (userService.checkDuplicate(username, email)) {
			User user = new User(username, password, email);
			userService.addWithDefaultRole(user);

			if (firstName != null || lastName != null || phoneNumber != null) {
				UserDetails userDetails = new UserDetails(firstName, lastName, phoneNumber);
				user.setDetails(userDetails);
				userService.updateIfUserHaveDetails(user, userDetails);
			}
			return "redirect:success";
		} else {
			return "redirect:problem";
		}
	}

	@GetMapping("/success")
	public String registerOk(Model model) {
		model.addAttribute("user", new User());
		return "registerOk";
	}

	@GetMapping("/problem")
	public String registerNoOk() {
		return "registerNoOk";
	}
}
