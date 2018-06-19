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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<header>
  <div class="header-top min-width">
    <div class="container fn-clear"> <strong class="fn-left">咨询热线：400-668-6698<span class="s-time">服务时间：9:00 - 18:00</span></strong>
      <ul class="header_contact">
        <li class="c_1"> <a class="ico_head_weixin" id="wx"></a>
          <div class="ceng" id="weixin_xlgz" style="display: none;">
            <div class="cnr"> <img src="<%=basePath%>images/code.png"> </div>
            <b class="ar_up ar_top"></b> <b class="ar_up_in ar_top_in"></b> </div>
        </li>
        <li class="c_2"><a href="#" target="_blank" title="官方QQ" alt="官方QQ"><b class="ico_head_QQ"></b></a></li>
        <li class="c_4"><a href="#" target="_blank" title="新浪微博" alt="新浪微博"><b class="ico_head_sina"></b></a></li>
      </ul>
    <c:if test="${globaluser.unickname==null }">
				<ul class="fn-right header-top-ul">
					<li><a href="<%=basePath%>invest/recommendShow.do" class="app">返回首页</a></li>
					<li>
						<div class="">
							<a href="<%=basePath%>/register.jsp" class="c-orange" title="免费注册">免费注册</a>
						</div>
					</li>
					<li>
						<div class="">
							<a href="<%=basePath%>/login.jsp" class="js-login" title="登录">登录</a>
						</div>
					</li>
				</ul>
			</c:if>
			<c:if test="${globaluser!=null }">
				<ul class="fn-right header-top-ul">
					<li><a href="<%=basePath%>/index.jsp" class="app">返回首页</a></li>
					<li>
						<div class="">
							<a href="<%=basePath%>query.do?id=${globaluser.uid}" class="c-orange" title="名字">${globaluser.unickname
								}</a>
						</div>
					</li>
					<li>
						<div class="">
							<a href="<%=basePath%>users/exit.do" class="js-login" title="退出">退出</a>
						</div>
					</li>
				</ul>
			</c:if>
    </div>
  </div>
  <div class="header min-width">
    <div class="container">
      <div class="fn-left logo"> <a class="" href="<%=basePath%>invest/recommendShow.do"> <img src="<%=basePath%>images/logo.png"  title=""> </a> </div>
      <ul class="top-nav fn-clear">
        <li > <a href="<%=basePath%>invest/recommendShow.do">首页</a> </li>
        <li> <a href="<%=basePath%>invest/investSel.do" class="">我要投资</a> </li>
        <li> <a href="<%=basePath%>borrowadd.jsp" class="">我要借款</a> </li>
        <li> <a href="${pageContext.request.contextPath}/help.jsp">安全保障</a> </li>
        <li class="top-nav-safe" > <a href="#" onclick="keys();">我的账户</a> </li>
        <li> <a href="<%=basePath %>notice/notlist.do?ids=1">关于我们</a> </li>
      </ul>
    </div>
  </div>
</header>

<script type="text/javascript">
	function keys(){
		var id="${globaluser.uid}";
		if(id!=""){
		window.location.href="<%=basePath %>query.do?id=${globaluser.uid}";
		}else {
			alert("请先登入!");
		window.location.href="<%=basePath%>/login.jsp";
		}
	}

	
</script>
 

</body>
</html>