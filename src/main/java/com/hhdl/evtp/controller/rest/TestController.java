package com.hhdl.evtp.controller.rest;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hhdl.evtp.model.*;
import com.hhdl.evtp.service.*;
import com.hhdl.evtp.util.UUIDKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
import java.util.Random;

@RestController
@RequestMapping("/test")
public class TestController {
    @Autowired
    private TLineService tLineService;
    @Autowired
    private TChargingStationService tChargingStationService;
    @Autowired
    private TChargingPileService tChargingPileService;
    @Autowired
    private TUserService tUserService;
    @Autowired
    private TElectricVehicleService tElectricVehicleService;
    @Autowired
    private TTransactionService tTransactionService;

    @RequestMapping(value = "/test")
    public String listAllProvince() {
        try {
            saveEv();
            saveUser();
            savelines();
            saveCp();
        } catch (Exception e) {
            System.out.println(e.getStackTrace());
        }

        return "success";
    }


    private void saveCs() {
        TChargingStation tChargingStation = new TChargingStation();
        Wrapper<TChargingPile> entityWrapper = new EntityWrapper<TChargingPile>();
        for (int i = 0; i < 10; i++) {
            tChargingStation.setId(UUIDKey.getKey());
            tChargingStation.setPosition(tChargingPileService.selectList(entityWrapper).get(i).getPosition());
            tChargingStation.setState("1");
            tChargingStationService.insertOrUpdate(tChargingStation);
        }
    }

    private void saveCp() {
        Wrapper<TChargingStation> entityWrapper = new EntityWrapper<TChargingStation>();
        TChargingPile tChargingPile = new TChargingPile();
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 8; j++) {
                tChargingPile.setId(UUIDKey.getKey());
                tChargingPile.setCsId(tChargingStationService.selectList(entityWrapper).get(i).getId());
                tChargingPile.setName("ChargingPile" + i + "-" + j);
                tChargingPile.setCapacity(10000.0);
                tChargingPile.setChargingEfficiency(95.0F);
                tChargingPile.setCreateTime(new Date());
                tChargingPile.setRunTime(new Date());
                tChargingPile.setPosition(tChargingStationService.selectList(entityWrapper).get(i).getPosition());
                tChargingPile.setPositionVal(tChargingStationService.selectList(entityWrapper).get(i).getPositionVal());
                tChargingPileService.insertOrUpdate(tChargingPile);
            }


        }
    }

    @RequestMapping(value = "/savelines")
    private void savelines() {
        TLine tLine = new TLine();
        Wrapper<TUser> entityWrapper = new EntityWrapper<TUser>();
        Wrapper<TChargingStation> entityWrapper2 = new EntityWrapper<TChargingStation>();
        String startPoint = null;
        String startPointVal = null;
        for (int i = 0; i < 10; i++) {
            startPoint = null;
            startPointVal = null;
            tLine.setOwerId(tUserService.selectList(entityWrapper).get(i).getId());
            for (int j = 0; j < 3; j++) {
                tLine.setId(UUIDKey.getKey());
                Random r = new Random();

                if (startPoint == null) {
                    int s = r.nextInt(9);
                    tLine.setStartPoint(tChargingStationService.selectList(entityWrapper2).get(s).getPosition());
                    tLine.setStartPointVal(tChargingStationService.selectList(entityWrapper2).get(s).getPositionVal());
                } else {
                    tLine.setStartPoint(startPoint);
                    tLine.setStartPointVal(startPointVal);
                }
                int e = r.nextInt(9);
                tLine.setEndPoint(tChargingStationService.selectList(entityWrapper2).get(e).getPosition());
                tLine.setEndPointVal(tChargingStationService.selectList(entityWrapper2).get(e).getPositionVal());
                startPoint = tLine.getEndPoint();
                startPointVal = tLine.getEndPointVal();
                tLine.setName("Line" + (j + 1));
                int h = r.nextInt(23);
                int m = r.nextInt(59);
                tLine.setStartTime(((h < 10) ? ("0" + h) : h) + ":" + ((m < 10) ? ("0" + m) : m));
                tLine.setEndTime((j * 2 + 5 + 4) + ":" + "05");
                tLine.setSort((i + 1) * 10 + (j + 1));
                tLine.setRemark("备注");
                tLineService.insertOrUpdate(tLine);
            }

        }
    }

    @RequestMapping(value = "/saveTransaction")
    private void saveTransaction() {
        Wrapper<TElectricVehicle> entityWrapper = new EntityWrapper<TElectricVehicle>();
        List<TElectricVehicle> tElectricVehicles = tElectricVehicleService.selectList(entityWrapper);
        Wrapper<TChargingStation> tChargingStationWrapper = new EntityWrapper<TChargingStation>();
        List<TChargingStation> tChargingStations = tChargingStationService.selectList(tChargingStationWrapper);
        TTransaction tTransaction = new TTransaction();
        for (int i = 0; i < tChargingStations.size(); i++) {
            tTransaction.setTxId(UUIDKey.getKey());
            tTransaction.setBlockNumber(i + 1);
            tTransaction.setTxFrom(tElectricVehicles.get(i).getId());
            tTransaction.setTxTo(tChargingStations.get(i).getId());
            tTransaction.setTxPower(new Random().nextDouble());
            tTransaction.setTxValue(new Random().nextDouble());
            tTransaction.setTxTime(new Date());
            tTransactionService.insertOrUpdate(tTransaction);
        }
    }

    private void saveUser() {
        TUser tUser = new TUser();
        Wrapper<TElectricVehicle> entityWrapper = new EntityWrapper<TElectricVehicle>();
        for (int i = 0; i < 10; i++) {
            tUser.setId(UUIDKey.getKey());
            tUser.setName("user" + (i + 1));
            tUser.setEvId(tElectricVehicleService.selectList(entityWrapper).get(i).getId());
            tUser.setState("1");
            tUser.setRemark("备注");
            tUser.setCreatedate("2018-12-04");
            tUserService.insertOrUpdate(tUser);
        }
    }

    private void saveEv() {
        TElectricVehicle tElectricVehicle = new TElectricVehicle();
        Wrapper<TChargingStation> entityWrapper = new EntityWrapper<TChargingStation>();
        for (int i = 0; i < 10; i++) {
            tElectricVehicle.setId(UUIDKey.getKey());
            tElectricVehicle.setPosition(tChargingStationService.selectList(entityWrapper).get(i).getPosition());
            tElectricVehicle.setPositionVal(tChargingStationService.selectList(entityWrapper).get(i).getPositionVal());
            tElectricVehicle.setPower(20000.0);
            tElectricVehicle.setSpeed(120.0);
            tElectricVehicle.setBatteryCapacity(20000.0);
            tElectricVehicle.setState("1");
            tElectricVehicle.setRemark("备注");
            tElectricVehicleService.insertOrUpdate(tElectricVehicle);
        }
    }

}