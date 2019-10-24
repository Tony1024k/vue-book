package com.learn.vuebook.utils;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class SmsUtil {
    public static Map SendSms(String phone, String code) throws ClientException, IOException {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4FgoS8Ga3hKhnhDnKvgn", "KBsDLXnjr6tD99gi3yVIqPgRHi5Hgl");
        IAcsClient client = new DefaultAcsClient(profile);
        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("RegionId", "cn-hangzhou");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "LearnJava");
        request.putQueryParameter("TemplateCode", "SMS_174278476");
        request.putQueryParameter("TemplateParam", "{\"code\":\"" + code + "\"}");
        CommonResponse response = client.getCommonResponse(request);
        ObjectMapper objectMapper = new ObjectMapper();
        Map Obj = objectMapper.readValue(response.getData(), HashMap.class);

        System.out.println(response.getData());
        return Obj;
    }
}
