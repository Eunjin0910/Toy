package com.toy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignController {

    @RequestMapping(value = "/sign/page")
    public String signInPage() throws Exception {
        System.out.println("Controller Name : signInPage");

        return "sign/signIn";
    }

    @RequestMapping(value = "/sign/in")
    public void signIn() throws Exception {
        System.out.println("Controller Name : signIn");


    }
}
