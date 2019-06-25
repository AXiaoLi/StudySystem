<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	</head>
	<body leftmargin="2" topmargin="9" background='/StudySystem2.0/img/allbg.gif'>
			<form action="${pageContext.request.contextPath}/tea/notice/noticeMana.jsp" name="formAdd" method="post" enctype="multipart/form-data">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="/StudySystem2.0/img/wbg.gif" class='title'><span>发布教学公告</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         公告标题：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="noticeName" name="noticeName" style="width: 360px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       公告内容：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <textarea name="noticeContent" id="noticeContent"  style="width: 360px;"></textarea>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        发布者：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="teaNum" name="teaNum" style="width: 360px;"/>
						    </td>
						</tr>		
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="发布" onclick="return check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						       <input type="submit" value="返回" onclick="return1()"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
<script>
function check(){
	//获取视频标题，介绍，非空检验
	var name=$("#noticeName").val();
	var content = $("#noticeContent").val();
	var num = $("#teaNum").val();
	//截取空格
	var nm=$.trim(name);
	var content = $.trim(content);
	var num = $.trim(num);
	
	if(null==nm||""==nm){
		alert("公告名称不能为空");
		return false; //如果return false 会对表单进行提交
	}
	if(null==content||""==content){
		alert("公告内容不能为空");
		return false; //如果return false 会对表单进行提交
	}
	if(null==num||""==num){
		alert("发布者不能为空");
		return false; //如果return false 会对表单进行提交
	}
	return true;
}
function return1(){
   	var url="${pageContext.request.contextPath}/tea/notice/noticeMana.jsp";
   	window.location.href=url;
   }
</script>   
</html>
