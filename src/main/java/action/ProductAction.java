package action;

import common.FileUpload;
import entity.CompanyInfo;
import entity.ItemType;
import entity.Items;
import entity.Picdata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import service.CompanyInfoService;
import service.ItemTypeService;
import service.ItemsService;
import service.PicDataService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

    @RequestMapping("/itemlist.do")
    public String showItemList(Model model){

        List<Items> lists=itemsService.getAllItems();
        model.addAttribute("lists",lists);
        //System.out.println(companyInfo.toString());
        return "itemsList";
    }


    @RequestMapping("/itemsEdit.do")
    public String editItemList(@RequestParam(value="id") String id,Model model){

        List<ItemType> listTypes=itemTypeService.getAllItemType();
        Items items=itemsService.getItemsByID(id);
        model.addAttribute("items",items);
        model.addAttribute("listTypes",listTypes);
        //System.out.println(companyInfo.toString());
        return "itemsEdit";
    }

    @RequestMapping("/itemsModify.do")
    public String modifyItemList(@RequestParam(value = "inputfile") MultipartFile file,Items items, HttpServletRequest request, HttpServletResponse response) throws IOException {

        String filePath = FileUpload.uploadFile(file, request);
        Picdata picdata=new Picdata();
        picdata.setPicName(file.getName());
        picdata.setPicPath(filePath);
        picdata.setProductId(items.getId());

        ItemType itemType=itemTypeService.getItemTypeByClassType(items.getClassType());
        items.setClassName(itemType.getClassName());
        itemsService.modifyItem(items);
        picDataService.addPic(picdata);

        //System.out.println(companyInfo.toString());
        return "redirect:itemlist.do";
    }

    @RequestMapping("/itemsDelete.do")
    public String deleteItemList(@RequestParam(value="id") String id,Model model){

        itemsService.deleteItem(id);
        //System.out.println(companyInfo.toString());
        return "redirect:itemlist.do";
    }

    @RequestMapping("/itemsAdd.do")
    public String addItemList(Items items){

        ItemType itemType=itemTypeService.getItemTypeByClassType(items.getClassType());
        items.setClassName(itemType.getClassName());

        //System.out.println(items);
        itemsService.addItem(items);
        //
        return "redirect:itemlist.do";
    }

    @RequestMapping("/itemsIn.do")
    public String InItemList(Model model){

        List<ItemType> listTypes=itemTypeService.getAllItemType();
        model.addAttribute("listTypes",listTypes);
        //System.out.println(companyInfo.toString());
        return "itemsAdd";
    }
}
