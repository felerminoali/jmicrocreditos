package com.jmicrocreditos.repository;



import com.jmicrocreditos.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UsersRepository extends JpaRepository<User, Integer> {
    Optional<User> findByName(String username);
    Optional<User> findByEmail(String email);
}
