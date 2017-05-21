package service;

import dao.ItemTypeMapper;
import dao.ItemsMapper;
import entity.ItemType;
import entity.Items;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/20.
 */
@Service
public class ItemsService {

    @Resource
    private ItemsMapper itemsMapper;

    @Resource
    private ItemTypeMapper itemTypeMapper;

    public  List<Items> getItemsByClassType(Integer classType){
        return itemsMapper.selectByClassType(classType);
    }

    public Items getItemsByID(String id){
        return itemsMapper.selectByPrimaryKey(id);
    }

    public  List<Items> getAllItems(){

        List<ItemType> itemTypes=itemTypeMapper.selectAllItemType();
        List<Items> list=new ArrayList<Items>();
        for (ItemType e:itemTypes) {
            list.addAll(itemsMapper.selectByClassType(e.getClassType()));
        }
        return list;
    }

    public  int modifyItem(Items items){
        return  itemsMapper.updateByPrimaryKey(items);
    }

    public  int deleteItem(String id){
        return  itemsMapper.deleteByPrimaryKey(id);
    }

    public  int addItem(Items items){
        return  itemsMapper.insert(items);
    }
}
