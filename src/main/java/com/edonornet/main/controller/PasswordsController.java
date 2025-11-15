package com.edonornet.main.controller;


import com.edonornet.main.model.User;
import com.edonornet.main.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class PasswordsController {

    public UserService userService;

    public PasswordsController(UserService userService){
        this.userService=userService;
    }


    @GetMapping("/forget")
    public String forget(){
        return "forgetpassword";
    }

    @PostMapping("/passwordreset")
    public String reset(@RequestParam String email, HttpSession session){
        User user=userService.find(email);
        if(user==null)
            return "notfound";
        else{
            session.setAttribute("demouser",user);
            return "redirect:/resetpassword";
        }
    }

    @GetMapping("/resetpassword")
    public String set(){
        return "resetpassword";
    }

    @PostMapping("/reset_password")
    public String pass(String password,HttpSession session){
        User user= (User) session.getAttribute("demouser");
        userService.resetpassword(password,user.getEmail());
        return "signin";
    }
}
