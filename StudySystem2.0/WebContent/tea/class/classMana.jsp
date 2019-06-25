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
					<td height="14" colspan="13" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:30px">班级管理</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
				<td>&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%"></td>
					<td width="5%">序号</td>
					<td width="20%">班级名称</td>
					<td width="15%">老师名字</td>
					<td width="20%">操作</td>
		        </tr>

		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF"></td>
				<td bgcolor="#FFFFFF" align="center">1</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="classDetails()"  class="pn-loperator">周一晚上 </a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					张三
				</td>			
				<td bgcolor="#FFFFFF" align="center">				
					<a href="javascript:void(0)" onclick="delClass()"  class="pn-loperator">删除</a>				
				</td>
			</tr>
			
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF"></td>
				<td bgcolor="#FFFFFF" align="center">2</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="classDetails()"  class="pn-loperator">周一晚上 </a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					李四
				</td>			
				<td bgcolor="#FFFFFF" align="center">				
					<a href="javascript:void(0)" onclick="delClass()"  class="pn-loperator">删除</a>				
				</td>
			</tr>

	</table>
	
	<table width='98%'  border='0'style="margin-top:8px;margin-left: 10px;">
		<tr>
			<td>
				<input type="button" value="创建班级" style="width: 120px;" onclick="classAdd()" />
			</td>
		</tr>
	</table>
	</body>
</html>
