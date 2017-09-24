package com.user.util;

import java.security.SecureRandom;
import java.util.UUID;

public class UUidStr {
    private static SecureRandom random = new SecureRandom();

    /**
     * 封装JDK自带的UUID, 通过Random数字生成, 中间-分割.
     */
    public static String uuid() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }


    /**
     * 使用SecureRandom随机生成Long. 
     */
    public static long randomLong() {
        return Math.abs(random.nextLong());
    }
}
