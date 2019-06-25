<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
          
           function replay()
           {
               var strUrl = "${pageContext.request.contextPath}/message/messageReplay.jsp";             
               window.location.reload();
           }
        </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="14" background="/StudySystem2.0/img/tbg.gif" align="center" style="font-size:30px">互动交流</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align="center" bgcolor="#FFFFFF">
				<td>&nbsp;</td>	
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="30%">信息内容</td>
					<td width="10%">发布时间</td>
					<td width="30%">回复信息</td>
					<td width="10%">回复时间</td>
					<td width="15%">操作</td>
		        </tr>	
		       
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
					<td bgcolor="#FFFFFF" align="center">
						 1
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 老师，作业可以延时交吗？
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 2019-06-10
					</td>
					<td bgcolor="#FFFFFF" align="center">
					  	 可以啊，不过会扣分。
					</td>
					<td bgcolor="#FFFFFF" align="center">
						2019-06-11
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="javascript:void(0)" onclick="replay()"  class="pn-loperator">回复</a>
					</td>
									
				</tr>
				
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
					<td bgcolor="#FFFFFF" align="center">
						 2
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 老师，我下周的课请假。
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 2019-06-12
					</td>
					<td bgcolor="#FFFFFF" align="center">
					  	
					</td>
					<td bgcolor="#FFFFFF" align="center">
						
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="javascript:void(0)" onclick="replay()"  class="pn-loperator">回复</a>
					</td>				
				</tr>
			</table>
			<%--
			<%@ include  file="/jsp/pageFile.jsp" %>  --%> 
	</body>
</html>
