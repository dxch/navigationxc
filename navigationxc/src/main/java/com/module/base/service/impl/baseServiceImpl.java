package com.module.base.service.impl;

import java.util.Map;

import com.module.base.dao.baseDao;
import com.module.base.service.baseService;

public class baseServiceImpl implements baseService{

    private baseDao bdao;
    
    @Override
    public Map<String, Object> getm() {
        // TODO Auto-generated method stub
        return bdao.getm();
    }

}
