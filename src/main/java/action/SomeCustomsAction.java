package action;

import entity.CompanyInfo;
import entity.ItemType;
import entity.Items;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CompanyInfoService;
import service.ItemTypeService;
import service.ItemsService;

import java.util.List;

/**
 * Created by Administrator on 2017/5/20.
 */
@Controller
@RequestMapping("/")
public class SomeCustomsAction {

    private CompanyInfoService companyInfoService;

    private ItemTypeService itemTypeService;

    private ItemsService itemsService;

    @Autowired
    public void setCompanyInfoService(CompanyInfoService companyInfoService) {
        this.companyInfoService = companyInfoService;
    }

    @Autowired
    public void setItemTypeService(ItemTypeService itemTypeService) {
        this.itemTypeService = itemTypeService;
    }

    @Autowired
    public void setItemsService(ItemsService itemsService) {
        this.itemsService = itemsService;
    }

    @RequestMapping("/someCustomer.do")
    public String showSomeCustomer(@RequestParam(value="classType") int classType,Model model){

        CompanyInfo companyInfo=companyInfoService.getCompanyInfo();
        List<ItemType> lists=itemTypeService.getAllItemType();
        List<Items> items=itemsService.getItemsByClassType(classType);
        String className=items.get(0).getClassName();
        model.addAttribute("companyInfo",companyInfo);
        model.addAttribute("lists",lists);
        model.addAttribute("items",items);
        model.addAttribute("className",className);
        //System.out.println(companyInfo.toString());
        return "someCustomer";
    }
}