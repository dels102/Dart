package pl.dels.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.dels.model.Post;

public interface PostRepository extends JpaRepository<Post, Long> {
	
	Post findByTitle(String title);
}
