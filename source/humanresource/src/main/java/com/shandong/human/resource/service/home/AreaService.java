package com.shandong.human.resource.service.home;


import com.shandong.human.resource.domain.Area;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/15 10:59
 */

public interface AreaService {
    //    获取所有的省份
    public ArrayList<Area> getAllProvince();
    //    获取所有的城市
    public ArrayList<Area> getAllCity();
    public ArrayList<Area> getAllAreaById(int id);
    public Area getById(int id);

}
