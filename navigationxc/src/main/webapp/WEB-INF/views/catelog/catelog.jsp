<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>导航</title>
        <link rel="stylesheet" href="${ctxStatic}/css/bootstrap.min.css" />
        <style>
            .daohang {
                display: inline-block;
                zoom: 1;
                height: 44px;
                line-height: 44px;
                width: 100%;
                cursor: pointer;
                float: left;
            }
            td{
                text-align: center;
            }
			body{
				background-size:100%;
				background: url(${bingimg}) no-repeat;
				width:100%;
				overflow:hidden;
				
			}
        </style>
    </head>

    <body style='width: 100%;'>
    <div class='allcontent' style="width:100%;">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
                    <a class="navbar-brand" href="#">Catelog</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="javascript:void(0)" id='daohanghome'>Navigation</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" id='nameSou' class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">百度<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li id='baidu'>
                                    <a href="javascript:void(0)">百度</a>
                                </li>
                                <li id='bing'>
                                    <a href="javascript:void())">Bing</a>
                                </li>
                                <li id='sougou'>
                                    <a href="javascript:void())">搜狗</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <form id='baiduForm' class="navbar-form navbar-left forms" onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank">
                                <input name="tn" type="hidden" value="SE_zzsearchcode_shhzc78w">
                                <!--<a href="https://www.baidu.com/" target="_blank">
                        <img src="https://www.baidu.com/img/baidu_jgylogo3.gif" alt="Baidu" align="bottom" border="0">
                    </a>-->
                                <input class="form-control" type="text" onfocus="checkHttps" name="word" size="30">
                                <input type="submit" value="百度搜索" class="btn btn-default">
                            </form>
                            <form id='sougouForm' class="navbar-form navbar-left forms" onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank">
                                <input name="tn" type="hidden" value="SE_zzsearchcode_shhzc78w">
                                <!--<a href="https://www.baidu.com/" target="_blank">
                        <img src="https://www.baidu.com/img/baidu_jgylogo3.gif" alt="Baidu" align="bottom" border="0">
                    </a>-->
                                <input class="form-control" type="text" onfocus="checkHttps" name="word" size="30">
                                <input type="submit" value="搜狗搜索" class="btn btn-default">
                            </form>
                            <form id='bingForm' class="navbar-form navbar-left forms" onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank">
                                <input name="tn" type="hidden" value="SE_zzsearchcode_shhzc78w">
                                <!--<a href="https://www.baidu.com/" target="_blank">
                        <img src="https://www.baidu.com/img/baidu_jgylogo3.gif" alt="Baidu" align="bottom" border="0">
                    </a>-->
                                <input class="form-control" type="text" onfocus="checkHttps" name="word" size="30">
                                <input type="submit" value="Bing搜索" class="btn btn-default">
                            </form>
                            <!--<form id='bingForm'  onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank" class="navbar-form navbar-left forms">
                                <div class="form-group">
                                    <input type="text"  class="form-control"  onfocus="checkHttps" name="word"  size="30">
                                </div>
                                <input type="submit "  class="btn btn-default" value="百度saddsa搜索">
                            </form> -->
                        </li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <div id='backgroundimg' style='width:100%'>
            <div id='daohang' style="margin-left:25% ;margin-top: 300px;">
                <div style='display: block;width:50%;align-content: center;'>
                    <table style="width:100%;background-color: #FFFFFF;">
                        <thead><tr>
                            
                            <td id='daohang2'>→ 我的导航</td>
                        </tr></thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss2.bdstatic.com/lfoZeXSm1A5BphGlnYG/icon/95486.png" />
                                    <a class="border-for-item" title="百度贴吧" href="http://tieba.baidu.com/" target="_blank">
                                        <span class="nav-text-content">百度贴吧</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss0.bdstatic.com/l4oZeXSm1A5BphGlnYG/icon/2556.png?3" />
                                    <a class="border-for-item" title="江教院吧" href="http://tieba.baidu.com/f?kw=%BD%AD%CB%D5%BD%CC%D3%FD%D1%A7%D4%BA" target="_blank">
                                        <span class="nav-text-content">江教院吧</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss0.bdstatic.com/l4oZeXSm1A5BphGlnYG/icon/2556.png?3" />
                                    <a class="border-for-item" title="江二师吧" href="http://tieba.baidu.com/f?ie=utf-8&amp;kw=%E6%B1%9F%E8%8B%8F%E7%AC%AC%E4%BA%8C%E5%B8%88%E8%8C%83%E5%AD%A6%E9%99%A2" target="_blank">
                                        <span class="nav-text-content">江二师吧</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss0.bdstatic.com/k4oZeXSm1A5BphGlnYG/icon/7656.png" />
                                    <a class="border-for-item" title="百度云盘" href="http://yun.baidu.com/" target="_blank">
                                        <span class="nav-text-content">百度云盘</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss2.bdstatic.com/kfoZeXSm1A5BphGlnYG/icon/95498.png" />
                                    <a class="border-for-item" title="163邮箱" href="http://mail.163.com/" target="_blank">
                                        <span class="nav-text-content">163邮箱</span></div>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss0.bdstatic.com/k4oZeXSm1A5BphGlnYG/icon/95488.png" />
                                    <a class="border-for-item" title="新浪微博" href="http://weibo.com/" target="_blank">
                                        <span class="nav-text-content">新浪微博</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss2.bdstatic.com/lfoZeXSm1A5BphGlnYG/icon/7718.png?1" />
                                    <a class="border-for-item" title="哔哩哔哩" href="http://www.bilibili.com/video/ent.html" target="_blank">
                                        <span class="nav-text-content">哔哩哔哩</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss3.bdstatic.com/iPoZeXSm1A5BphGlnYG/icon/95599.png" />
                                    <a class="border-for-item" title="知乎" href="http://www.zhihu.com/" target="_blank">
                                        <span class="nav-text-content">知乎</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="https://ss3.bdstatic.com/lPoZeXSm1A5BphGlnYG/icon/7027.png" />
                                    <a class="border-for-item" title="bing" href="https://cn.bing.com/" target="_blank">
                                        <span class="nav-text-content">bing</span></div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <div class="nav-item daohang">
                                    <img src="http://s1.music.126.net/music.ico?v1" />
                                    <a class="border-for-item" title="云音乐" href="http://music.163.com/" target="_blank">
                                        <span class="nav-text-content">云音乐</span></div>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
		</div>
		<button onclick='insertNewNav()'>insertnav</button>
        <script src="http://s1.bdstatic.com/r/www/cache/global/js/BaiduHttps_20150714_zhanzhang.js"></script>
        <script>
            function checkHttps() {
                BaiduHttps.useHttps();
            };

            function baiduWithHttps(formname) {
                var data = BaiduHttps.useHttps();
                if(data.s === 0) {
                    return true;
                } else {
                    formname.action = 'https://www.baidu.com/baidu' + '?ssl_s=1&ssl_c' + data.ssl_code;
                    return true;
                }
            };
        </script>
        <script type="text/javascript" src="${ctxStatic}/js/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="${ctxStatic}/js/bootstrap.js"></script>
        <script type="text/javascript" src="${ctxStatic}/js/layer-v3.0.1/layer/layer.js"></script>
        <script type="text/javascript" src="${ctxStatic}/js/vue.js"></script>
        <script>
            var date = new Date();
            var month = date.getMonth() + 1;
            if(month < 10) {
                month = "0" + month
            }
            var strDate = date.getDate();
            var year = date.getFullYear()
            $(function() {
            	getnavList()
                //搜索栏消失
                $('.forms').hide();
                $('#baiduForm').show()
                $('#daohang').hide();
                //设置背景图片
//              $('body').attr("background", "${bingimg}")
				//具体搜索栏显示
                $('#baidu').click(function() {
                    $('.forms').hide();
                    $('#baiduForm').show();
                    $('#nameSou').text("百度")
                })
                $('#bing').click(function() {
                    $('.forms').hide();
                    $('#bingForm').show();
                    $('#nameSou').text("bing")
                })
                $('#sougou').click(function() {
                    $('.forms').hide();
                    $('#sougouForm').show();
                    $('#nameSou').text("搜狗")
                })
                //导航区域是否显示
                $('#daohanghome').click(function(){
                    $('#daohang').toggle()
                })
                $('#daohang2').click(function(){
                    $('#daohanghome').click()
                })
                var x=$(document).height();
            	var y=$(document).width();
//          	$('.allcontent').attr('style',"background: url(${bingimg}) no-repeat;width:"+y+"px;height:"+x+"px;overflow:hidden;")
//				$('.allcontent').attr('style',"background: url(${bingimg}) no-repeat;width:100%;height:"+x+"px;overflow:hidden;")
//          	$('.allcontent').css("background-size","100% "+x+"px;")
//          	$('.allcontent').css("background-size",y+"px "+x+"px;")
            })
            function insertNewNav(){
            	layer.open({
				  type: 2,
				  title: '添加导航',
				  shadeClose: true,
				  skin: 'layui-layer-rim', //加上边框
				  area: ['420px', '240px'], //宽高
				  content: '${ctx}/nav/insertnewnav'
				});
            }
            function getnavList(){
            	$.ajax({
            		type:"post",
            		url:"${ctx}/nav/getnavlist",
            		async:true,
            		dataType:'json',
            		success:function(data){
            			console.log(data)
            		}
            	});
            }
            //返回背景图片
            function retundata() {
                var datastr = "${ctxStatic}/img/bing/bing" + year + "-" + month + "-" + strDate + ".jpg"
                var b = checkImage(datastr);
                  console.log(b)
                if(b) {
                    return datastr;
                } else {
                    return "${ctxStatic}/img/bing/bing" + year + "-" + month + "-" + (strDate - 1) + ".jpg"
                }

            }
            //查看图片是否存在
            function checkImage(srcimage) {
                var ImgObj = new Image();
                ImgObj.src = srcimage;
                if(ImgObj.fileSize > 0 || (ImgObj.width > 0 && ImgObj.height > 0)) {
                    return true;
                } else {
                    return false;
                }
            }
            //          function image1(){
            //              var ifa1=$('#bingdiv');
            //              console.log(ifa1.length)
            //              console.log(ifa1.html().length)
            //              for(var i=0;i<100000;i++){
            //                  console.log(ifa1.html().length)
            //              }
            //              
            //          }
            //          //HPImageArchive.aspx?format=js&idx=0&n=1&nc=1361089515117&FORM=HYLH1
                        function returnclassify(){
                            $.ajax({
                                type:"post",
                                url:"http://120.195.67.134/vun-member/sys/classify/type",
                                async:true,
                                dataType:'json',
                                success:function(data){
                                    console.log(data)
                                }
                            });
                            
                        }
        </script>
    </body>

</html>