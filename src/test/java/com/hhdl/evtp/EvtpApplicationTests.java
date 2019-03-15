package com.hhdl.evtp;

import com.alibaba.fastjson.JSONObject;
import com.hhdl.evtp.entity.HttpClientResult;
import com.hhdl.evtp.util.HttpClientUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashMap;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EvtpApplicationTests {

    @Test
    public void contextLoads() {
//        HFCAClient caClient = null;
//        try {
//            caClient = HFCAClient.createNewInstance("http://10.211.55.23:7054", null);        // enroll or load admin
//
//        } catch (Exception e) {
//
//        }
//        HFUser admin = getAdmin(caClient);
//        log.info(admin.toString());
//        // register and enroll new user
//        HFUser hfUser = getUser(caClient, admin, "wesker");
//        log.info(hfUser.toString());
//        // get HFC client instance
//        HFClient client = getHfClient();
//        // set user context
//        client.setUserContext(admin);
//        // get HFC channel using the client
//        Chan
//        Channel channel = getChannel(client);
//        log.info("Channel: " + channel.getName());
//        // query alll account list
//        queryBlockChain(client, "list");
//        //update
//        invokeBlockChain(client, "update", "ACCOUNT1", "jill_1");
//        // query by condition
//        queryBlockChain(client, "query", "ACCOUNT1");

    }
    @Test
    public void httpClient() throws Exception {
        Map param = new HashMap();
        param.put("output", "json");
        param.put("origins", "40.45,116.34");
        param.put("destinations", "40.34,116.45");
        HttpClientResult httpClientResult = HttpClientUtils.doGet("http://api.map.baidu.com/routematrix/v2/driving", param);
        JSONObject jsonObject = JSONObject.parseObject(httpClientResult.getContent());
        Map<String, Object> map = new HashMap<String, Object>();
        map.putAll(jsonObject);
        System.out.println(map.get("result"));
        Map param1 = new HashMap();
//        param.put("output", "json");
        param.put("origin", "40.01116,116.339303");
        param.put("destination", "39.936404,116.452562");
        HttpClientResult httpClientResult1 = HttpClientUtils.doGet("http://api.map.baidu.com/direction/v2/driving", param);
        JSONObject jsonObject1 = JSONObject.parseObject(httpClientResult1.getContent());
        Map<String, Object> map1 = new HashMap<String, Object>();
        map1.putAll(jsonObject1);
        System.out.println(map1.get("result"));
    }

}
