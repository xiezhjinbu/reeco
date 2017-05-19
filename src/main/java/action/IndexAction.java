package action;

import dao.CompanyInfoMapper;
import entity.CompanyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CompanyInfoService;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/5/19.
 */
@Controller
@RequestMapping("/")
public class IndexAction {

    private CompanyInfoService companyInfoService;

    @Autowired
    public void setCompanyInfoService(CompanyInfoService companyInfoService) {
        this.companyInfoService = companyInfoService;
    }

    @RequestMapping("/index.do")
    public String showIndex(Model model){

        CompanyInfo companyInfo=companyInfoService.getCompanyInfo();
        model.addAttribute("companyInfo",companyInfo);
        System.out.println(companyInfo.toString());
        return "index";
    }

}
