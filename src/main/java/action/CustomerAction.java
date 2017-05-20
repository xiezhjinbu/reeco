package action;

import entity.CompanyInfo;
import entity.ItemType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CompanyInfoService;
import service.ItemTypeService;

import java.util.List;

/**
 * Created by Administrator on 2017/5/20.
 */
@Controller
@RequestMapping("/")
public class CustomerAction {

    private CompanyInfoService companyInfoService;

    private ItemTypeService itemTypeService;

    @Autowired
    public void setCompanyInfoService(CompanyInfoService companyInfoService) {
        this.companyInfoService = companyInfoService;
    }

    @Autowired
    public void setItemTypeService(ItemTypeService itemTypeService) {
        this.itemTypeService = itemTypeService;
    }


    @RequestMapping("/customer.do")
    public String showItems(Model model){

        CompanyInfo companyInfo=companyInfoService.getCompanyInfo();
        List<ItemType> lists=itemTypeService.getAllItemType();
        model.addAttribute("companyInfo",companyInfo);
        model.addAttribute("lists",lists);
        //System.out.println(companyInfo.toString());
        return "customer";
    }
}
