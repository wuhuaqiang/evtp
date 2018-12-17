package com.hhdl.evtp.controller.rest;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.hhdl.evtp.model.TLine;
import com.hhdl.evtp.model.TTransaction;
import com.hhdl.evtp.model.TUser;
import com.hhdl.evtp.service.TLineService;
import com.hhdl.evtp.service.TTransactionService;
import com.hhdl.evtp.service.TUserService;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ${author}
 * @since 2018-12-17
 */
@RestController
@RequestMapping("/tTransaction")
public class TTransactionController {

    @Autowired
    private TTransactionService tTransactionService;

    @RequestMapping("/list")
    public List<TTransaction> getPage() {
        Wrapper<TTransaction> tTransactionWrapper = new EntityWrapper<TTransaction>();
        tTransactionWrapper.orderBy("block_number", true);
        return tTransactionService.selectList(tTransactionWrapper);
    }

    @RequestMapping("/save")
    public String saveLine(@RequestBody TTransaction tTransaction) {
        try {
            if (tTransaction.getTxId() == null) {
                tTransaction.setTxId(UUIDKey.getKey());
            }
            tTransactionService.insertOrUpdate(tTransaction);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/delbyId")
    public String delbyId(@RequestBody String id) {
        try {
            tTransactionService.deleteById(id);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }


    @RequestMapping("/page")
    public Page getAllLineGroupByUserId() {
        Page<TTransaction> page = new Page<TTransaction>(1,5);
        return tTransactionService.selectPage(page);
    }
}

