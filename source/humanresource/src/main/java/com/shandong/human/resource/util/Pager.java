package com.shandong.human.resource.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 自定义分页类
 * 分页信息主要包括几个：
 * 当前页|每页显示数|总页数|总数量|分页返回的信息
 *
 * @author tyee.noprom@qq.com
 * @time 2/12/16 11:00 AM.
 *
 * SYC 更改于 3/19
 */
public class Pager<T> {

    /**
     * 当前页数
     */
    private int _CurrentPage;

    /**
     * 每页显示数
     */
    private int _Size;

    /**
     * 每页最大显示数
     */
    private int _MaxSize;

    /**
     * 总页数
     */
    private int _TotalPage;

    /**
     * 记录总数
     */
    private int _Count;

    /**
     * 分页信息
     */
    private List<T> _Data;

    /**
     * @brief 构造函数
     * @param maxSize 单页最多显示数目
     */
    public Pager(int maxSize){
        _MaxSize = maxSize;
        if(_MaxSize < 1)
            _MaxSize =1;

        _Data = new ArrayList<T>();
        _CurrentPage=1;
    }

    public void setCount(int count) {
        _Count = count;

        _TotalPage = _Count/_MaxSize;
        if(_TotalPage*_MaxSize<_Count)
            _TotalPage++;
    }

    public void setCurrentPage(int currentPage) {
        _CurrentPage = currentPage;
    }

    public void setData(List<T> data) {
        _Data = data;
        _Size = _Data.size();
    }

    public int getCount() {
        return _Count;
    }

    public int getCurrentPage() {
        return _CurrentPage;
    }

    public int getMaxSize() {
        return _MaxSize;
    }

    public int getSize() {
        return _Size;
    }

    public int getTotalPage() {
        return _TotalPage;
    }

    public List<T> getData() {
        return _Data;
    }
}
