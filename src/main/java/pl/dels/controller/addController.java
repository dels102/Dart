package pl.dels.controller;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.dels.model.Post;
import pl.dels.service.AddService;

@Controller
public class AddController {
	
	private AddService addService;

	@Autowired
	public void setAddService(AddService addService) {
		this.addService = addService;
	}

	@GetMapping("/add")
	public String add() {
		return "add";
	}

	@PostMapping("/add")
	public String addPost(@RequestParam String inputTitle, @RequestParam String inputUrl, String inputDescription) {

		if (addService.checkDuplicate(inputTitle)) {
			
			Timestamp time = new Timestamp(new Date().getTime());		
			
			Post post = new Post(inputTitle, inputUrl, inputDescription, time);
			
			addService.addPost(post);

			return "redirect:addOk";
		} else {
			return "redirect:addNoOk";
		}
	}
	
	@GetMapping("/addOk")
	public String registerOk() {
		return "addOk";
	}
	
	@GetMapping("/addNoOk")
	public String registerNoOk() {
		return "addNoOk";
	}
}