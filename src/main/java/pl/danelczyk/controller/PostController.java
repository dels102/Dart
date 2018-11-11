package pl.danelczyk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pl.danelczyk.model.Post;
import pl.danelczyk.service.PostService;

@Controller
public class PostController {

	private PostService postService;

	@Autowired
	private void setPostService(PostService addService) {
		this.postService = addService;
	}

	@GetMapping("/add")
	private String add() {
		return "add";
	}

	@PostMapping("/add")
	private String addPost(@RequestParam String inputTitle, @RequestParam String inputUrl, String inputDescription) {

		if (postService.checkDuplicate(inputTitle)) {
			String nameOfLoggedUser = SecurityContextHolder.getContext().getAuthentication().getName();
			postService.addPost(inputTitle, inputUrl, inputDescription, nameOfLoggedUser);
			return "redirect:addOk";
		} else {
			return "redirect:addNoOk";
		}
	}

	@GetMapping("/addOk")
	private String addOk(Model model) {
		List<Post> allPosts = postService.getAllPosts((d1, d2) -> d2.getTime().compareTo(d1.getTime()));
		model.addAttribute("allPosts", allPosts);
		return "addOk";
	}

	@GetMapping("/addNoOk")
	private String addNoOk(Model model) {
		List<Post> allPosts = postService.getAllPosts((d1, d2) -> d2.getTime().compareTo(d1.getTime()));
		model.addAttribute("allPosts", allPosts);
		return "addNoOk";
	}

	@RequestMapping(value = "/removePost/{post.title}", method = RequestMethod.GET)
	private String removePost(@PathVariable("post.title") String title) {
		postService.removePost(title);
		return "redirect:removePostSuccess";
	}

	@GetMapping("/removePostSuccess")
	private String removePost(Model model) {
		List<Post> allPosts = postService.getAllPosts((d1, d2) -> d2.getTime().compareTo(d1.getTime()));
		model.addAttribute("allPosts", allPosts);
		return "removePost";
	}
}