package action;

import entity.CompanyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CompanyInfoService;

/**
 * Created by Administrator on 2017/5/25.
 */
@Controller
@RequestMapping("/")
public class CompanyAction {

    private CompanyInfoService companyInfoService;

    @Autowired
    public void setCompanyInfoService(CompanyInfoService companyInfoService) {
        this.companyInfoService = companyInfoService;
    }

    @RequestMapping("/companyEdit.do")
    public String showCompanyInfo(Model model){

        //System.out.println("企业编辑");
        CompanyInfo companyInfo=companyInfoService.getCompanyInfo();
        //System.out.println(companyInfo.toString());
        model.addAttribute("companyInfo",companyInfo);

        return "companyEdit";
    }

    @RequestMapping("/companyModify.do")
    public String modifyCompanyInfo(@RequestParam CompanyInfo companyInfo, Model model){

        System.out.println(companyInfo);
        int i=companyInfoService.modifyCompanyInfo(companyInfo);
        //System.out.println(companyInfo.toString());
        model.addAttribute("i",i);

        return "companyShow";
    }
}
