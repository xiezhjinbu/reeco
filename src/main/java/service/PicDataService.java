package service;

import dao.ItemsMapper;
import dao.PicdataMapper;
import entity.Items;
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

    @Resource
    private ItemsMapper itemsMapper;

    public List<Picdata> getPicDataByProductID(String id){
        return  picdataMapper.selectByProductId(id);
    }

    public int addPic(Picdata picdata){
        return  picdataMapper.insert(picdata);
    }

    public  int deletePic(String id){
        return  picdataMapper.deleteByPrimaryKey(id);
    }

    public Items getItemsById(String id){
        String productId=picdataMapper.selectByPrimaryKey(id).getProductId();
        return  itemsMapper.selectByPrimaryKey(productId);
    }
}
