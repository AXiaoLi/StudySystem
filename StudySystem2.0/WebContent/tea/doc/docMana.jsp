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
        	function delDoc(dId){
        		//做删除视频之前的确认提示
        		if(confirm("确认删除当前的视频吗?")){
        			//向服务端发起请求，将当前正在删除的视频的编号发送到服务端
        			location.href="${pageContext.request.contextPath}/DocServlet?method=deleteDocByTeacher&id="+dId;
        		}
        	}
        	
           function docAdd()
           {
              var url="${pageContext.request.contextPath}/tea/doc/docAdd.jsp";
              window.location.href=url;
           }
           function down1(dId)
           {
        	   location.href="${pageContext.request.contextPath}/DocServlet?method=downloadDoc&id="+dId;		       
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='${pageContext.request.contextPath}/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="13" background="${pageContext.request.contextPath}/images/tbg.gif" align="center" style="font-size:20px">教学文档</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align="center" bgcolor="#FFFFFF">
				<td>&nbsp;</td>	
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%" bgcolor="#FFFFFF"></td>
					<td width="5%">序号</td>
					<td width="30%">资料名称</td>
					<td width="40%">附件</td>
					<td width="15%">操作</td>
		        </tr>
		        
		<c:forEach items="${page.list}" var="d"  varStatus="status">
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='white';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td>&nbsp;</td>
				<td bgcolor="#FFFFFF" align="center">${status.index+1}</td>
				<td bgcolor="#FFFFFF" align="center">${d.docName}</td>
				<td bgcolor="#FFFFFF" align="center">
					${d.attachmentOldName}
					&nbsp;&nbsp;&nbsp; 
					<a href="#" onclick="down1(${d.docId})" style="font-size: 10px; color: red">down</a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					<%--取消链接的默认行为 --%> 
					<a href="javascript:void(0)" onclick="delDoc(${d.docId})"  class="pn-loperator">删除</a>
				</td>
			</tr>
		</c:forEach>		

	</table>
	<br></br>
	<%@ include file="/jsp/pageFile.jsp" %>	
	
	<table width='98%'  border='0'style="margin-top:8px;margin-left: 80px;">
		<tr>
			<td>
				<input type="button" value="上传教学资料" style="width: 120px;" onclick="docAdd()" />
			</td>
		</tr>
	</table>
	</body>
</html>
