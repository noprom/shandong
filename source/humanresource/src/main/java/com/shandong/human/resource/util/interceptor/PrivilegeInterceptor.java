package com.shandong.human.resource.util.interceptor;

import com.shandong.human.resource.domain.Auth;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 登录拦截器
 *
 * @author tyee.noprom@qq.com
 * @time 2/7/16 10:16 AM.
 *
 * Modify SYC<522560298@qq.com>: Rewrite
 */
public class PrivilegeInterceptor implements HandlerInterceptor {

    /**
     * 默认可访问url
     */
    private static List<String> defaultUrl;
    static {
        defaultUrl = new ArrayList<String>();
        defaultUrl.clear();
        defaultUrl.add("/");
        defaultUrl.add("/404");
        defaultUrl.add("/500");
        defaultUrl.add("/login");
    }

    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        HttpSession session = request.getSession();


        if(url == null){
            response.sendRedirect("/404");
            return true;
        }

        for(String r:defaultUrl){
            if(r.contains(url)){
                return true;
            }
        }

        if(session == null){
            response.sendRedirect("/404");
            return true;
        }

        Set<Auth> auths = (Set<Auth>)session.getAttribute("auth");
        if(auths == null){
            response.sendRedirect("/500");
            return true;
        }

        for(Auth r:auths){
            if(r.getUrl().contains(url)){
                return true;
            }
        }

        response.sendRedirect("/500");
        return  true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse
            httpServletResponse, Object handler, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse
            httpServletResponse, Object handler, Exception e) throws Exception {

    }
}
