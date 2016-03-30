package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.MonitorInformation;
import com.shandong.human.resource.domain.MonitorInformationAddtion;

import javax.servlet.http.HttpServletRequest;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/14 下午2:25
 */
public interface MonitorService {

    public MonitorInformation getMonitorInformation();

    public MonitorInformationAddtion getMonitorInformationAddtion(HttpServletRequest request);
}
