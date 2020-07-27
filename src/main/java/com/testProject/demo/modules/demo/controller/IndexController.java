package com.testProject.demo.modules.demo.controller;

import com.tydic.open.DopApiException;
import com.tydic.open.DopApiV1;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

/**
 * @author yuqiqi
 * @date 2020/7/6 16:51
 */
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/demo/sdk")
    public String getSdkPage(){
        return "/demo/sdk";
    }

    @RequestMapping("/getSdk")
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String data = getSdk();
        request.setAttribute("data", data);
        request.getRequestDispatcher("/demo/sdk").forward(request, response);//这里是转发重定向，可以转发到我们要传值的test.jsp页面
    }

//    @ResponseBody
//    @RequestMapping("/getSdk")
    public String getSdk(){
        String resp="";
        // 用户信息
        // 必须16位
        String sKey = "3ef0a4a098344acb";
        // 用户的token
        String token = "7b00c9684fb94b858d820232f6456edb";

        // OpenAPI的服务器IP
        String serverName = "http://10.142.101.156/openapi";

        DopApiV1 dopApiV1 = new DopApiV1(sKey);
        dopApiV1.setServerName(serverName);

        // 指定OpenApi Cgi名字
        String scriptName = "/report/h_test_0708";

        // 填充URL请求参数
        HashMap<String, String> params = new HashMap<String, String>();

        params.put("token", token);
//		params.put("accs_nbr", "18195123431");

        try {
            resp = dopApiV1.decryptApi(scriptName, params);
            System.out.println(resp);
        } catch (DopApiException e) {
            System.out.printf("Request Failed. code:%d, msg:%s", e.getErrorCode(), e.getMessage());
            e.printStackTrace();
        }

        return resp;

    }
}
