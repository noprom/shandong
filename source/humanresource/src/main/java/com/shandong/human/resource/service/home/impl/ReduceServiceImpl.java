package com.shandong.human.resource.service.home.impl;

import com.shandong.human.resource.domain.Reduce;
import com.shandong.human.resource.mapper.home.ReduceMapper;
import com.shandong.human.resource.service.home.ReduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/27 19:50
 */
@Service
public class ReduceServiceImpl implements ReduceService{
    @Autowired
    private ReduceMapper reduceMapper;
    public ArrayList<Reduce> getTypeOfReason(int type)
    {
        return reduceMapper.getTypeOfReason(type);
    }
}
