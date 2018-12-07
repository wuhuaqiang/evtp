package com.hhdl.evtp.controller.rest;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hhdl.evtp.model.*;
import com.hhdl.evtp.mybeanutils.MyBeanUtils;
import com.hhdl.evtp.service.TElectricVehicleService;
import com.hhdl.evtp.service.TLineService;
import com.hhdl.evtp.service.TUserService;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ${author}
 * @since 2018-12-03
 */
@RestController
@RequestMapping("/tElectricVehicle")
public class TElectricVehicleController {
    @Autowired
    private TLineService tLineService;
    @Autowired
    private TUserService tUserService;
    @Autowired
    private TElectricVehicleService tElectricVehicleService;

    @RequestMapping("/list")
    public List<TElectricVehicle> getPage() {
        Wrapper<TElectricVehicle> tElectricVehicleWrapper = new EntityWrapper<TElectricVehicle>();
        return tElectricVehicleService.selectList(tElectricVehicleWrapper);
    }

    @RequestMapping("/save")
    public String saveLine(@RequestBody TElectricVehicle tElectricVehicle) {
        try {
            if (tElectricVehicle.getId() == null) {
                tElectricVehicle.setId(UUIDKey.getKey());
            }
            tElectricVehicleService.insertOrUpdate(tElectricVehicle);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/update")
    public String updateLine(@RequestBody TElectricVehicle tElectricVehicle) {
        try {
            TElectricVehicle electricVehicle = tElectricVehicleService.selectById(tElectricVehicle.getId());
            electricVehicle.setPositionVal(tElectricVehicle.getPositionVal());
            electricVehicle.setPosition(tElectricVehicle.getPosition());
            electricVehicle.setPosition(tElectricVehicle.getPosition());
            tElectricVehicleService.insertOrUpdate(electricVehicle);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/delbyId")
    public String delbyId(@RequestBody String id) {
        try {
            tElectricVehicleService.deleteById(id);
        } catch (Exception e) {
            System.out.println(e);
        }
        return "success";
    }

    @RequestMapping("/getAllListWithLine")
    public List<Map> getAllTElectricVehicleWithLine() {
        /* List<TElectricVehicleWithLine> list = new ArrayList<TElectricVehicleWithLine>();*/
//        Wrapper<TElectricVehicle> tElectricVehicleEntityWrapper = new EntityWrapper<TElectricVehicle>();
        List<Map> mapList = tElectricVehicleService.selectListWithUserId();
        for (Map map : mapList) {
            String userId = map.get("userId").toString();
            Wrapper<TLine> tLineWrapper = new EntityWrapper<TLine>();
            tLineWrapper.where("ower_id={0}", userId).orderBy("sort", true);
            List<TLine> tLines = tLineService.selectList(tLineWrapper);
            map.put("lines", tLines);

        }
        return mapList;

    }

    @RequestMapping("/getEVWithLineById")
    public TElectricVehicleWithLine getElectricVehicleWithLineById(@RequestBody Map<String, String> param) {
        TElectricVehicleWithLine vehicleWithLine = new TElectricVehicleWithLine();
        try {

            TUser tUser = tUserService.selectById(param.get("userId"));
            TElectricVehicle tElectricVehicle = tElectricVehicleService.selectById(param.get("evId"));
            Wrapper<TLine> tLineWrapper = new EntityWrapper<TLine>();
            tLineWrapper.where("ower_id={0}", param.get("userId")).orderBy("sort", true);
            List<TLine> tLines = tLineService.selectList(tLineWrapper);
            MyBeanUtils.copyProperties(tElectricVehicle, vehicleWithLine);
            vehicleWithLine.setUserName(tUser.getName());
            vehicleWithLine.settLines(tLines);

        } catch (Exception e) {

        }

        return vehicleWithLine;

    }
}

