package com.hhdl.evtp.controller.rest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
public class TestController {

    @RequestMapping(value = "getName")
    public String listAllProvince(){
        return "hello";
    }

}