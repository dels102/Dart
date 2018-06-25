package pl.dels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pl.dels.model.Post;
import pl.dels.model.User;
import pl.dels.repository.PostRepository;
import pl.dels.repository.UserRepository;

@Service
public class AddService {
	
	private PostRepository postRepository;
	private UserRepository userRepository;

	@Autowired
	public void setPostRepository(PostRepository postRepository) {
		this.postRepository = postRepository;
	}
	
	@Autowired
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public void addPost(Post post) {	
		postRepository.save(post);
	}
	
	public void updateUserWithPost(User user) {
		userRepository.save(user);
	}	
	
	public boolean checkDuplicate(String title) {
		boolean result = true;	
		Post duplicatePost = postRepository.findByTitle(title);
		if (duplicatePost != null) {		
			result = false;		
		}
		return result;
	}
	
}
