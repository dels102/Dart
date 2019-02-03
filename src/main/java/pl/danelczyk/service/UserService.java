package pl.danelczyk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import pl.danelczyk.model.Role;
import pl.danelczyk.model.User;
import pl.danelczyk.model.UserDetails;
import pl.danelczyk.repository.RoleRepository;
import pl.danelczyk.repository.UserDetailsRepository;
import pl.danelczyk.repository.UserRepository;

@Service
public class UserService {

	private static final String DEFAULT_ROLE = "ROLE_USER";
	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private UserDetailsRepository userDetailsRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

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

	public void saveUserInDatabase(String username, String password, String email, String firstName, String lastName,
			String phoneNumber) {

		String bcryptPass = passwordEncoder.encode(password);
		User user = new User(username, bcryptPass, email);
		addWithDefaultRole(user);

		if (firstName != null || lastName != null || phoneNumber != null) {
			UserDetails userDetails = new UserDetails(firstName, lastName, phoneNumber);
			user.setDetails(userDetails);
			updateIfUserHaveDetails(user, userDetails);
		}
	}

	private void addWithDefaultRole(User user) {
		Role defaultRole = roleRepository.findByRoleName(DEFAULT_ROLE);
		user.getRoles().add(defaultRole);
		userRepository.save(user);
	}

	private void updateIfUserHaveDetails(User user, UserDetails userDetails) {
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
