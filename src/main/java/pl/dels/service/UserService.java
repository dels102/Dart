package pl.dels.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pl.dels.model.User;
import pl.dels.model.UserDetails;
import pl.dels.model.Role;
import pl.dels.repository.UserRepository;
import pl.dels.repository.RoleRepository;
import pl.dels.repository.UserDetailsRepository;

@Service
public class UserService {

	private static final String DEFAULT_ROLE = "ROLE_USER";
	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private UserDetailsRepository userDetailsRepository;

	@Autowired
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Autowired
	public void setRoleRepository(RoleRepository roleRepository) {
		this.roleRepository = roleRepository;
	}
	
	@Autowired
	public void setUserDetailsRepository(UserDetailsRepository userDetailsRepository) {
		this.userDetailsRepository = userDetailsRepository;
	}

	public void addWithDefaultRole(User user) {
		Role defaultRole = roleRepository.findByRoleName(DEFAULT_ROLE);
		user.getRoles().add(defaultRole);
		userRepository.save(user);
	}
	
	public void updateIfUserHaveDetails (User user, UserDetails userDetails) {
		userDetailsRepository.save(userDetails);
		userRepository.save(user);
	}

	public boolean checkDuplicate(String username, String email) {
		boolean result = true;	
		User userWithDuplicateUsername = userRepository.findByUsername(username);
		User userWithDuplicateEmail = userRepository.findByEmail(email);
		if (userWithDuplicateEmail != null || userWithDuplicateUsername != null) {		
			result = false;		
		}
		return result;
	}
}
