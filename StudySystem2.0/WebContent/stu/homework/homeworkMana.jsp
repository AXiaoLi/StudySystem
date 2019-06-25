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
        	function homeworkDetails(hId){
        		var url="${pageContext.request.contextPath}/stu/homework/homeworkDetails.jsp";
                window.location.href=url;
        	}
        	
           function homeworkDown(stuHId)
           {
              var url="${pageContext.request.contextPath}/HomeworkServlet?method=downloadHomework&id="+stuHId;
              window.location.href=url;
           }
           function addHomework(hId)
           {
              var url="${pageContext.request.contextPath}/HomeworkServlet?method=addHomework&id="+hId;
              window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/StudySystem2.0/images/allbg.gif'>
		<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="13" background="/StudySystem2.0/images/tbg.gif" align="center" style="font-size:30px">课程作业</td>
					<td>
					<input type="submit" value="返回" style="width: 120px;" onclick="return1()"/>
					</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="20%">作业标题</td>
					<td width="18%">发布日期</td>
					<td width="18%">截止日期</td>
					<td width="20%">附件</td>
					<td width="20%">操作</td>
		        </tr>
		    <%--   
		<c:forEach items="${page.list}" var="h"  varStatus="status">
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF" align="center">${status.index+1}</td>
				<td bgcolor="#FFFFFF" align="center">
					${h.homeworkName} 
					<a href="javascript:void(0)" onclick="homeworkDetails(${h.homeworkId})"  class="pn-loperator">提交</a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					${h.deadline}
				</td>
				<td bgcolor="#FFFFFF" align="center">
					${h.attachmentOldName} 
					<a href="javascript:void(0)" onclick="homeworkDown(${h.stuHomeworkId})"  class="pn-loperator">提交</a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="addHomework(${h.homeworkId})"  class="pn-loperator">提交</a>
				</td>
			</tr>
		</c:forEach>	 
		--%>	
		
		<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF" align="center">1</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="homeworkDetails(${h.homeworkId})"  class="pn-loperator">第一次作业 </a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					2019-06-10
				</td>
				<td bgcolor="#FFFFFF" align="center">
					2019-06-20
				</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="homeworkDown(${h.stuHomeworkId})"  class="pn-loperator">第一次作业.docx</a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="addHomework(${h.homeworkId})"  class="pn-loperator">提交</a>
				</td>
			</tr>
			
			<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
				<td bgcolor="#FFFFFF" align="center">2</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="homeworkDetails(${h.homeworkId})"  class="pn-loperator">第二次作业 </a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					2019-06-10
				</td>
				<td bgcolor="#FFFFFF" align="center">
					2019-06-25
				</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="homeworkDown(${h.stuHomeworkId})"  class="pn-loperator"></a>
				</td>
				<td bgcolor="#FFFFFF" align="center">
					
					<a href="javascript:void(0)" onclick="addHomework(${h.homeworkId})"  class="pn-loperator">提交</a>
				</td>
			</tr>

	</table>
	<%-- 
	<%@ include file="/jsp/pageFile.jsp" %> 
	--%>	
	</body>
</html>
