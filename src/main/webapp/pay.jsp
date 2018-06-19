<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>p2p网贷平台</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="<%=basePath%>/css/common.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/user.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.datetimepicker.css"/>
<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/script/common.js"></script>
<script src="<%=basePath%>/script/user.js" type="text/javascript"></script>
</head>
<body>
<header>
 <!-- 导航栏 --><jsp:include page="head.jsp"></jsp:include>
</header>
<!--个人中心-->
<div class="wrapper wbgcolor">
			<div class="w1200 personal">
		    	<div class="credit-ad"><img src="images/clist1.jpg" width="1000" height="80"></div>
		        
		        <!-- 导航栏 --><jsp:include page="left.jsp"></jsp:include>
		<script>
			
			function getShowPayVal1(){
				
				var Money = document.getElementById("Money").value;
				var raiseends = document.getElementById("bankCardNo").value;
				var uID = document.getElementById("id").value;				
				$.post('${pageContext.request.contextPath}/userpay.do',{"uID":uID,"Localaccount":raiseends,"sxmoney":Money},function(data){
					 if(data==200){
						alert("充值成功");
						location.href = "${pageContext.request.contextPath}/find.do?id="+uID;
					 }else{
						 alert("充值失败");
					 }
				},"json");
			}

			
		</script>
		<div class="personal-main">
        	<div class="personal-pay">
        <h3><i>充值</i></h3>
        <div class="quick-pay-wrap">
          <h4> <span class="quick-tit pay-cur"><em>快捷支付</em></span> </h4>
            <div class="quick-main">
              <div class="fl quick-info">
                <div class="info-1"> <span class="info-tit">充值金额</span> <span class="info1-input">
                	<input type="hidden" name="id" id="id" value="${globaluser.uid}">
                  <input id="Money" type="text" name="Money" class="pay-money-txt" maxlength="10" >
                  <em>元</em> </span> <span class="quick-error"> </span> </div>
                <div class="info-tips">亿人宝提醒您：充值金额超过50000元时，请切换到网银充值</div>
                <div class="info-2"> <span class="info-tit">银行卡号</span> <span class="info2-input">
                  <input id="bankCardNo" type="text" name="bankCardNo" class="tx-txt">
                  <em class="info2-bank" style="display: none;">
                  <label id="form:defaultBankName" style="font-size:16px;"> </label>
                  </em> </span> <span class="quick-error3" id="bankCardError"></span> </div>
                <div class="bank-check" id="bank-check2"> <b class="selected" id="bankProtocol1"></b><span class="bank-agree">我同意并接受<a href="#" target="_blank">《亿人宝投资咨询与管理服务电子协议》</a></span> <span class="error" id="bankProtocol_message" style="display:none;margin-top:-3px;">请同意协议内容！</span> </div>
                <input type="button" name="" value="充值" class="btn-paycz" onclick="getShowPayVal1();">
              </div>
            </div>
          <div class="pay-tipcon" style="display:none;"> <b>充值提示：</b><br>
            1．亿人宝充值过程免费，不向用户收取任何手续费。<br>
            2．为了您的账户安全，请在充值前进行身份认证、手机绑定以及交易密码设置。<br>
            3．您的账户资金将通过丰付支付第三方平台进行充值。<br>
            4．请注意您的银行卡充值限制，以免造成不便。<br>
            5．如果充值金额没有及时到账，请联系客服—400-999-8850 </div>
          <div class="pay-tipcon2"> <b>温馨提示：</b><br>
            1. 投资人充值过程全程免费，不收取任何手续费。<br>
            2. 为防止套现，所充资金必须经投标回款后才能提现。<br>
            3. 使用快捷支付进行充值，可能会受到不同银行的限制，如需大额充值请使用网银充值进行操作。<br>
            4. 充值/提现必须为银行借记卡，不支持存折、信用卡充值。<br>
            5. 严禁利用充值功能进行信用卡套现、转账、洗钱等行为，一经发现，将封停账号30天。<br>
            6. 充值期间，请勿关闭浏览器，待充值成功并返回首页后，所充资金才能入账，如有疑问，请联系客服。<br>
            7. 充值需开通银行卡网上支付功能，如有疑问请咨询开户行客服。<br>
          </div>
        </div>
      </div>
        </div>
			</div>
		</div>
<!--网站底部-->
<jsp:include page="bottom.jsp"></jsp:include>	
</body>
</html>
