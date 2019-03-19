package com.hhdl.evtp.controller.rest;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hhdl.evtp.model.TDestination;
import com.hhdl.evtp.service.TDestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ${author}
 * @since 2019-03-19
 */
@RestController
@RequestMapping("/tDestination")
public class TDestinationController {
    @Autowired
    private TDestinationService tDestinationService;

    @RequestMapping("/list")
    public List<TDestination> getPage() throws Exception {
        Wrapper<TDestination> tDestinationWrapper = new EntityWrapper<TDestination>();
//        tLineWrapper.where("name={0}", "Line1").orderBy("ower_id", true).orderBy("sort", true);
        return tDestinationService.selectList(tDestinationWrapper);
    }
}

