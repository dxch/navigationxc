package com.module.navication.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.module.navication.dao.NavDao;
import com.module.navication.entity.Nav;
import com.module.navication.service.NavService;
import com.module.source.DataSourceContextHolder;
@Service
public class NavServiceImpl implements NavService{

    @Autowired
    private NavDao navDao;

    @Override
    public int insertNewNav(Nav n) {
        DataSourceContextHolder.setDbType("ds1");
        // TODO Auto-generated method stub
        return navDao.insertNewNav(n);
    }

    @Override
    public int updateNav(Nav n) {
        DataSourceContextHolder.setDbType("ds1");
        // TODO Auto-generated method stub
        return navDao.updateNav(n);
    }
    
    @Override
    public List<Nav> queryNav(Map<String, Object> m) {
        DataSourceContextHolder.setDbType("ds1");
        // TODO Auto-generated method stub
        return navDao.queryNav(m);
    }

    @Override
    public Nav queryNavByid(Nav id) {
        DataSourceContextHolder.setDbType("ds1");
        // TODO Auto-generated method stub
        return navDao.queryNavByid(id);
    }
    


}
