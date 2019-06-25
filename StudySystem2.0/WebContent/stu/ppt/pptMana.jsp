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
				var url="${pageContext.request.contextPath}/stu/course/courseDetail.jsp";
				window.location.href=url;
			}
           function down1(pId)
           {
        	   location.href="${pageContext.request.contextPath}/PPTServlet?method=downloadPPT&id="+pId;		       
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="13" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:30px">PPT</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align="center" bgcolor="#FFFFFF">
				<td>&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%" bgcolor="#FFFFFF"></td>
					<td width="10%">序号</td>
					<td width="35%">课件名称</td>
					<td width="35%">附件</td>
					<td width="10%" bgcolor="#FFFFFF"></td>
		        </tr>
		        
		<c:forEach items="${page.list}" var="p"  varStatus="status">
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FFFFFF';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td>&nbsp;</td>
				<td bgcolor="#FFFFFF" align="center">${status.index+1}</td>
				<td bgcolor="#FFFFFF" align="center">${p.pptName}</td>
				<td bgcolor="#FFFFFF" align="center">
					${p.attachmentOldName}
					&nbsp;&nbsp;&nbsp; 
					<a href="#" onclick="down1(${p.pptId})" style="font-size: 10px; color: red">down</a>
				</td>
				<td>&nbsp;</td>
			</tr>
		</c:forEach>		

	</table>
	<br />
	<%@ include file="/jsp/pageFile.jsp" %>	
	</body>
</html>
