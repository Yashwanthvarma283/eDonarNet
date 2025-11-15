package com.edonornet.main.service;

import com.edonornet.main.model.Login_info;
import com.edonornet.main.repository.LoginRepo;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    public final LoginRepo loginRepo;
    public LoginService(LoginRepo loginRepo){
        this.loginRepo=loginRepo;
    }

    public void save(Login_info user_login){
        loginRepo.save(user_login);
    }


}
