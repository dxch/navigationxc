package com.user.util;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;



public class bingImg {
    public static String bingImgStr(){
        //获得链接
        String url="https://cn.bing.com/";
        //得到的数据
        String result=sendCon(url);
        //获得图片链接
        result=result.substring(result.indexOf("g_img={"), (result.indexOf("g_img={")+1000));
        result=result.substring(result.indexOf("url:"), (result.indexOf("url:")+100));
        System.out.println(result);
        String regex = "\"[^\"]*\"";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(result);
        while (m.find()) {
            result=m.group();
        }
        result=result.substring(1,result.length()-1);
        //找到绝对路径
        result="https://cn.bing.com"+result;
        return result;
    }
    
    public static String bingimg(HttpServletRequest request) throws IOException {
        // TODO Auto-generated method stub
        //获得链接
        String url="https://cn.bing.com/";
        //得到的数据
        String result=sendCon(url);
        //获得图片链接
        result=result.substring(result.indexOf("g_img={"), (result.indexOf("g_img={")+1000));
        result=result.substring(result.indexOf("url:"), (result.indexOf("url:")+100));
        System.out.println(result);
        String regex = "\"[^\"]*\"";
        Pattern p = Pattern.compile(regex);
        Matcher m = p.matcher(result);
        while (m.find()) {
            result=m.group();
        }
        result=result.substring(1,result.length()-1);
        //找到绝对路径
        result="https://cn.bing.com"+result;
        Calendar cl=Calendar.getInstance();
        cl.set(cl.get(Calendar.YEAR), cl.get(Calendar.MONTH), cl.get(Calendar.DAY_OF_MONTH), cl.get(Calendar.HOUR_OF_DAY), cl.get(Calendar.MINUTE), cl.get(Calendar.SECOND));
        String timeEnd=(new SimpleDateFormat("yyyy-MM-dd")).format(cl.getTime());
        System.out.println(timeEnd);
        //调用方法下载图片
        String filePath = request.getSession().getServletContext()
                .getRealPath("/static/img/bing");
        downLoadFromUrl(result,"bing"+timeEnd+".jpg",filePath);
        System.out.println(filePath);
        return "/img/bing/bing"+timeEnd+".jpg";
    }
 public static String sendCon(String url){
        
        String result="";

        BufferedReader in=null;
        
        try {
            //url
            URL trueUrl=new URL(url);
            //链接
            URLConnection urlcon=trueUrl.openConnection();
            urlcon.connect();
            in=new BufferedReader(new InputStreamReader(urlcon.getInputStream()));
            String line="";
            //获得结果
            while((line=in.readLine())!=null){
                result+=line;
            }
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            try {
                in.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            
        }
        return result;
    }
 public static void  downLoadFromUrl(String urlStr,String fileName,String savePath) throws IOException{
     URL url = new URL(urlStr);  
     HttpURLConnection conn = (HttpURLConnection)url.openConnection();  
             //设置超时间为3秒
     conn.setConnectTimeout(3*1000);
     //防止屏蔽程序抓取而返回403错误
     conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");

     //得到输入流
     InputStream inputStream = conn.getInputStream();  
     //获取自己数组
     byte[] getData = readInputStream(inputStream);    

     //文件保存位置
     File saveDir = new File(savePath);
     if(!saveDir.exists()){
         saveDir.mkdir();
     }
     File file = new File(saveDir+File.separator+fileName);    
     FileOutputStream fos = new FileOutputStream(file);     
     fos.write(getData); 
     if(fos!=null){
         fos.close();  
     }
     if(inputStream!=null){
         inputStream.close();
     }


     System.out.println("info:"+url+" download success"); 

 }
 /**
  * 从输入流中获取字节数组
  * @param inputStream
  * @return
  * @throws IOException
  */
 public static  byte[] readInputStream(InputStream inputStream) throws IOException {  
     byte[] buffer = new byte[1024];  
     int len = 0;  
     ByteArrayOutputStream bos = new ByteArrayOutputStream();  
     while((len = inputStream.read(buffer)) != -1) {  
         bos.write(buffer, 0, len);  
     }  
     bos.close();  
     return bos.toByteArray();  
 }  

}
