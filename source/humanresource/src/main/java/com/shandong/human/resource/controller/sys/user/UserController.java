package com.shandong.human.resource.controller.sys.user;

import com.shandong.human.resource.domain.Area;
import com.shandong.human.resource.domain.Company;
import com.shandong.human.resource.domain.CompanyData;
import com.shandong.human.resource.domain.User;
import com.shandong.human.resource.service.home.AreaService;
import com.shandong.human.resource.service.home.CompanyService;
import com.shandong.human.resource.service.sys.*;
import com.shandong.human.resource.util.Constant;
import com.shandong.human.resource.util.Pager;
import com.shandong.human.resource.util.Result;
import com.shandong.human.resource.util.Pair;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.*;

/**
 * 用户控制器类
 * <p/>
 * Author: syc <522560298@qq.com>
 * Date: 3/19/16 下午2:15
 */
@RequestMapping("/sys")
@Controller
public class UserController {
    // 静态资源前缀
    public static final String STATIC_PREFIX = "human-resource/sys/user";

    protected Logger logger = Logger.getLogger(getClass());

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private AreaService areaService;

    @Autowired
    private UserRoleService userRoleService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private CompanyDataService companyDataService;

    @Autowired
    private SurveyTimeService surveyTimeService;

    /**
     * 用户列表
     *
     * @param pageNum
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String toShowPage(String pageNum, Model model,
                             HttpServletRequest request, HttpServletResponse response) {
        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(pageNum);
        } catch (Exception e) {
        }

        /*单页显示个数*/
        int pageSize = 10;
        Pager<User> pager = new Pager<User>(pageSize);
        pager.setCount(userService.getCount());
        pager.setCurrentPage(currentPage);
        int offset = pager.getMaxSize() * (currentPage - 1);
        int size = pager.getMaxSize();
        pager.setData(userService.selectByPos(offset, size));

        List<Area> cityList = areaService.getAllCity();
        List<Area> area = new ArrayList<Area>();
        for (Area r : cityList) {
            List area_ch = areaService.getAllAreaById(r.getId());
            area.addAll(area_ch);
        }

        model.addAttribute("pager", pager);
        model.addAttribute("cityList", cityList);
        model.addAttribute("roleList", roleService.selectAll());
        model.addAttribute("areaList", area);
        model.addAttribute("surveyTimeList", surveyTimeService.getAllSurveyTime());

