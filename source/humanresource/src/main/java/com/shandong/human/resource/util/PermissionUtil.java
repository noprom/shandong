package com.shandong.human.resource.util;

import com.shandong.human.resource.domain.Auth;

import java.util.Set;

/**
 * 检查权限的工具
 * <p>
 * Created by syc on 3/23/16.
 */
public class PermissionUtil {

    /**
     * 查询用户是否拥有对应url权限
     *
     * @param url   待查询权限
     * @param auths 用户拥有的权限
     * @return
     */
    public static boolean find(String url, Set<Auth> auths) {
        if (auths == null)
            return false;

        for (Auth r : auths) {
            if (r.getUrl().contains(url)) {
                return true;
            }
        }
        return false;
    }
}
