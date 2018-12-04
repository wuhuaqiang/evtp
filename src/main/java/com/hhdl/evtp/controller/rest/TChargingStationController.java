package com.hhdl.evtp.controller.rest;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hhdl.evtp.model.TChargingPile;
import com.hhdl.evtp.model.TChargingStation;
import com.hhdl.evtp.model.TChargingStationwithCp;
import com.hhdl.evtp.mybeanutils.MyBeanUtils;
import com.hhdl.evtp.service.TChargingPileService;
import com.hhdl.evtp.service.TChargingStationService;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author ${author}
 * @since 2018-12-03
 */
@RestController
@RequestMapping("/tChargingStation")
public class TChargingStationController {
    @Autowired
    private TChargingStationService tChargingStationService;
    @Autowired
    private TChargingPileService tChargingPileService;

    @RequestMapping("/list")
    public List<TChargingStation> getPage() {
        Wrapper<TChargingStation> TChargingStationWrapper = new EntityWrapper<TChargingStation>();
        return tChargingStationService.selectList(TChargingStationWrapper);
    }

    @RequestMapping("/save")
    public String saveLine(@RequestBody TChargingStation TChargingStation) {
        try {
            if (TChargingStation.getId() == null) {
                TChargingStation.setId(UUIDKey.getKey());
                TChargingStation.setCreateTime(new Date());
            }
            tChargingStationService.insertOrUpdate(TChargingStation);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/delbyId")
    public String delbyId(@RequestBody String id) {
        try {
            tChargingStationService.deleteById(id);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }

    @RequestMapping("/getChargingStationByName")
    public List<TChargingStationwithCp> getChargingStationByName(@RequestBody String name) {
        List<TChargingStationwithCp> list = new ArrayList<TChargingStationwithCp>();
        Wrapper<TChargingStation> tChargingStationWrapper = new EntityWrapper<TChargingStation>();
        Wrapper<TChargingPile> tChargingPileWrapper = new EntityWrapper<TChargingPile>();
        tChargingStationWrapper.where("name={0}", name);
        List<TChargingStation> tChargingStations = tChargingStationService.selectList(tChargingStationWrapper);
        for (TChargingStation tChargingStation : tChargingStations) {
            tChargingPileWrapper.where("cs_id={0}", tChargingStation.getId());
            List<TChargingPile> tChargingPiles = tChargingPileService.selectList(tChargingPileWrapper);
            TChargingStationwithCp stationwithCp = new TChargingStationwithCp();
            MyBeanUtils.copyProperties(tChargingStation, stationwithCp);
            stationwithCp.settChargingPiles(tChargingPiles);
            list.add(stationwithCp);
        }
        return list;

    }
}

