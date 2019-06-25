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
        	function delNotice(nId){
        		//做删除课件之前的确认提示
        		if(confirm("确认删除当前的公告吗?")){
        			//向服务端发起请求，将当前正在删除的课件的编号发送到服务端
        			location.href="${pageContext.request.contextPath}/NoticeServlet?method=deleteNoticeByTeacher&id="+nId;
        		}
        	}
        	
           function noticeAdd()
           {
              var url="${pageContext.request.contextPath}/tea/notice/noticeAdd.jsp";
              window.location.href=url;
           }
           function return1(){
   			var url="${pageContext.request.contextPath}/tea/course/courseDetail.jsp";
   			window.location.href=url;
   		}
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="13" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:40px">教学公告</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align='center' bgcolor="#FFFFFF">
				<td>&nbsp;</td>				
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%" bgcolor="#FFFFFF"></td>
					<td width="5%">序号</td>
					<td width="20%">教学公告标题</td>
					<td width="40%">教学公告内容</td>
					<td width="10%">发布者</td>
					<td width="10%">操作</td>
		        </tr>
		        
		
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td>&nbsp;</td>
				<td bgcolor="#FFFFFF" align="center">1</td>
				<td bgcolor="#FFFFFF" align="center">考试时间</td>
				<td bgcolor="#FFFFFF" align="center">
					考试时间：2019年6月20日				
					考试地点：2教106				
					考核方式：闭卷
				</td>
				<td bgcolor="#FFFFFF" align="center">
					张三
				</td>
				<td bgcolor="#FFFFFF" align="center">
					<%--取消链接的默认行为 --%> 
					<a href="javascript:void(0)" onclick="delNotice(${n.noticeId})"  class="pn-loperator">删除</a>
				</td>
			</tr>
		

	</table>
	<br></br>
	
	
	<table width='98%'  border='0'style="margin-top:8px;margin-left: 450px;">
		<tr>
			<td>
				<input type="button" value="添加教学公告" style="width: 120px;" onclick="noticeAdd()" />
			</td>
		</tr>
	</table>
	</body>
</html>
