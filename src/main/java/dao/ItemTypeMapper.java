package dao;

import annotation.MyBatisRepository;
import entity.ItemType;
import java.util.List;

@MyBatisRepository
public interface ItemTypeMapper {
    ItemType selectByClassType(Integer classType);
    List<ItemType> selectAllItemType();
}