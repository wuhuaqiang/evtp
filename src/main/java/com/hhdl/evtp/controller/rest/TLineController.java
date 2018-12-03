package com.hhdl.evtp.controller.rest;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.hhdl.evtp.model.TLine;
import com.hhdl.evtp.service.TLineService;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

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

    @RequestMapping("/list")
    public List<TLine> getPage() {
        Wrapper<TLine> tLineWrapper = new EntityWrapper<TLine>();
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
}

