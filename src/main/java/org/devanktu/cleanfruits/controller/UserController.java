package org.devanktu.cleanfruits.controller;

import org.devanktu.cleanfruits.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model){
        String test = this.userService.handleHelloWord();
        model.addAttribute("anktu", test);
        return "hello";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model){
        String test = this.userService.handleHelloWord();
        model.addAttribute("anktu", test);
        return "admin/user/create";
    }

}
