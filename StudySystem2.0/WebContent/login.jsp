<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>  
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<STYLE type=text/css>
		BODY{TEXT-ALIGN: center; PADDING-BOTTOM: 0px; 
		     BACKGROUND-COLOR: #ddeef2; MARGIN: 0px; 
		     PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px}
		A:link {COLOR: #000000; TEXT-DECORATION: none;}
		A:visited {COLOR: #000000; TEXT-DECORATION: none;}
		A:hover {COLOR: #ff0000; TEXT-DECORATION: underline;}
		A:active {TEXT-DECORATION: none}
		.input {BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; 
		        LINE-HEIGHT: 20px; WIDTH: 182px; HEIGHT: 20px;
		        BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid}
		.input1 {
			BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; 
			LINE-HEIGHT: 20px; WIDTH: 120px; HEIGHT: 20px;
			BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid
		}
	</STYLE>
  </head>
  
  <BODY>
      <DIV style="MARGIN:0px auto;
      			  WIDTH:936px;
      			  margin-top:180px;
      			  font-family:微软雅黑;
      			  font-size:33px;">
                          软件项目管理在线学习网站
      </DIV>
      <DIV style="BACKGROUND-COLOR:#278296;margin-top:20px;">
	      <DIV style="MARGIN:0px auto;WIDTH:936px">
		      <DIV style="BACKGROUND: url(/${pageContext.request.contextPath}/images/body_05.jpg) no-repeat; HEIGHT: 155px">
			      <DIV style="TEXT-ALIGN:left;WIDTH:360px;FLOAT:right;HEIGHT:200px;_height: 95px;">
				    <form id="fm" action="#" name="ThisForm" method="post">
				      <TABLE border="0" cellSpacing="0" cellPadding="0" width="100%">
				          <TR>
					          <TD style="HEIGHT:18px"><span id="msg" style="color:red;font-size:15px">${msg}</span></TD>
				          </TR>
				          <TR>
					          <TD style="HEIGHT: 30px">
					              <span style="font-family: 微软雅黑;font-size: 13px;">账号：</span>
					              <INPUT type="text" id="userName" name="userName" style="width: 110px;">
					          </TD>
				          </TR>
				          <TR>
					          <TD style="HEIGHT: 30px">
					              <span style="font-family: 微软雅黑;font-size: 13px;"> 密码：</span>
					              <INPUT type="password" id="userPw" name="userPw" style="width:110px;">
					          </TD>
				          </TR>
				          <TR>
					          <TD style="HEIGHT: 50px">
					              <span style="font-family: 微软雅黑;font-size: 13px;"> 类型：</span>
					              <select class="INPUT_text" name="userType" style="height:20px;width:115px;">
									<option value="0">学生</option>
						            <option value="1">老师</option>	
								  </select>
					              <input type="button" value="登陆" style="width: 80px;" onclick='check1()'>
					              <img id="indicator" src="/${pageContext.request.contextPath}/images/loading.gif" style="display:none"/>
					          </TD>
				          </TR>   
					  </TABLE>
					</form>
			      </DIV>
		      </DIV>
	      </DIV>
      </DIV>
  </BODY>
<script>
function check1(){
	//获取账户，密码，做非空校验
	var username=$("#userName").val();
	var password=$("#userPw").val();
	var um=$.trim(username);
	var up=$.trim(password);
	if(null==um||""==um){
		alert("请录入账户信息");
		return;
	}
	if(null==up||""==up){
		alert("请录入密码信息");
		return;
	}
	//判断用户选择的类型
	if(document.ThisForm.userType.value=="0"){
		//向学生模块进行提交
		document.getElementById("fm").action="${pageContext.request.contextPath}/StuServlet?method=stuLogin";
	}
		
	if(document.ThisForm.userType.value=="1"){
		//向老师模块进行提交
		document.getElementById("fm").action="${pageContext.request.contextPath}/TeaServlet?method=teaLogin";
	}
	document.getElementById("fm").submit();
	
}
</script>  
</html>