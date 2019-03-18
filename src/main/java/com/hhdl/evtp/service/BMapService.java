package com.hhdl.evtp.service;

public interface BMapService {
    public String getNearestChargingStation(String carId) throws Exception;

    public Boolean ifgoNearestChargingStation(String carId);
}