        return STATIC_PREFIX + "/list";
    }

    /**
     * 新增用户
     *
     * @param user
     * @param request
     * @param response
     */
    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public
    @ResponseBody
    Result addUser(@Valid User user, Integer role, BindingResult result,
                   HttpServletRequest request, HttpServletResponse response) {
        if (result.hasErrors() || role == null) {
            return new Result(Result.Status.ERROR, Constant.USERNAME_ILLEGAL);
        }

        Integer uid = userService.insertUser(user);
        if (uid > 0) {
            Integer check = userRoleService.insertUserRole(user.getId(), role);
            if (check > 0) {
                return new Result(Result.Status.SUCCESS, Constant.DEAL_SUCCESS);
            } else {
                return new Result(Result.Status.ERROR, Constant.DEAL_FAIL);
            }
        } else {
            return new Result(Result.Status.ERROR, Constant.DEAL_FAIL);
        }
    }

    /**
     * 删除用户
     *
     * @param uid
     * @param request
     * @param response
     */
    @RequestMapping(value = "/user/delete", method = RequestMethod.GET)
    public void deleteUser(Integer uid, HttpServletRequest request, HttpServletResponse response) {
        try {
            userService.deleteByID(uid);
            response.sendRedirect("/sys/user");
        } catch (IOException e) {
            try {
                response.sendRedirect("/404");
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }
    }

    /**
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/user/search", method = RequestMethod.GET)
    public String toSelectUserPage(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<Area> cityList = areaService.getAllCity();
        List<Area> area = new ArrayList<Area>();
        for (Area r : cityList) {
            List area_ch = areaService.getAllAreaById(r.getId());
            area.addAll(area_ch);
        }
        model.addAttribute("cityList", cityList);
        model.addAttribute("roleList", roleService.selectAll());
        model.addAttribute("areaList", area);
        model.addAttribute("surveyTimeList", surveyTimeService.getAllSurveyTime());
        Set<User> qualifiedUser = new HashSet<User>();
        request.setAttribute("qualifiedUser", qualifiedUser);

        return STATIC_PREFIX + "/search";
    }

    /**
     * 用户条件查询
     *
     * @param model
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/user/search", method = RequestMethod.POST)
    public String selectUser(Model model, HttpServletRequest request, HttpServletResponse response) {

        /**
         * @param companyName  单位名称 模糊查询
         * @param userName     登陆账号
         * @param userType     用户类型
         * @param areaID       所属地市
         * @param address      所属市县 模糊查询
         * @param status       数据状态
         * @param business     单位性质 模糊查询
         * @param surveyTimeID 起始结束日期ID
         */
        String companyName = request.getParameter("companyName");
        String userName = request.getParameter("userName");
        String userType_s = request.getParameter("userType");
        Integer userType = null;
        if (userType_s != null) {
            try {
                userType = Integer.parseInt(userType_s);
            } catch (Exception e) {
                userType = null;
            }
        }
        String areaID_s = request.getParameter("areaID");
        Integer areaID = null;
        if (areaID_s != null) {
            try {
                areaID = Integer.parseInt(areaID_s);
            } catch (Exception e) {
                areaID = null;
            }
        }
        String address = request.getParameter("address");
        String status_s = request.getParameter("status");
        Integer status = null;
        if (status_s != null) {
            try {
                status = Integer.parseInt(status_s);
            } catch (Exception e) {
                status = null;
            }
        }
        String business = request.getParameter("business");
        String surveyTimeID_s = request.getParameter("surveyTimeID");
        Integer surveyTimeID = null;
        if (surveyTimeID_s != null) {
            try {
                surveyTimeID = Integer.parseInt(surveyTimeID_s);
            } catch (Exception e) {
                surveyTimeID = null;
            }
        }

        List<Set<Pair<User, Pair<Company, CompanyData>>>> data = new ArrayList<Set<Pair<User, Pair<Company, CompanyData>>>>();

        if (companyName != null && !companyName.isEmpty()) {
            List<Company> companies = companyService.fuzzySearchByName(companyName);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            for (Company r : companies) {
                User user = userService.selectByID(r.getId());
                if (user != null) {
                    data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(r, null)));
                }
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (userName != null && !userName.isEmpty()) {
            User user = userService.selectByName(userName);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (user != null) {
                data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(null, null)));
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (userType != null) {
            Set<User> users = new HashSet<User>();
            List<User> userList = userService.selectByType(userType);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (userList != null) {
                for (User r : userList) {
                    data_t.add(new Pair<User, Pair<Company, CompanyData>>(r, new Pair<Company, CompanyData>(null, null)));
                }
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (areaID != null) {
            List<Company> companies = companyService.selectByAreaID(areaID);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (companies != null) {
                for (Company r : companies) {
                    User user = userService.selectByID(r.getId());
                    if (user != null) {
                        data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(r, null)));
                    }
                }
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (address != null && !address.isEmpty()) {
            List<Company> companies = companyService.fuzzySearchByAddress(address);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (companies != null) {
                for (Company r : companies) {
                    User user = userService.selectByID(r.getId());
                    if (user != null) {
                        data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(r, null)));
                    }
                }
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (status != null) {
            List<CompanyData> companyDatas = companyDataService.selectByStatus(status);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (companyDatas != null) {
                for (CompanyData r : companyDatas) {
                    Company company = companyService.getCompanyById(r.getCompany_id());
                    User user = userService.selectByID(r.getCompany_id());
                    if (user != null) {
                        data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(company, r)));
                    }
                }
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (business != null && !business.isEmpty()) {
            List<Company> companies = companyService.fuzzySearchByBusiness(business);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (companies != null) {
                for (Company r : companies) {
                    User user = userService.selectByID(r.getId());
                    if (user != null) {
                        data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(r, null)));
                    }
                }
            }
            if (data_t.size() != 0) {
                data.add(data_t);
            }
        }

        if (surveyTimeID != null) {
            List<CompanyData> companyDatas = companyDataService.selectBySurveyTimeID(surveyTimeID);
            Set<Pair<User, Pair<Company, CompanyData>>> data_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
            if (companyDatas != null) {
                for (CompanyData r : companyDatas) {
                    Company company = companyService.getCompanyById(r.getCompany_id());
                    User user = userService.selectByID(r.getCompany_id());
                    if (user != null) {
                        data_t.add(new Pair<User, Pair<Company, CompanyData>>(user, new Pair<Company, CompanyData>(company, r)));
                    }
                }
            }
            if (data_t.size() != 0) {
                if (data_t.size() != 0) {
                    data.add(data_t);
                }
            }
        }

        Set<Pair<User, Pair<Company, CompanyData>>> finaldata = new HashSet<Pair<User, Pair<Company, CompanyData>>>();

        int data_size = data.size();
        if (data_size >= 1) {
            finaldata.addAll(data.get(0));
            for (int i = 1; i < data_size; ++i) {
                Set<Pair<User, Pair<Company, CompanyData>>> finaldata_t = new HashSet<Pair<User, Pair<Company, CompanyData>>>();
                for (Pair<User, Pair<Company, CompanyData>> r : data.get(i)) {
                    for (Pair<User, Pair<Company, CompanyData>> c : finaldata) {
                        if (contain(c, r)) {
                            finaldata_t.add(c);
                        } else if (contain(r, c)) {
                            finaldata_t.add(r);
                        }
                    }
                }
                finaldata = finaldata_t;
            }
        }

//        ArrayList<Pair<User, Pair<Company, CompanyData>>> dataArray = new ArrayList<Pair<User, Pair<Company, CompanyData>>>(data);
//        int size = dataArray.size();
//        for (int iter = 0; iter < size; iter++) {
//            int i;
//            for (i = 0; i < size; ++i) {
//                if (i == iter) {
//                    continue;
//                }
//                boolean userfit = (dataArray.get(iter).first.equals(dataArray.get(i).first));
//                boolean companyfit = (dataArray.get(iter).second.first == null) ||
//                        (dataArray.get(iter).second.first.equals(dataArray.get(i).second.first));
//                boolean companyDatafit = (dataArray.get(iter).second.second == null) ||
//                        (dataArray.get(iter).second.second.equals(dataArray.get(i).second.second));
//                if (userfit && companyfit && companyDatafit) {
//                    break;
//                }
//            }
//            if (i == size) {
//                finaldata.add(dataArray.get(iter));
//            }
//        }

        List<Area> cityList = areaService.getAllCity();
        List<Area> area = new ArrayList<Area>();
        for (Area r : cityList) {
            List area_ch = areaService.getAllAreaById(r.getId());
            area.addAll(area_ch);
        }
        model.addAttribute("data", finaldata);
        model.addAttribute("cityList", cityList);
        model.addAttribute("roleList", roleService.selectAll());
        model.addAttribute("areaList", area);
        model.addAttribute("surveyTimeList", surveyTimeService.getAllSurveyTime());
        return STATIC_PREFIX + "/search";
    }

    private boolean contain(Pair<User, Pair<Company, CompanyData>> lhs, Pair<User, Pair<Company, CompanyData>> rhs) {
        boolean userfit = (rhs.first.equals(rhs.first));
        boolean companyfit = (rhs.second.first == null) ||
                (lhs.second.first.equals(rhs.second.first));
        boolean companyDatafit = (rhs.second.second == null) ||
                (lhs.second.second.equals(rhs.second.second));
        if (userfit && companyDatafit && companyfit) {
            return true;
        } else {
            return false;
        }
    }
}