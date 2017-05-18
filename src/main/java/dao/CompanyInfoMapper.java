package dao;

import annotation.MyBatisRepository;
import entity.CompanyInfo;

/**
 * Created by Administrator on 2017/5/18.
 */
@MyBatisRepository
public interface CompanyInfoMapper {
    public CompanyInfo selectCompanyInfo();
}
