package service;

import dao.PicdataMapper;
import entity.Picdata;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/5/21.
 */
@Service
public class PicDataService {

    @Resource
    private PicdataMapper picdataMapper;

    public List<Picdata> getPicDataByProductID(String id){
        return  picdataMapper.selectByProductId(id);
    }

    public int addPic(Picdata picdata){
        return  picdataMapper.insert(picdata);
    }
}
