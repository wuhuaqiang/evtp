package com.hhdl.evtp.controller.rest;

import com.hhdl.evtp.model.TChargingStation;
import com.hhdl.evtp.model.TRunLog;
import com.hhdl.evtp.model.TUser;
import com.hhdl.evtp.service.TChargingStationService;
import com.hhdl.evtp.service.TUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private TUserService tUserService;
    @Autowired
    private TChargingStationService tChargingStationService;

    @RequestMapping("/transfer")
    public String saveTRunLog(@RequestBody Map map) {
        try {
            String userId = (String) map.get("userId");
            String amount = (String) map.get("amount");

            String chargingStationId = (String) map.get("chargingStationId");
            TUser tUser = tUserService.selectById(userId);
            TChargingStation tChargingStation = tChargingStationService.selectById(chargingStationId);
            tUser.setAccount(String.valueOf(Double.valueOf(tUser.getAccount()) - Double.valueOf(amount)));
            tChargingStation.setAccount(String.valueOf(Double.valueOf(tChargingStation.getAccount()) + Double.valueOf(amount)));
            tUserService.insertOrUpdate(tUser);
            tChargingStationService.insertOrUpdate(tChargingStation);
        } catch (Exception e) {
            System.out.println(e);
        }

        return "success";
    }
}
