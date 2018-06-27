package pl.dels.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.dels.model.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {

}
