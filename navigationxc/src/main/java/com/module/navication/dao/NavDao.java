package com.module.navication.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.module.navication.entity.Nav;
@Repository
public interface NavDao {
    //插入一个新导航
    public int insertNewNav(Nav n);
    //修改一个导航
    public int updateNav(Nav n);
    //获得所有导航
    public List<Nav> queryNav(Map<String,Object> m);
    
    //根据id获得导航
    public Nav queryNavByid(Nav id);
}
