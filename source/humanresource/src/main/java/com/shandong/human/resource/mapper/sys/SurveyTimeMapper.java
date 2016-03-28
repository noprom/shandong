package com.shandong.human.resource.mapper.sys;

import com.shandong.human.resource.domain.SurveyTime;

import java.util.ArrayList;

/**
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 上午10:42
 *
 * Modified by SYC 3/20/16  :add insert
 */
public interface SurveyTimeMapper {

    /**
     * 获取所有调查时间
     *
     * @return
     */
    public ArrayList<SurveyTime> getAllSurveyTime();

    /**
     * @brief 向表中插入一个时间
     * @param time
     * @return
     */
    public Integer insertSurveyTime(SurveyTime time);

    public SurveyTime getAllSurveyTimeById(int id);
}


