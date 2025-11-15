package com.edonornet.main.repository;

import com.edonornet.main.model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepo extends JpaRepository<User, Long> {
    User findByEmailAndPassword(String email,String password);

    User findByEmail(String email);

    boolean existsByEmail(String email);

}
