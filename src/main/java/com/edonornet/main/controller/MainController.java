package com.edonornet.main.controller;


import com.edonornet.main.model.Donor;
import com.edonornet.main.model.Recipient;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/user")
public class MainController {

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model){
        //here the login can be validated again...
        model.addAttribute(session.getAttribute("logged_user"));
        List<Donor> donations = (List<Donor>) session.getAttribute("donations");
        List<Recipient> requests = (List<Recipient>) session.getAttribute("requests");
        model.addAttribute("donations",donations==null? Collections.emptyList():donations);
        model.addAttribute("requests",requests==null?Collections.emptyList():requests);
        return "dashboard";
    }

    @GetMapping("/donor")
    public String donor(Model model,HttpSession session){
        model.addAttribute(session.getAttribute("logged_user"));
        return "donor";
    }

    @GetMapping("/recipient")
    public String recipient(Model model,HttpSession session){
        model.addAttribute(session.getAttribute("logged_user"));
        return "recipient";
    }

    @PostMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }
    
}
