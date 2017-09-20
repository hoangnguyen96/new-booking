package com.spring.booking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by PC on 09/20/17.
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String home(){return "index";}

    @RequestMapping(value = "/home")
    public String homeindex(){return "index";}

    @RequestMapping(value = "/login")
    public String login(){return "login";}

    @RequestMapping(value = "/register")
    public String register(){return "register";}

    @RequestMapping(value = "/forgotpassword")
    public String forgotpassword(){return "forgotpassword";}

    @RequestMapping(value = "/checkin")
    public String checkin(){return "checkin";}

    @RequestMapping(value = "/checkout")
    public String checkout(){return "checkout";}

    @RequestMapping(value = "/update")
    public String update(){return "info";}

    @RequestMapping(value = "/rooms")
    public String rooms(){return "rooms";}

    @RequestMapping(value = "/roomdetails")
    public String roomdetails(){return "roomdetails";}
}
