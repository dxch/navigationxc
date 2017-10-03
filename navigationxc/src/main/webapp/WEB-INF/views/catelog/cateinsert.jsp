<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加页面</title>
        <style>
        	label{
        		width:100px;
        		height:30px;
        		display: inline-block;
        	}
        	input,button{
        		width:220px;
        		height:30px;
        		display: inline-block;
        	}
        </style>
    </head>
    <body>
    	<div id='insertnewNav'>
	    	<label for="aname">链接名</label><input v-model='aname' name='aname' id='aname' placeholder="请输入链接名"/>
	    	<label></label><p>{{ aname }}</p>
	    	<label for="aurl">链接url</label><input v-model='aurl' name='aurl' id='aurl' placeholder="请输入链接"/>
	    	<label></label><p>{{ aurl }}</p>
	    	<label></label><button onclick='insertnav()'>提交</button>
    	</div>
    	<script type="text/javascript" src="${ctxStatic}/js/jquery-3.1.1.js"></script>
    	<script type="text/javascript" src="${ctxStatic}/js/layer-v3.0.1/layer/layer.js"></script>
    	<script type="text/javascript" src="${ctxStatic}/js/vue.js"></script>
    	<script type="text/javascript" src="${ctxStatic}/js/axios.js" ></script>
    	<script>
    		var insertNewNa=new Vue({
    			el:'#insertnewNav',
    			data:{
    				aname:'',
    				aurl:''
    			}
    		})
    		function insertnav(){
    			console.log($('#aurl').val())
    			axios.post('${ctx}/nav/insertnav',{
    					aurl:$('#aurl').val(),
	    				aName:$('#aname').val()
    			}).then(function(response){
    				console.log(response)
    				console.log(response.data)
    				console.log(response.data.count)
    							var index3 = layer.alert("添加成功", {
                                    icon: 5,
                                    skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
                                })
                                setTimeout(function() {
                                    layer.close(index3)
                                    parent.window.layer.closeAll()
                                    parent.getnavlist()
                                }, 3000)
    			}).catch(function(error){
    				console.log(error)
    							var index3 = layer.alert("添加失败", {
                                    icon: 5,
                                    skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
                                })
                                setTimeout(function() {
                                    layer.close(index3)
                                     parent.window.layer.closeAll()
                                }, 3000)
    			})
//  			$.ajax({
//	    			type:"post",
//	    			url:"${ctx}/nav/insertnav",
//	    			async:true,
//	    			data:{
//	    				aurl:$('#aurl').val(),
//	    				aName:$('#aname').val()
//	    			},
//	    			dataType:'json',
//	    			success:function(data){
//	    				if(data.count > 0){
//	    					var index3=layer.alert("添加成功", {
//                            icon: 6,
//                            skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
//                          })
//                          setTimeout(function(){
//                          	layer.close(index3)
//                              var index=parent.layer.getFrameIndex(window.name);
//	    						parent.layer.close(index);
//                          },3000)
//	    					
//	    				}
//	    			},
//	    			error:function(){
//	    					var index3=layer.alert("添加失败", {
//                            icon: 5,
//                            skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
//                          })
//                          setTimeout(function(){
//                          	layer.close(index3)
//                          },3000)
//	    			}
//	    		});
    		}
    	</script>
 	</body>
</html>