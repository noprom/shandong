package com.shandong.human.resource.controller.sys;

import com.shandong.human.resource.domain.MonitorInformation;
import com.shandong.human.resource.service.sys.MonitorService;
import com.shandong.human.resource.service.sys.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/14 下午2:15
 */
@Controller
public class MonitorController {

    //路径
    public static final String STATIC_PREFIX = "human-resource/sys";


    //监控类
    @Autowired
    private MonitorService monitorService;

    /**
     * Author: constantine <1194479264@qq.com>
     * Date: 16/3/14 下午2:15
     * 获取系统监控数据
     */
    @RequestMapping(value = "/sys/monitor", method = RequestMethod.GET)
    public String monitor(Model model) {

        MonitorInformation monitorInformation = monitorService.getMonitorInformation();

        //Constantine Testing code
//        System.out.println(monitorInformation.getCpuRatio());
//        System.out.println(monitorInformation.getFreeMemory());
//        System.out.println(monitorInformation.getFreePhysicalMemorySize());
//        System.out.println(monitorInformation.getMaxMemory());
//        System.out.println(monitorInformation.getOsName());
//        System.out.println(monitorInformation.getTotalMemory());
//        System.out.println(monitorInformation.getTotalMemorySize());
//        System.out.println(monitorInformation.getTotalThread());
//        System.out.println(monitorInformation.getUsedMemory());
        //end of testing

        model.addAttribute("m",monitorInformation);
        return STATIC_PREFIX + "/monitor";
    }
}
