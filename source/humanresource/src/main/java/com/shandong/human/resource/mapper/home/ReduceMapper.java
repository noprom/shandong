package com.shandong.human.resource.mapper.home;

import com.shandong.human.resource.domain.Reduce;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/27 19:55
 */

public interface ReduceMapper {
    public ArrayList<Reduce> getTypeOfReason(int type);
}
