package pl.danelczyk.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.danelczyk.model.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {

}
