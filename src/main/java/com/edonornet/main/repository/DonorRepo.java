package com.edonornet.main.repository;

import com.edonornet.main.model.Donor;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DonorRepo extends JpaRepository<Donor,Long> {

    List<Donor> findByEmail(String email);

}
