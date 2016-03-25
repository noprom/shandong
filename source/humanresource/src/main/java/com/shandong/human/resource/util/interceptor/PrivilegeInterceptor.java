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


    // 静态资源前缀
    private static final String STATIC_PREFIX = "human-resource";


    private static final String STATIC_RESOURCE = "/static";

    /**
     * 默认可访问url
     */
    private static List<String> defaultUrl;
    static {
        defaultUrl = new ArrayList<String>();
        defaultUrl.clear();
        defaultUrl.add("/static");
        defaultUrl.add("/");
        defaultUrl.add("/404");
        defaultUrl.add("/500");
        defaultUrl.add("/login");
        defaultUrl.add("/logout");
        defaultUrl.add("/error");
    }

    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        HttpSession session = request.getSession();

        if(url == null){
            request.setAttribute("error","无效的链接");
            response.sendRedirect("/error");
            return true;
        }

        if(url.contains(STATIC_RESOURCE))
            return true;

        for(String r:defaultUrl){
            if(r.contains(url)){
                return true;
            }
        }

        if(session == null){
            request.setAttribute("error","您尚未登录");
            response.sendRedirect("/error");
            return true;
        }

        Set<Auth> auths = (Set<Auth>)session.getAttribute("auth");
        if(auths == null){
            request.setAttribute("error","您尚未登录");
            request.getRequestDispatcher("/error").forward(request, response);
            return true;
        }

        for(Auth r:auths){
            if(r.getUrl().contains(url)){
                return true;
            }
        }

        request.setAttribute("error","无效的访问请求");
        response.sendRedirect("/error");
        return  true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse
            httpServletResponse, Object handler, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse
            httpServletResponse, Object handler, Exception e) throws Exception {

    }
}
