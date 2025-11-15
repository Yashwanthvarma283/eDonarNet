package com.edonornet.main.repository;

import com.edonornet.main.model.Recipient;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RecipientRepo extends JpaRepository<Recipient,Long> {

    List<Recipient> findByEmail(String email);
}
