package com.shandong.human.resource.common;

import com.shandong.human.resource.domain.Auth;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by syc on 3/14/16.
 * Author SYC
 */
public class AuthTree {
    private List<Auth> _Auths;      /**<所有权限*/
    private int _Now;               /**<当前所在的权限位置*/
    private int _Level;             /**<当前权限树的等级*/

    /**
     * @brief 构造函数
     * @param iniLevel 该权限树等级
     * @param auths 原始权限列表
     */
    public AuthTree(int iniLevel,final List<Auth> auths){
        _Level = iniLevel;

        _Auths = new ArrayList<Auth>();
        _Auths.clear();
        for (Auth r:auths) {
            if(r.getLevel()>=_Level){
                _Auths.add(r);
            }
        }
        for(_Now = 0;_Now<_Auths.size();_Now++){
            if(_Auths.get(_Now).getLevel() == _Level )
                break;
        }
    }
    /**
     * @brief 寻找并指向到下一个该等级Auth
     * @return
     */
    public boolean gotoNext(){
        for(_Now++;_Now<_Auths.size();_Now++){
            if(_Auths.get(_Now).getLevel()==_Level)
                return true;
        }
        return false;
    }
    /**
     * @brief 获取当前Auth
     * @return 当前Auth，如果没有，则返回null
     */
    public Auth now(){
        if(_Now<_Auths.size())
            return _Auths.get(_Now);
        return null;
    }

    /**
     * @brief 获取以当前权限为上级权限的Auth构成的级别+1的AuthTree
     * @return 子AuthTree 若不存在，则返回null
     */
    public AuthTree childAuths(){
        if(_Now>=_Auths.size())
            return null;

        List<Auth> auths= new ArrayList<Auth>();
        int nextLevel = _Level+1;
        for(int next = _Now+1;next<_Auths.size();++next){
            if((_Auths.get(next).getLevel() == nextLevel && _Auths.get(next).getPid() == this.now().getId())
                ||_Auths.get(next).getLevel()>=nextLevel+1)
                auths.add(_Auths.get(next));
        }
        if(auths.isEmpty())
            return null;

        AuthTree child = new AuthTree(nextLevel,auths);
        if(child.now() == null)
            return null;

        return child;
    }
}
