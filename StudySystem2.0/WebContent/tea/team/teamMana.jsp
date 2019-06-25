<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css" />
		
		<script language="JavaScript" src="${pageContext.request.contextPath}/js/public.js" type="text/javascript"></script>
        <script language="javascript">
        function return1(){
        	var url="${pageContext.request.contextPath}/tea/course/courseDetail.jsp";
        	window.location.href=url;
        }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="13" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:20px">教学团队</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align="center" bgcolor="#FFFFFF">
				<td>&nbsp;</td>	
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%" bgcolor="#FFFFFF"></td>
					<td width="10%">老师工号</td>
					<td width="30%">老师姓名</td>
					<td width="15%">操作</td>
		        </tr>
		        		
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td>&nbsp;</td>	
				<td bgcolor="#FFFFFF" align="center">124</td>
				<td bgcolor="#FFFFFF" align="center">李四</td>
				<td bgcolor="#FFFFFF" align="center">
					<%--取消链接的默认行为 --%> 
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">删除</a>
				</td>
			</tr>	

	</table>
	<br></br>
	
	
	<table width='98%'  border='0'style="margin-top:8px;margin-left: 80px;">
		<tr>
			<td>
				<input type="button" value="邀请老师" style="width: 120px;" onclick="teaAdd()" />
			</td>
		</tr>
	</table>
	</body>
</html>
