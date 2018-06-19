<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>p2p网贷平台</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--  -->
<link href="css/style.css" rel="stylesheet" />
<link href="css/newstyle.css" rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="css/colorbox.css">
<link rel="shortcut icon" href="/statics/home/images/favicon.ico" type="image/x-icon"/>
<!--  -->

<link href="<%=basePath%>css/common.css" rel="stylesheet" />
<link href="<%=basePath%>css/register.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>script/common.js"></script>
<script src="<%=basePath%>script/login.js" type="text/javascript"></script>





</head>
<body>
	 <!-- 导航栏 --><jsp:include page="head.jsp"></jsp:include>	
	<!--注册-->
	

<style>
body{ background:#f3f3f3; }
.applycon{ background:#f3f3f3; }
.applyc{ width:1200px; background:#fff; margin:13px auto; /*padding:15px;*/ }
.applyc1{ padding:50px 38px 70px; }
.applyc2{ padding:52px 157px 35px; background:#f5fbfe; }
.applyc2 .applyc2l,.applyc2 .applyc2r{ width:442px; text-align:center; font-size:14px; line-height:32px; vertical-align:middle; }
.applyc2 .applyc2l{ border-right:1px solid #ccc; }
.applyc2 .applyc2l h3,.applyc2 .applyc2r h3{ height:50px; line-height:45px; font-size:24px; color:#fff; font-weight:bold; background:url(images/borrow_img1.png) no-repeat center top; }
.applyc3{ padding:45px 100px 65px; background:#fff; }
.applyc3 h3{ width:100%; text-align:center; height:50px; line-height:45px; font-size:24px; color:#fff; font-weight:bold; background:url(images/borrow_img1.png) no-repeat center top; }
.applyc3 ul{ margin:45px 0 55px; }
.applyc3 ul li{ float:left; }
.applyc3 ul .rad{ width:141px; height:141px; font-weight:bold; font-size:24px; color:#fff; line-height:141px; vertical-align:middle; text-align:center; background:url(images/rad.png) no-repeat center;  }
.applyc3 ul .arrow{ width:30px; height:141px; background:url(images/irrow.png) no-repeat center; }
.applyc3 a{ display:block; width:200px; margin:0 auto; height:45px; line-height:45px; vertical-align:middle; text-align:center; font-size:20px; color:#fff; background:#ffa269; border-radius:10px; font-weight:bold; }
.applyc4{ padding:55px 45px; text-align:center; background:#f5fbfe; }
.applyc4 h3{ width:100%; text-align:center; height:50px; line-height:45px; margin-bottom:15px; font-size:24px; color:#fff; font-weight:bold; background:url(images/borrow_img1.png) no-repeat center top; }
.applyc4 p{ font-size:14px; height:35px; line-height:35px; vertical-align:middle; }
.nzx_fgs_titlen{ background:#5fb4e5; }
#nzx_fgs table tr td{ height:32px; }
.nzx_fgs{ width:90%; margin:0 auto; }
#nzx_fgs_title th{ background:#f5fbfe; color:#999; }
#nzx_fgs .nzx_fgs_title td{ background:#f5fbfe; }
#nzx_fgs .nzx_fgs_titlen td{ color:#fff; }
.applyform h3{ width:350px; text-align:center; height:50px; line-height:45px; margin-bottom:15px; font-size:24px; color:#fff; font-weight:bold; background:url(images/borrow_img1.png) no-repeat center top; }
.appstyle{ margin-bottom:35px; margin-left:75px;}
.appstyle a{ display:block; width:90px; height:35px; border:1px solid #ff9852; line-height:35px; vertical-align:middle; text-align:center; font-size:18px; color:#ff9852; font-weight:bold; margin-right:10px; border-radius:50px; float:left; }
#appstyle .appon{ background:#ff9852; color:#fff; }
.apform .trline32{ height:32px; margin-bottom:10px; }
.apform table tr td{ height:44px; line-height:44px; vertical-align:middle; font-size:15px; }
.applyBtn,.applyBtnenterprize{ display:block; width:240px; height:47px; line-height:47px; vertical-align:middle; text-align:center; font-size:22px; color:#fff; background:#ff9852; font-weight:bold; border-radius:5px; }
.applyBtn:hover,.applyBtnenterprize:hover{ background:#ff6d10; color:#fff; }
.apform .w100{ width:100px; text-align:right; display:block; margin-right:10px; }
.appinput{ width:160px; padding:0 5px; height:30px; line-height:30px; vertical-align:middle; text-align:left; border:1px solid #ccc; }
.apform .w120{ width:85px; text-align:center; }
.appinputimg1{ width:140px; padding:0 25px 0 5px; background:url(images/yuan.png) no-repeat 150px center; }
.appinputimg2{ width:115px; padding:0 50px 0 5px; background:url(images/pinfm.png) no-repeat 125px center; }
.appinputimg3{ width:140px; padding:0 25px 0 5px; background:url(images/year.png) no-repeat 150px center; }
.myselect{ color:#999; }

#divselect{width:172px; position:relative; z-index:10000; }
#divselect cite{width:130px; height:32px; line-height:32px; margin:6px 0; display:block; color:#999; cursor:pointer; font-style:normal;  padding-left:10px; padding-right:30px; text-align:left; border:1px solid #ccc; }
#divselect ul{ width:150px; border-left:1px solid #ccc; border-right:1px solid #ccc; border-bottom:1px solid #ccc; border-top:1px solid #fff; background-color:#ffffff; position:absolute; z-index:20000; margin-top:-7px; margin-left:0px; display:none; padding:8px 10px; }
#divselect ul li{ height:32px; line-height:32px;}
#divselect ul li a{ display:block; height:32px; color:#999; text-decoration:none; }
#divselect ul li a:hover{ color:#38b6ff; } 
.w250{ width:25%; text-align:center; }.w500{ width:50%; text-align:center; }
</style>


<div class="applycon">
  <div class="applyc">
     <div class="applyc1 clearfix">
	   <div class="applyimg fl mr30"><img src="picture/map.png" /></div>
	   <div class="applyform fl">
	     <!--<img src="picture/applyform.jpg" />-->
		 <h3 class="mt10">线上申请</h3>
		 <div class="">
		   <div class="mt30 clearfix appstyle" id="appstyle"><a href="javascript:;" class="appon">车贷</a><a href="javascript:;">房贷</a></div>
		   <div class="appcon">
		     <div class="apform">
			   <table cellpadding="0">
			     <!-- <tr class="trline32">
				   <td class="w100">申请类型</td>
				   <td>
		    
					     <div id="divselect" class="fl">
						  <cite>个人</cite>
						  <ul>
							 <li><a href="javascript:;" selectid="0">个人</a></li>
							 <li><a href="javascript:;" selectid="1">公司</a></li>
						  </ul>
					  </div>
					  <input name="applystyle" type="hidden" value="0" id="inputselect applystyle"/>  
				     
				     <select name="" class="appinput applystyle" id="applystyle">
					   <option value="0" selected="selected">个人</option>
					   <option value="1">公司</option>
				     </select>
				   </td>
				 </tr> -->
				 <tr class="trline32 disN appconpanyname">
				   <td class="w100">公司名称</td>
				   <td><input type="text" class="appname appinput" name="appname" id="appname" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">姓名</td>
				   <td><input type="text" class="appusername appinput" name="appusername" id="appusername" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">手机号码</td>
				   <td><input type="number" min=0 class="appuserphone appinput" name="appuserphone" id="appuserphone"/></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">借款金额</td>
				   <td><input type="number" min=0 class="appusermoney appinput appinputimg1" name="appusermoney" id="appusermoney" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">车辆品牌</td>
				   <td><input type="text" class="appusercar appinput" name="appusercar" id="beizhu1" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">所属车型</td>
				   <td><input type="text" class="appusercarstyle appinput" name="appusercarstyle" id="beizhu2" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">所在区域</td>
				   <td>
					  
					  <select name="selectp" id="province" style="width:90px;" class="myselect appinput">
						<option value="未选择" selected="selected">请选择省</option>
						<option value="台湾">台湾</option>
						<option value="澳门">澳门</option>
						<option value="香港">香港</option>
						<option value="重庆">重庆</option>
						<option value="浙江">浙江</option>
						<option value="云南">云南</option>
						<option value="新疆">新疆</option>
						<option value="西藏">西藏</option>
						<option value="天津">天津</option>
						<option value="四川">四川</option>
						<option value="上海">上海</option>
						<option value="陕西">陕西</option>
						<option value="山西">山西</option>
						<option value="山东">山东</option>
						<option value="青海">青海</option>
						<option value="宁夏">宁夏</option>
						<option value="内蒙古">内蒙古</option>
						<option value="辽宁">辽宁</option>
						<option value="江西">江西</option>
						<option value="江苏">江苏</option>
						<option value="吉林">吉林</option>
						<option value="湖南">湖南</option>
						<option value="湖北">湖北</option>
						<option value="黑龙江">黑龙江</option>
						<option value="河南">河南</option>
						<option value="河北">河北</option>
						<option value="海南">海南</option>
						<option value="贵州">贵州</option>
						<option value="广西">广西</option>
						<option value="广东">广东</option>
						<option value="甘肃">甘肃</option>
						<option value="福建">福建</option>
						<option value="安徽">安徽</option>
						<option value="北京">北京</option>
					  </select>
					  <!-- <select name="selectc" id="city" style="width:120px;" class="myselect appinput">
						<option value="0">请选择城市</option>
					  </select>
					  <select name="selectc" id="area" style="width:80px; display:none" class="selectStyle appinput">
						<option value="0">请选择地区</option>
					  </select> -->
				 </tr>
				 
				 <tr class="trline32">
				   <td></td>
				   <td style="font-size:12px;">您的信息完全保密</td>
				 </tr>
				 <tr class="trline32">
				   <td></td>
				   <td><a href="javascript:;" class="applyBtn"   onclick="key(0);">确认提交</a></td>
				 </tr>
			   </table>
			 </div>
			 
			 
			 
			 <div class="apform disN">
			   <table cellpadding="0">
	<!--		     <tr class="trline32">
				   <td class="w100">申请类型</td>
				   <td>
				     <select name="" class="appinput" class="">
					   <option value="" checked>公司</option>
				     </select>
				   </td>
				 </tr>-->
				 <tr class="trline32">
				   <td class="w100">公司名称</td>
				   <td><input type="text" class="appname appinput" name="appname" id="appnames"/></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">姓名</td>
				   <td><input type="text" class="appusername appinput" name="appusername" id="apphusernames" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">手机号码</td>
				   <td><input type="number" min=0 class="appuserphone appinput" name="appuserphone" id="apphuserphones" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">借款金额</td>
				   <td><input type="number" min=0 class="appusermoney appinput appinputimg1" name="appusermoney" id="apphusermoneys" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">房屋面积</td>
				   <td><input type="number" min=0 class="appusercar appinput appinputimg2" name="appuserhouse" id="beizhu1s" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">房龄</td>
				   <td><input type="number" min=0 class="appusercarstyle appinput appinputimg3" name="appuserhousestyle" id="beizhu2s" /></td>
				 </tr>
				 <tr class="trline32">
				   <td class="w100">所在区域</td>
				   <td>
					  <select name="selectp" id="provincenews" style="width:90px;" class="myselect appinput">
					  	<option value="未选择" selected="selected">请选择省</option>
						<option value="台湾">台湾</option>
						<option value="澳门">澳门</option>
						<option value="香港">香港</option>
						<option value="重庆">重庆</option>
						<option value="浙江">浙江</option>
						<option value="云南">云南</option>
						<option value="新疆">新疆</option>
						<option value="西藏">西藏</option>
						<option value="天津">天津</option>
						<option value="四川">四川</option>
						<option value="上海">上海</option>
						<option value="陕西">陕西</option>
						<option value="山西">山西</option>
						<option value="山东">山东</option>
						<option value="青海">青海</option>
						<option value="宁夏">宁夏</option>
						<option value="内蒙古">内蒙古</option>
						<option value="辽宁">辽宁</option>
						<option value="江西">江西</option>
						<option value="江苏">江苏</option>
						<option value="吉林">吉林</option>
						<option value="湖南">湖南</option>
						<option value="湖北">湖北</option>
						<option value="黑龙江">黑龙江</option>
						<option value="河南">河南</option>
						<option value="河北">河北</option>
						<option value="海南">海南</option>
						<option value="贵州">贵州</option>
						<option value="广西">广西</option>
						<option value="广东">广东</option>
						<option value="甘肃">甘肃</option>
						<option value="福建">福建</option>
						<option value="安徽">安徽</option>
						<option value="北京">北京</option>
					  </select>
					  <!-- <select name="selectc" id="citynews" style="width:120px;" class="myselect appinput">
						<option value="0">请选择城市</option>
					  </select>
					  <select name="selectc" id="areanews" style="width:80px; display:none" class="selectStyle appinput">
						<option value="0">请选择地区</option>
					  </select> -->
		           </td>
				 </tr>
	  
				 
				 <tr class="trline32">
				   <td></td>
				   <td style="font-size:12px;">您的信息完全保密</td>
				 </tr>				 
				 <tr class="trline32">
				   <td></td>
				   <td><a href="javascript:;" class="applyBtnenterprize"  onclick="key(1);">确认提交</a></td>
				 </tr>				 
                 <input type="hidden" id="type" name="type" value="3"/>
			   </table>
			 </div>
		   </div>
		 </div>
	   </div>
	 </div>
	 
	 <div class="applyc2 clearfix">
	   <div class="fl applyc2l">
	     <h3>申请条件</h3>
	     <div class="mt25">
		   <p>年满18周岁以上的公民</p><p>
需要武汉房产或车产抵押</p><p>
个人或企业银行征信记录良好</p><p>
无现有诉讼记录</p>
		 </div>
	   </div>
	   <div class="fl applyc2r">
	     <h3>提交资料</h3>
	     <div class="mt25">
		   <p>身份证</p><p>
申请资料</p><p>
其他</p>
		 </div>	   
	   </div>
	 </div>
	 
	 <div class="applyc3">
	   <h3>整体流程</h3>
	   <ul class="clearfix">
	     <li class="rad">进件资料</li>
		 <li class="arrow"></li>
	     <li class="rad">面审沟通</li>
		 <li class="arrow"></li>
	     <li class="rad">风险分析</li>
		 <li class="arrow"></li>
	     <li class="rad">审批会签</li>
		 <li class="arrow"></li>
	     <li class="rad">合同签署</li>
		 <li class="arrow"></li>
	     <li class="rad">资金放款</li>
	   </ul>
	   <a href="#">点击申请</a>
	 </div>
	 
	 <div class="applyc4">
	   <h3>线下申请</h3>
	   <p>您可选择就近门店，上门申请</p>
	   <div class="nzx_fgs" id="nzx_fgs">
	   <table class=" mt20" style="border:1px solid #a3c8e3; ">
	    <tr class="nzx_fgs_title" id="nzx_fgs_title">
		  <th class="w250">分公司名称</th>
		  <th class="w500">线下申请地址</th>
		  <th class="w250">联系电话</th>
		</tr>
		<tr class="nzx_fgs_titlen">
		  <td>武汉营业部</td>
		  <td>湖北省武汉市武昌区中南路99号保利广场19楼</td>
		  <td>027-87110969</td>
		</tr>
		<tr class="nzx_fgs_title">
		  <td>贵阳分公司</td>
		  <td>贵州省贵阳市南明区花果园国际金融街1号楼37楼16号</td>
		  <td>0851-88610106</td>
		</tr>
		<tr class="nzx_fgs_titlen">
		  <td>文山分公司</td>
		  <td>云南省文山州东风路光大中心6楼</td>
		  <td>0876-2139997</td>
		</tr>
		<tr class="nzx_fgs_title">
		  <td>昆明分公司</td>
		  <td>昆明市西山区云纺东南亚商城B座9003室</td>
		  <td>0871-64173408</td>
		</tr>
		<tr class="nzx_fgs_titlen">
		  <td>玉溪分公司</td>
		  <td>云南省玉溪市红塔区南北大街汇溪大厦11楼</td>
		  <td>0877-2688540；0877-2688541</td>
		</tr>
		<tr class="nzx_fgs_title">
		  <td>西宁分公司</td>
		  <td>青海省西宁市长江路128号创新大厦18楼</td>
		  <td>0971-4513297</td>
		</tr>
		<tr class="nzx_fgs_titlen">
		  <td>汉街营业部</td>
		  <td>地址：武汉市武昌区汉街国际总部A座3003室</td>
		  <td>027-59882888</td>
		</tr>
		<tr class="nzx_fgs_title">
		  <td>汉口营业部</td>
		  <td>地址：武汉市江岸区球场街江汉路250号船舶广场2904</td>
		  <td>027-87110969</td>
		</tr>
	  </table>
	  </div>
	 </div>
	 
  </div>
  
</div>
<script type="text/javascript">
function key(i) {
	
	var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
	
		if (i==0) {
			
			
			var appname=$("#appname").val();
			var appusername=$("#appusername").val();
			var appuserphone=$("#appuserphone").val();
			var appusermoney=$("#appusermoney").val();
			var beizhu1=$("#beizhu1").val();
			var beizhu2=$("#beizhu2").val();
			//if (appname.length == 0 || appname.test(/^\s+$/g)){
			if (appname.length == 0 ){
			    window.alert('公司名称不能为空');
			    return false;
			}else if (appusername.length == 0 ){
			    window.alert('姓名不能为空');
			    return false;
			}
			 
			var dq=$("#provincenews").val();
			  $.post("brower/toaddborr.do", {
				     btitle:appname,
				   	 brelname:appusername,
				   	 bpass:appuserphone,
				   	 bmoney:appusermoney,
				   	 brecommend:dq,
				   	 bleixing:i,
					 beizhu1:beizhu1,
					 beizhu2:beizhu2
			  }, function(data) {
				 
			  }, "json");
			  alert("申请成功!保存手机通畅,请等待工作人员答复");
		}else if (i==1) {
			//alert(i);
			
			var appname=$("#appnames").val();
			var appusername=$("#apphusernames").val();
			var appuserphone=$("#apphuserphones").val();
			var appusermoney=$("#apphusermoneys").val();
			var beizhu1=$("#beizhu1s").val();
			var beizhu2=$("#beizhu2s").val();
			//if (appname.length == 0 || appname.test(/^\s+$/g)){
			if (appname.length == 0 ){
			    window.alert('公司名称不能为空');
			    return false;
			}else if (appusername.length == 0 ){
			    window.alert('姓名不能为空');
			    return false;
			}
			/* else if (!myreg.test(appuserphone)) {
				 window.alert('手机号码有误');
				 return false;
			} */
			/*  `busername` varchar(255) DEFAULT NULL COMMENT '用户名',>>>>>>>>>>>用户id
			  `brelname` varchar(255) DEFAULT NULL COMMENT '真实姓名',
			  `bpass` varchar(255) DEFAULT NULL COMMENT '通过认证数量',>>>>>>>>>>>>>手机号码
			  `bmoney` varchar(255) DEFAULT NULL COMMENT '借款金额 ',
			  `brecommend` varchar(255) DEFAULT NULL COMMENT '推荐标的',>>>>>>>>>>>>>>所在区域
				 bleixing 类型(车贷,房贷)
				 beizhu1 备注1(房屋面积or车辆品牌)
				 beizhu2 备注2(房龄/所属车型) */
			var dq=$("#province").val();
			  $.post("brower/toaddborr.do", {
				  	 btitle:appname,
				   	 brelname:appusername,
				   	 bpass:appuserphone,
				   	 bmoney:appusermoney,
				   	 brecommend:dq,
				   	 bleixing:i,
					 beizhu1:beizhu1,
					 beizhu2:beizhu2
			  }, function(data) {}, "json");
			  alert("申请成功!保存手机通畅,请等待工作人员答复");
		}
}
</script>
<script type="text/javascript">

$(function(){
  $('#appstyle a').click(function(){
    var oIndex=$(this).index();
	$(this).addClass("appon").siblings().removeClass("appon");
	$('.apform').eq(oIndex).show().siblings().hide();
  })
  
  $('.applystyle').change(function(){
    var appNum=parseInt($(".applystyle").val());
	if(appNum==1){
	  $('.appconpanyname').show();
	}else{
	  $('.appconpanyname').hide();
	};
  })
  
  
})
</script>
 
 
	 
	 <!-- 导航栏 --><jsp:include page="bottom.jsp"></jsp:include>	
</body>
</html>
