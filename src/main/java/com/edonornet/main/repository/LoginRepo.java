package com.edonornet.main.repository;

import com.edonornet.main.model.Login_info;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoginRepo extends JpaRepository<Login_info, Long> {
}
