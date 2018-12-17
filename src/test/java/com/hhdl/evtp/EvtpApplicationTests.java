package com.hhdl.evtp;

import com.hhdl.evtp.test.HFUser;
import org.hyperledger.fabric.sdk.Channel;
import org.hyperledger.fabric.sdk.HFClient;
import org.hyperledger.fabric_ca.sdk.HFCAClient;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

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

}
