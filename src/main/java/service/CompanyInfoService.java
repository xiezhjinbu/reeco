package service;

import dao.CompanyInfoMapper;
import entity.CompanyInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/5/19.
 */
@Service
public class CompanyInfoService {

    @Resource
    private CompanyInfoMapper companyInfoMapper;

    public CompanyInfo getCompanyInfo(){
        return  companyInfoMapper.selectCompanyInfo();
    }


}
