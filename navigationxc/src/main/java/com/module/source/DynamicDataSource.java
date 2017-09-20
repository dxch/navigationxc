package com.module.source;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/***
 * 多数据源切换 其二
 * @author Administrator
 * 2016-12-18 下午2:13:23
 */
public class DynamicDataSource extends AbstractRoutingDataSource {
	
    @Override  
    protected Object determineCurrentLookupKey() {  
        return DataSourceContextHolder.getDbType();  
    }  
}