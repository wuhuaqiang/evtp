package com.hhdl.evtp.controller.rest;


import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.hhdl.evtp.entity.HttpClientResult;
import com.hhdl.evtp.model.TLine;
import com.hhdl.evtp.model.TUser;
import com.hhdl.evtp.service.TLineService;
import com.hhdl.evtp.service.TUserService;
import com.hhdl.evtp.util.HttpClientUtils;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ${author}
 * @since 2018-11-26
 */
@RestController
@RequestMapping("/tLine")
public class TLineController {
    @Autowired
    private TLineService tLineService;
    @Autowired
    private TUserService tUserService;

    @RequestMapping("/list")
    public List<TLine> getPage() throws Exception {
        Wrapper<TLine> tLineWrapper = new EntityWrapper<TLine>();
//        tLineWrapper.where("name={0}", "Line1").orderBy("ower_id", true).orderBy("sort", true);
        tLineWrapper.orderBy("ower_id", true).orderBy("sort", true);
        return tLineService.selectList(tLineWrapper);
    }

    @RequestMapping("/save")
    public String saveLine(@RequestBody TLine tLine) {
        try {
            if (tLine.getId() == null) {
                tLine.setId(UUIDKey.getKey());
            }
            tLineService.insertOrUpdate(tLine);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/delbyId")
    public String delbyId(@RequestBody String id) {
        try {
            tLineService.deleteById(id);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/getLineByUserId")
    public List<TLine> getLineByUserId(@RequestParam String userId) {
        return tLineService.selectLineByUserId(userId);
    }

    @RequestMapping("/getAllLineGroupByUserId")
    public List getAllLineGroupByUserId() {
        Wrapper<TUser> tUserWrapper = new EntityWrapper<TUser>();
        List<Map> list = new ArrayList<>();
        List<TUser> tUsers = tUserService.selectList(tUserWrapper);
        for (TUser tUser : tUsers) {
            List<TLine> tLines = tLineService.selectLineByUserId(tUser.getId());
            Map<String, Object> map = new HashMap<>();
            map.put("userLines", tLines);
            map.put("userId", tUser.getId());
            list.add(map);
        }
        return list;
    }
}

