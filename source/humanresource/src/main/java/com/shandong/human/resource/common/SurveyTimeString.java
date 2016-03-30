package com.shandong.human.resource.common;

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/30 16:59
 */

public class SurveyTimeString {
    private int id;            //主键
    private String start_time;//开始时间
    private String end_time;  //结束时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }
}
