package action;

import dao.CompanyInfoMapper;
import entity.CompanyInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/5/19.
 */
@Controller
@RequestMapping("/")
public class IndexAction {

    @Resource
    private CompanyInfoMapper companyInfoMapper;

    @RequestMapping("/index.do")
    public String showIndex(Model model){

        CompanyInfo companyInfo=companyInfoMapper.selectCompanyInfo();
        model.addAttribute("companyInfo",companyInfo);
        System.out.println(companyInfo.toString());
        return "index";
    }

}
