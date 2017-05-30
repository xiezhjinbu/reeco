package action;

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
import java.io.File;

/**
 * Created by Administrator on 2017/5/22.
 */
@Controller
@RequestMapping("/")
public class UploadAction {

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

    @RequestMapping(value = "/addPic.do")
    public  String showPicItems(@RequestParam String id,Model model){
        Items items=itemsService.getItemsByID(id);
        model.addAttribute("items",items);

        return  "fileUploadDemo";
    }

    @RequestMapping(value = "/doPic.do")
    public String upload(@RequestParam(value = "file", required = false) MultipartFile file, @RequestParam(value = "productId") String productId, HttpServletRequest request, Model model) {

        System.out.println(productId);
        System.out.println(file.getName());
        //Items items=itemsService.getItemsByID(productId);
        String path = "images/product";
        String realPath=request.getSession().getServletContext().getRealPath(path);
        String fileName = file.getOriginalFilename();
        Picdata picdata=new Picdata();
        picdata.setPicName(fileName);
        picdata.setPicPath(path);
        picdata.setProductId(productId);
        int i=picDataService.addPic(picdata);
        System.out.println(picdata);
        System.out.println(i);
        File targetFile = new File(realPath, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);

        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        String result="error";
        if (i>0)
        {
            result="success";
        }

        return "redirect:itemsEdit.do?id="+productId;
    }

    @RequestMapping(value="/picDelete.do")
    public String delPic(@RequestParam(value="id") String id){
        Items items=picDataService.getItemsById(id);
        picDataService.deletePic(id);
        return "redirect:itemsEdit.do?id="+items.getId();
    }

}
