package com.toy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignController {

    @RequestMapping(value = "/sign/in")
    public String signInPage() throws Exception {
        System.out.println("Controller Name : selectBoardList");

        return "sign/signIn";
    }
}
