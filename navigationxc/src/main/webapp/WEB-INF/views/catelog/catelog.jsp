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
                width: 20%;
                cursor: pointer;
                float: left;
                background-color: #FFFFFF;
            }
            .navlistcon {
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
    <div>asddasadsasddasasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasddaasddasadsasdda</div>
	    <div>saddsasadsdaasd傻大姐撒点开始打了款坑了仨打开连接的撒</div>
	    <div>江苏第二师范学院</div>
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
                        <li id='daohanghome' v-bind:class='{active:isactive}'>
                            <a href="javascript:void(0)"  v-on:click="dhshow">{{ name }}</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" id='nameSou' class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ title }}<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li id='baidu' v-on:click='baidushow'>
                                    <a href="javascript:void(0)">百度</a>
                                </li>
                                <li id='bing' v-on:click='bingshow'>
                                    <a href="javascript:void())">Bing</a>
                                </li>
                                <li id='sougou' v-on:click='sougoushow'>
                                    <a href="javascript:void())">搜狗</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <form id='baiduForm' v-if='seen' class="navbar-form navbar-left forms" onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank">
                                <input name="tn" type="hidden" value="SE_zzsearchcode_shhzc78w">
                                <input class="form-control" type="text" onfocus="checkHttps" name="word" size="30">
                                <input type="submit" value="百度搜索" class="btn btn-default">
                            </form>
                            <form id='sougouForm' v-if='seen' class="navbar-form navbar-left forms" onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank">
                                <input name="tn" type="hidden" value="SE_zzsearchcode_shhzc78w">
                                <input class="form-control" type="text" onfocus="checkHttps" name="word" size="30">
                                <input type="submit" value="搜狗搜索" class="btn btn-default">
                            </form>
                            <form id='bingForm' v-if='seen' class="navbar-form navbar-left forms" onsubmit="return baiduWithHttps(this)" action="http://www.baidu.com/baidu" target="_blank">
                                <input name="tn" type="hidden" value="SE_zzsearchcode_shhzc78w">
                                <input class="form-control" type="text" onfocus="checkHttps" name="word" size="30">
                                <input type="submit" value="Bing搜索" class="btn btn-default">
                            </form>
                        </li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <div id='backgroundimg' style='width:100%'>
            <div id='daohang' style="margin-left:25% ;margin-top: 300px;" v-if="seen">
                <div style='display: block;width:50%;align-content: center;'>
                    <div style="width:100%;background-color: #FFFFFF;">
                    	<div id='daohang2'>→ 我的导航</div>
                        	
                    </div>
                    		
                </div>
            </div>
            <div id='navlistcon' style="margin-left:25% ;margin-top: 10px;">
	            <div id='tnavlist' style='display: block;width:50%;align-content: center;background-color: #FFFFFF;' v-if="seen">
					<div  v-for="(item,index) in items" >
						<div class="nav-item daohang" v-bind:key="item.id">
							<img v-bind:src="item.aImg" />
			                <a class="border-for-item" v-bind:title="item.aName" v-bind:href="item.aurl" target="_blank">
			                    <span class="nav-text-content" v-text='item.aName'></span>
			                </a>
						</div>
					</div>
	            </div>
	        </div>
        </div>
		</div>
							
		<!--<div id='tnavlist'>
			<div  v-for="item in items" class="nav-item daohang" v-bind:key="item.id">
								{{ item.aName }}
								{{ item.aImg }}
								<img v-bind:src="item.aImg" />
                                <a class="border-for-item" v-bind:title="item.aName" v-bind:href="item.aurl" target="_blank">
                                    <span class="nav-text-content">{{ item.aName }}</span>
                                </a>
							</div>
		</div>-->
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
        <script type="text/javascript" src="${ctxStatic}/js/axios.js" ></script>
        <script>
        var ddd=[
        	
        ]
        			function getnavlist(){
        				var xxx;
        				axios({
                            method:'post',
                            url:'${ctx}/nav/getnavlist'}).then(function(resp) {
                                var respdata=resp.data;
                                tnavlist.items.splice(respdata.length)
                                for(var i=0;i<respdata.length;i++){
                                	respdata[i].aImg="${ctxStatic}"+respdata[i].aImg
                                	console.log(respdata[i].aurl)
                                	tnavlist.items.splice(i,1,respdata[i])
                                }
                            }).catch(function(error) {
                                console.log(error)
                                var index3 = layer.alert("获取目录失败", {
                                    icon: 5,
                                    skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
                                })
                                setTimeout(function() {
                                    layer.close(index3)
                                }, 3000)
                            })
        			}
        			getnavlist();
        			var tnavlist=new Vue({
                        el:'#tnavlist',
                        data:{
                            items:ddd,
                            seen:false
                        },
                    })
        	//对导航进行修改
        	var baidufr=new Vue({
			  el: '#baiduForm',
			  data: {
			    seen:true
			  }
			})
        	var soufr=new Vue({
			  el: '#sougouForm',
			  data: {
			    seen:false
			  }
			})
        	var bingfr=new Vue({
			  el: '#bingForm',
			  data: {
			    seen:false
			  }
			})
        	
        	//具体显示操作
        	var baid=new Vue({
        		el:'#baidu',
        		methods:{
        			baidushow:function(){
        				baidufr.seen=true;
        				soufr.seen=false;
        				bingfr.seen=false;
        				nameSou.title='百度'
        			}
        		}
        	})
        	var soug=new Vue({
        		el:'#sougou',
        		methods:{
        			sougoushow:function(){
        				baidufr.seen=false;
        				soufr.seen=true;
        				bingfr.seen=false;
        				nameSou.title='搜狗'
        			}
        		}
        	})
        	var binffff=new Vue({
        		el:'#bing',
        		methods:{
        			bingshow:function(){
        				bingfr.seen=true;
        				baidufr.seen=false;
        				soufr.seen=false;
        				nameSou.title='Bing'
        			}
        		}
        	})
        	
        	var nameSou=new Vue({
        		el:'#nameSou',
        		data:{
        			title:"百度"
        		}
        	})
        	
        	var daohanghome=new Vue({
        		el:'#daohanghome',
        		data:{
        			name:'Navigation',
        			isactive:true
        		},
        		methods:{
        			dhshow:function(){
        				if(daohang.seen===false){
        					this.isactive=true;
        					daohang.seen=true;
        					tnavlist.seen=true;
        				}else{
        					this.isactive=false;
        					daohang.seen=false;
        					tnavlist.seen=false;
        				}
        			}
        		}
        	})
        	var daohang=new Vue({
        		el:'#daohang',
        		data:{
        			seen:false
        		}
        	})
            function insertNewNav(){
            	layer.open({
				  type: 2,
				  title: '添加导航',
				  shadeClose: true,
				  skin: 'layui-layer-rim', //加上边框
				  area: ['420px', '420px'], //宽高
				  content: '${ctx}/nav/insertnewnav'
				});
            }
            Vue.component("navdiv",{
            	template:'<div>123</div>'
            })
            
            
            
        </script>
    </body>

</html>
