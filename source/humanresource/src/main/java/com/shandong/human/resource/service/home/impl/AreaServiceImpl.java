package com.shandong.human.resource.service.home.impl;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.mapper.home.AreaMapper;
import com.shandong.human.resource.service.home.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/15 11:03
 */
@Service
public class AreaServiceImpl implements AreaService {
    @Autowired
    private AreaMapper areaMapper;
    /**
     * 按条件查找省份
     *
     * @return
     */
    public ArrayList<Area> getAllProvince()
    {
        return areaMapper.getAllProvince();
    }
    public ArrayList<Area> getAllCity()
    {
        return areaMapper.getAllCity();
    }
    public ArrayList<Area> getAllAreaById(int id)
    {
        return areaMapper.getAllAreaById(id);
    }
    public Area getById(int id)
    {
        return areaMapper.getById(id);
    }
}
