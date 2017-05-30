package action;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.File;
/**
 * Created by Administrator on 2017/5/30.
 */
@Controller
@RequestMapping(value = "/fileUpload")
public class UploadDemo {

    @RequestMapping(value = "/fileUpload")
    @ResponseBody
    public String FileUpload1(@RequestParam("file")MultipartFile file,@RequestParam("productId") String productId, HttpServletRequest request)
    {
        System.out.println("------------------------------- "+ file.getSize());
        System.out.println("------------------------------- "+ productId);
        System.out.println("------------------------------- "+ productId);
        if(!file.isEmpty())
        {
            String path = "upload";
            String realPath=request.getSession().getServletContext().getRealPath(path);
            System.out.println("Process file: "+file.getOriginalFilename() );
            try {
                FileUtils.copyInputStreamToFile(file.getInputStream(), new File(realPath, file.getOriginalFilename()));
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        return "NewFile";
    }
}
