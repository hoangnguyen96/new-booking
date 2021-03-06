package com.spring.booking.controller;

import com.spring.booking.entities.UserEntity;
import com.spring.booking.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by PC on 09/20/17.
 */
@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping(method = RequestMethod.GET)
    public String showUser(Model model){
        List<UserEntity> userList = (List<UserEntity>) userRepository.findAll();
        model.addAttribute("userList",userList);
        return "../admin/user";
    }

}
