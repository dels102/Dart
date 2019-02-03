package pl.danelczyk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.danelczyk.model.Post;
import pl.danelczyk.service.PostService;

@Controller
public class HomeController {

	private PostService postService;

	@Autowired
	private void setPostService(PostService addService) {
		this.postService = addService;
	}

	@RequestMapping("/")
	private String home(Model model) {
		List<Post> allPosts = postService.getAllPosts((d1, d2) ->
		d2.getTime().compareTo(d1.getTime()));
		model.addAttribute("allPosts", allPosts);
		return "index";
	}

	@GetMapping("/about")
	private String about() {
		return "about";
	}

	@GetMapping("/contact")
	private String contact() {
		return "contact";
	}

	@PostMapping("/contact")
	private String contactUs() {
		return "redirect:contactOk";
	}

	@GetMapping("/contactOk")
	private String contactOk(Model model) {
		List<Post> allPosts = postService.getAllPosts((d1, d2) -> d2.getTime().compareTo(d1.getTime()));
		model.addAttribute("allPosts", allPosts);
		return "contactOk";
	}
}
