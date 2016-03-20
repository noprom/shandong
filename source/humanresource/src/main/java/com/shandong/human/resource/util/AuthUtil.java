package com.shandong.human.resource.util;

import com.shandong.human.resource.domain.Auth;

import java.util.ArrayList;
import java.util.List;

/**
 * AuthUtil
 * 权限控制工具类
 *
 * Author: Noprom <tyee.noprom@qq.com>
 * Date: 3/20/16 1:43 PM.
 */
public class AuthUtil {

    private List<Auth> returnList = new ArrayList<Auth>();

    /**
     * 根据父id获得所有的子节点权限
     *
     * @param authList
     * @param pid
     * @return
     */
    public List<Auth> getChildAuth(List<Auth> authList, Integer pid) {
        for (Auth auth : authList) {
//            if (auth.getPid() == 0 && auth.getId().equals(pid))
        }
        return returnList;
    }
}
