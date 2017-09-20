package com.module.source;

/***
 * 多数据源切换 其一
 * @author Administrator
 * 2016-12-18 下午2:12:48
 */
public class DataSourceContextHolder{

    private static final ThreadLocal<String> contextHolder = new ThreadLocal<String>();

    /**
     * 切换数据源
     */
    public static void setDbType(String dbType) {
        contextHolder.set(dbType);
    }

    /**
     * 得到当前数据源
     */
    public static String getDbType() {
        return ((String) contextHolder.get());
    }

    /**
     * 清除上下文数据
     */
    public static void clearDbType() {
        contextHolder.remove();
    }

}
