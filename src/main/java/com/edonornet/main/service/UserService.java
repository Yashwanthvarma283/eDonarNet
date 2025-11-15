package com.edonornet.main.service;

import com.edonornet.main.model.User;
import com.edonornet.main.repository.UserRepo;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    public final UserRepo userRepo;
    UserService(UserRepo userRepo){
        this.userRepo=userRepo;
    }

    public User findUser(String email, String pass){
        return userRepo.findByEmailAndPassword(email,pass);
    }

    public User find(String email){
        return userRepo.findByEmail(email);
    }

    public boolean findByEmail(String email){
        return userRepo.existsByEmail(email);
    }

    public void saveuser(User user){
        userRepo.save(user);
    }

    public void resetpassword(String password,String email){
        User user=userRepo.findByEmail(email);
        user.setPassword(password);
        userRepo.save(user);
    }

}
