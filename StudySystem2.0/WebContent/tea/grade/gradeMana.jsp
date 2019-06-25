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
        	function homeworkDetails(){
        		var url="${pageContext.request.contextPath}/tea/homework/homeworkDetails.jsp";
                window.location.href=url;
        	}

           function homeworkAdd()
           {
              var url="${pageContext.request.contextPath}/tea/homework/homeworkAdd.jsp";
              window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/images/allbg.gif'>
		<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="13" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:30px">成绩管理</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
				<td>周一晚上</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">					
					<td width="5%">序号</td>
					<td width="15%">姓名</td>
					<td width="15%">学号</td>
					<td width="15%">分数</td>
					<td width="20%">操作</td>
		        </tr>

		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">				
				<td bgcolor="#FFFFFF" align="center">1</td>
				<td bgcolor="#FFFFFF" align="center">小明</td>
				<td bgcolor="#FFFFFF" align="center">111</td>
				<td bgcolor="#FFFFFF" align="center">90</td>
				<td bgcolor="#FFFFFF" align="center">
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">录入</a>&nbsp;&nbsp;
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">修改</a>&nbsp;&nbsp;
				</td>							
		</tr>
		
		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">				
				<td bgcolor="#FFFFFF" align="center">2</td>
				<td bgcolor="#FFFFFF" align="center">小白</td>
				<td bgcolor="#FFFFFF" align="center">112</td>
				<td bgcolor="#FFFFFF" align="center"></td>
				<td bgcolor="#FFFFFF" align="center">
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">录入</a>&nbsp;&nbsp;
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">修改</a>&nbsp;&nbsp;
				</td>							
		</tr>
		
		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">				
				<td bgcolor="#FFFFFF" align="center">3</td>
				<td bgcolor="#FFFFFF" align="center">小黎</td>
				<td bgcolor="#FFFFFF" align="center">113</td>
				<td bgcolor="#FFFFFF" align="center"></td>
				<td bgcolor="#FFFFFF" align="center">
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">录入</a>&nbsp;&nbsp;
					<a href="javascript:void(0)" onclick="#"  class="pn-loperator">修改</a>&nbsp;&nbsp;
				</td>							
		</tr>			

	</table>
	
	<table width='98%'  border='0'style="margin-top:8px;margin-left: 10px;">
		<tr>
			<td>
				<input type="button" value="导出成绩" style="width: 120px;" onclick="#" />
			</td>
		</tr>
	</table>
	</body>
</html>
