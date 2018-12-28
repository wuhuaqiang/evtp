package com.hhdl.evtp.controller.rest;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hhdl.evtp.model.TElectricVehicle;
import com.hhdl.evtp.model.TTask;
import com.hhdl.evtp.service.TTaskService;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ${author}
 * @since 2018-12-28
 */
@RestController
@RequestMapping("/tTask")
public class TTaskController {
    @Autowired
    private TTaskService tTaskService;

    @RequestMapping("/list")
    public List<TTask> getList() {
        Wrapper<TTask> tTaskWrapper = new EntityWrapper<TTask>();
        return tTaskService.selectList(tTaskWrapper);
    }

    @RequestMapping("/save")
    public String saveTask(@RequestBody TTask tTask) {
        try {
            if (tTask.getId() == null) {
                tTask.setId(UUIDKey.getKey());
            }
            tTaskService.insertOrUpdate(tTask);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/update")
    public String updateTask(@RequestBody TTask tTask) {
        try {
            tTaskService.insertOrUpdate(tTask);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/delbyId")
    public String delbyId(@RequestBody String id) {
        try {
            tTaskService.deleteById(id);
        } catch (Exception e) {
            System.out.println(e);
        }
        return "success";
    }
}

