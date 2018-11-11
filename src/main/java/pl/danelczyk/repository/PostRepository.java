package pl.danelczyk.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.danelczyk.model.Post;

public interface PostRepository extends JpaRepository<Post, Long> {
	
	Post findByTitle(String title);
}
