package com.edonornet.main.service;


import com.edonornet.main.model.User;
import com.edonornet.main.repository.UserRepo;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    public final PasswordEncoder passwordEncoder;
    public final UserRepo userRepo;
    public UserService(UserRepo userRepo,PasswordEncoder passwordEncoder){
        this.userRepo=userRepo;
        this.passwordEncoder=passwordEncoder;
    }

    public User findUser(String email, String pass){
        User user=find(email);
        if(passwordEncoder.matches(pass,user.getPassword())) return user;
        else return null;
    }

    public User find(String email){
        return userRepo.findByEmail(email);
    }

    public boolean findByEmail(String email){
        return userRepo.existsByEmail(email);
    }

    public void saveuser(User user){
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepo.save(user);
    }

    public void resetpassword(String password,String email){
        User user=userRepo.findByEmail(email);
        user.setPassword(passwordEncoder.encode(password));
        userRepo.save(user);
    }

}
