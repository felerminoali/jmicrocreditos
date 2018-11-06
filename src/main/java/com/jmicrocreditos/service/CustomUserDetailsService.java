package com.jmicrocreditos.service;


import com.jmicrocreditos.model.CustomUserDetails;
import com.jmicrocreditos.model.Users;
import com.jmicrocreditos.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Optional<Users> optionalUsers = usersRepository.findByName(username);

        optionalUsers
                .orElseThrow(() -> new UsernameNotFoundException("Username not found"));
        CustomUserDetails customUserDetails = optionalUsers
                .map(users -> {
                    return new CustomUserDetails(users);
                }).get();
        return customUserDetails;
    }
}
