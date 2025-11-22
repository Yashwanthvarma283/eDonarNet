package com.edonornet.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RecipientController {

    @GetMapping("/recipient_info")
    public String recipient_info(){
        return "recipient_info";
    }

}
