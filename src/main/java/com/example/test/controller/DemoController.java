package com.example.test.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @RequestMapping(value = "/getString", method = {RequestMethod.GET , RequestMethod.POST})
    public String findString(){
        String ret = "{\"Hello\":\"Jenkins\"}";
        return  ret;
    }
}
