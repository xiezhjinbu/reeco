package service;

import dao.ItemTypeMapper;
import entity.ItemType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/5/20.
 */
@Service
public class ItemTypeService {

    @Resource
    private ItemTypeMapper itemTypeMapper;

    public List<ItemType> getAllItemType(){
        return  itemTypeMapper.selectAllItemType();
    }

}
