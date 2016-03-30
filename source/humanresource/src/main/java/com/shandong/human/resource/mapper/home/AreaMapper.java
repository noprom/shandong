package com.shandong.human.resource.mapper.home;

import com.shandong.human.resource.domain.Area;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/15 10:53
 */

public interface AreaMapper {
    //获取所有的省份
    public ArrayList<Area> getAllProvince();
    //获取所有的城市
    public ArrayList<Area> getAllCity();
    //获取所有的县
    public ArrayList<Area> getAllAreaById(int id);
    //获取相应的id
    public Area getById(int id);
}
