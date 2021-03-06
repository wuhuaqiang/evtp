package com.hhdl.evtp.controller.rest;

import com.hhdl.evtp.service.DemoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by linwf on 2018/10/28.
 */
@Controller
@RequestMapping("/demo")
public class DemoController {
    @Resource
    private DemoService demoService;

    @RequestMapping(value = "/method", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
    @ResponseBody
    public String demoMethod(){
        return demoService.DemoMethod();
    }
}
