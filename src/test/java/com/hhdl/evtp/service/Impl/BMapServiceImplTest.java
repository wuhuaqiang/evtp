package com.hhdl.evtp.service.Impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.hhdl.evtp.dao.TChargingStationDao;
import com.hhdl.evtp.dao.TElectricVehicleDao;
import com.hhdl.evtp.entity.HttpClientResult;
import com.hhdl.evtp.model.TChargingStation;
import com.hhdl.evtp.model.TElectricVehicle;
import com.hhdl.evtp.util.HttpClientUtils;
import com.hhdl.evtp.util.StringUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BMapServiceImplTest {
    @Autowired
    private TElectricVehicleDao tElectricVehicleDao;
    @Autowired
    private TChargingStationDao tChargingStationDao;

    @Test
    public void getNearestChargingStation() throws Exception {
        String carId = "08264b41b18c40c782216e1c4c9c9c2a";
        TElectricVehicle tElectricVehicle = tElectricVehicleDao.selectById(carId);
        String[] split1 = tElectricVehicle.getPositionVal().split(",");
        String origin = split1[1] + "," + split1[0];
        Wrapper<TChargingStation> tChargingStationWrapper = new EntityWrapper<TChargingStation>();
        List<TChargingStation> tChargingStations = tChargingStationDao.selectList(tChargingStationWrapper);
        String destination = "";
        for (TChargingStation tChargingStation : tChargingStations) {
            String[] split = tChargingStation.getPositionVal().split(",");
            destination += split[1] + "," + split[0] + "|";

        }
        String destinations = destination.substring(0, destination.length() - 1);
        System.out.println(destination);
        System.out.println(origin);
        Map param = new HashMap();
        param.put("output", "json");
        param.put("origins", origin);
        param.put("destinations", destinations);
        HttpClientResult httpClientResult = HttpClientUtils.doGet("http://api.map.baidu.com/routematrix/v2/driving", param);
        JSONObject jsonObject = JSONObject.parseObject(httpClientResult.getContent());
        Map<String, Object> map = new HashMap<String, Object>();
        map.putAll(jsonObject);
        JSONArray result = (JSONArray) map.get("result");
        String minValue = "";
        for (Object object : result) {
            JSONObject jsonObject1 = (JSONObject) object;
            JSONObject distance = jsonObject1.getJSONObject("distance");
            String value = distance.getString("value");
            System.out.println(value);
            if (StringUtil.isEmpty(minValue)) {
                minValue = value;
            } else {
                if (Integer.valueOf(minValue) > Integer.valueOf(value)) {
                    minValue = value;
                }
            }
            System.out.println(value);
        }

        System.out.println(result);
        System.err.println(minValue);
    }

    @Test
    public void ifgoNearestChargingStation() {
    }
}