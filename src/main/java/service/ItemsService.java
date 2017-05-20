package service;

import dao.ItemsMapper;
import entity.Items;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/20.
 */
@Service
public class ItemsService {

    @Resource
    private ItemsMapper itemsMapper;

    public  List<Items> getItemsByClassType(Integer classType){
        return itemsMapper.selectByClassType(classType);
    }

    public Items getItemsByID(String id){
        return itemsMapper.selectByPrimaryKey(id);
    }

}
