package com.shandong.human.resource.service.sys;

import com.shandong.human.resource.domain.User;

/**
 *
 * Created by constantine on 16/3/8.
 */
public interface UserService {

    /**
     * 登陆
     *
     * @return
     */
    public User login(String username, String password);
}
