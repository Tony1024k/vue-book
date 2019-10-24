package com.learn.vuebook.controller;

import com.aliyuncs.exceptions.ClientException;
import com.learn.vuebook.entity.RespBean;
import com.learn.vuebook.utils.SmsUtil;
import com.learn.vuebook.utils.VerifyCodeUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Map;

@Slf4j
@RestController
@RequestMapping("/")
public class VerifyCodeController {
    @RequestMapping(value = "/verifyCode")  //获取验证码
    public RespBean getVerifyCode(String phone, HttpServletRequest request, HttpServletResponse response) throws IOException, ClientException {
        HttpSession session = request.getSession(true);
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        // 生成随机字串并放入session
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        session.removeAttribute("verCode");
        session.removeAttribute("codeTime");
        session.setAttribute("verCode", verifyCode.toLowerCase());
        session.setAttribute("codeTime", LocalDateTime.now());
        Map obj= SmsUtil.SendSms(phone, verifyCode.toLowerCase());
        if ("ok".equalsIgnoreCase((String) obj.get("Code"))){
            return RespBean.ok("验证码已发送");
        }else {
            return RespBean.error("发送失败");
        }
    }
}
