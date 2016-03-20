package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.SurveyTime;

import java.util.ArrayList;

/**
 * Created by syc on 3/20/16.
 */
public interface SurveyTimeService {

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
}
