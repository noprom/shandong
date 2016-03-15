package com.shandong.human.resource.service.home;


import com.shandong.human.resource.domain.Area;

import java.util.ArrayList;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/15 10:59
 */

public interface AreaService {
    /**
     * 按条件查找省份
     *
     * @return
     */
    public ArrayList<Area> getAllProvince();

}
