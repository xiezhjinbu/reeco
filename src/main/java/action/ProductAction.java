package action;

import entity.CompanyInfo;
import entity.ItemType;
import entity.Items;
import entity.Picdata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.CompanyInfoService;
import service.ItemTypeService;
import service.ItemsService;
import service.PicDataService;

import java.util.List;

/**
 * Created by Administrator on 2017/5/20.
 */
@Controller
@RequestMapping("/")
public class ProductAction {
    private CompanyInfoService companyInfoService;

    private ItemTypeService itemTypeService;

    private ItemsService itemsService;

    private PicDataService picDataService;

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

    @Autowired
    public void setPicDataService(PicDataService picDataService) {
        this.picDataService = picDataService;
    }

    @RequestMapping("/product.do")
    public String showSingleItems(@RequestParam(value="id") String id,Model model){

        CompanyInfo companyInfo=companyInfoService.getCompanyInfo();
        List<ItemType> lists=itemTypeService.getAllItemType();
        Items itemOne=itemsService.getItemsByID(id);
        List<Items> itemsList= itemsService.getItemsByClassType(itemOne.getClassType());
        List<Picdata> picdataList=picDataService.getPicDataByProductID(id);
        model.addAttribute("companyInfo",companyInfo);
        model.addAttribute("lists",lists);
        model.addAttribute("itemOne",itemOne);
        model.addAttribute("picdataList",picdataList);
        //System.out.println(companyInfo.toString());
        return "product";
    }
}
