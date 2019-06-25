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

		<link rel="stylesheet" type="text/css" href="/StudySystem2.0/css/base.css" />
						
       
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/img/allbg.gif'>
		<div id="right">
	      <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="7" background="/StudySystem2.0/img/tbg.gif" align="center" style="font-size:30px">我的课程</td>					
				</tr>
				<tr align="center" bgcolor="#FFFFFF">
				<td>&nbsp;</td>	
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="25%">课程名称</td>
					<td width="10%">操作</td>
		        </tr>
				
			 <c:forEach items="${list}" var="c"  varStatus="status">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
					<td bgcolor="#FFFFFF" align="center">
						<a href="javascript:void(0)" onclick="courseDetail(${c.cId})"  class="pn-loperator">${c.cName}</a>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <%--取消链接的默认行为 --%>
						<a href="javascript:void(0)" onclick="delCourse(${c.cId})"  class="pn-loperator">退出</a>
						
					</td>
				</tr>
			  </c:forEach>
			
			</table>
      </div>
	</body>	
<script>
function courseDetail(cId)
{
   var url="${pageContext.request.contextPath}/StuCourseServlet?method=stuFindCourseByCid&id="+cId;
   window.location.href=url;
}
function delCourse(cId){
	//做删除课程之前的确认提示
	if(confirm("确认删除当前的课程吗?")){
		//向服务端发起请求，将当前正在删除的课程的编号发送到服务端
		location.href="${pageContext.request.contextPath}/StuCourseServlet?method=deleteCourseByStu&id="+cId;
	}
}
</script>
</html>




