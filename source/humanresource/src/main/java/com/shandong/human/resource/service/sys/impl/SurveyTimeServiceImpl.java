package com.shandong.human.resource.service.sys.impl;

import com.shandong.human.resource.domain.AuthRole;
import com.shandong.human.resource.domain.SurveyTime;
import com.shandong.human.resource.mapper.sys.AuthRoleMapper;
import com.shandong.human.resource.mapper.sys.SurveyTimeMapper;
import com.shandong.human.resource.service.sys.AuthRoleService;
import com.shandong.human.resource.service.sys.SurveyTimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by syc on 3/16/16.
 */
@Service
public class SurveyTimeServiceImpl implements SurveyTimeService
{
    @Autowired
    SurveyTimeMapper service;

    public ArrayList<SurveyTime> getAllSurveyTime() {
        return service.getAllSurveyTime();
    }

    public Integer insertSurveyTime(SurveyTime time) {
        return service.insertSurveyTime(time);
    }

    public SurveyTime getAllSurveyTimeById(int id)
    {
        return service.getAllSurveyTimeById(id);
    }
}
