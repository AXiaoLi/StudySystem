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
			<form action="${pageContext.request.contextPath}/StuCourseServlet?method=searchCourseByCName" name="formAdd" method="post" enctype="multipart/form-data">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#FFFFFF" style="margin-bottom:8px">
						<tr bgcolor="#FFFFFF">
					        <td colspan="3" background="/StudySystem2.0/img/wbg.gif" class='title'  align="center" style="font-size:30px">查找课程</td>
					    </tr>
					    <tr align="center" bgcolor="#FFFFFF">
						<td>&nbsp;</td>	
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="50%" bgcolor="#FFFFFF" align="right" style="font-size:25px">
						         请输入要查找的课程名称：
						    </td>
						    <td width="50%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="cName" name="cName" style="width: 260px; height: 32px;"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FFFFFF">
						<td>&nbsp;</td>
						</tr>							
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    
						    <td bgcolor="#FFFFFF" colspan="2" align="center">
						       <input type="submit" value="查找"  style="width: 90px; height: 40px;" onclick="return check()"/>&nbsp; 
						       <input type="reset" value="清空"  style="width: 90px; height: 40px;"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
<script>
function check(){
	//获取课程名称，非空检验
	var name=$("#cName").val();		
	//截取空格
	var nm=$.trim(name);
	
	if(null==nm||""==nm){
		alert("课程名称不能为空");
		return false; //如果return false 会对表单进行提交
	}
	return true;
}
</script>   
</html>
