package com.hhdl.evtp.service.Impl;

import com.hhdl.evtp.dao.FabricConfigMapper;
import com.hhdl.evtp.model.FabricConfigModel;
import com.hhdl.evtp.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by linwf on 2018/10/28.
 */
@Service("simpleService")
public class DemoServiceImpl implements DemoService {
    @Autowired
    private FabricConfigMapper fabricConfigMapper;

    @Override
    public String DemoMethod() {
        //SdkManager manager = SdkManager.getInstance();
        //return manager.DemoMethod();
        List<FabricConfigModel> fabricConfigModels = fabricConfigMapper.queryFabricConfig("1");
        return "";
    }
}
