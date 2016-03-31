package com.shandong.human.resource.service.home;


import com.shandong.human.resource.domain.Area;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/15 10:59
 * MODIFY: SYC 2016/3/30 16:04 note： add note of getAllCity();
 */

public interface AreaService {
    //    获取所有的省份
    public ArrayList<Area> getAllProvince();

    /**
     * @brief 获取山东的城市
     * @return
     */
    public ArrayList<Area> getAllCity();


    public ArrayList<Area> getAllAreaById(int id);
    public Area getById(int id);

}
