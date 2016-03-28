package com.shandong.human.resource.service.home;

import com.shandong.human.resource.domain.Company;

<<<<<<< HEAD
import java.util.List;
=======
import java.util.ArrayList;
>>>>>>> 15ac3b8b785a47c52ec8100202032fb5b31ea7c9

/**
 * Author: chenyongpeng <chen9121@foxmail.com>
 * Date: 2016/3/20 10:29
 */

public interface CompanyService {
    //    保存输入信息
    public void setCompanyInfo(Company company);
<<<<<<< HEAD

    List<Company> getCompanyNumberByCity();
=======
    public ArrayList<Company> isNull(int id);
    public Company getCompanyById(int id);
    public void updateCompanyInfo(Company company);
>>>>>>> 15ac3b8b785a47c52ec8100202032fb5b31ea7c9
}
