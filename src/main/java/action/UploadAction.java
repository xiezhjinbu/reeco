package action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by Administrator on 2017/5/22.
 */
@Controller
public class UploadAction {

    @RequestMapping(value = "/upload.do")
    public String upload(@RequestParam(value = "file", required = false) MultipartFile file,@RequestParam(value = "username") String username,@RequestParam(value = "password") String password, HttpServletRequest request, ModelMap model) {

        System.out.println("开始"+username+":"+password);
        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
//        String fileName = new Date().getTime()+".jpg";
        System.out.println(path);
        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);

        return "result";
    }

}
