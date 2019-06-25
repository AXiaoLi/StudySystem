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
		<script>
		function return1(){
			var url="${pageContext.request.contextPath}/stu/course/courseDetail.jsp";
			window.location.href=url;
		}
		</script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="20" colspan="20" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:40px">教学公告</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align='center' bgcolor="#FFFFFF">
				<td>&nbsp;</td>
				
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="15%">教学公告标题</td>
					<td width="50%">教学公告内容</td>
					<td width="15%">发布者</td>
					<td width="15%">发布日期</td>
					
		        </tr>
		 
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF" align="center">1</td>
				<td bgcolor="#FFFFFF" align="center">考试时间</td>
				<td bgcolor="#FFFFFF" align="center">
					考试时间：2019年6月20日				
					考试地点：2教106				
					考核方式：闭卷
				</td>
				<td bgcolor="#FFFFFF" align="center">张三</td>
				<td bgcolor="#FFFFFF" align="center">2019-06-10</td>
			</tr>
				

	</table>
	</body>
</html>
