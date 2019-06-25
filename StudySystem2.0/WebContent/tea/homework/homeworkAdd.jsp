<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css" />
	 <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  </head>
  
  <body>
 

	   <div style="width:100%; height:200px;border:0px solid green;margin-top:100px">
		
		<form action="${pageContext.request.contextPath}/tea/homework/homeworkMana.jsp" name="formAdd" method="post" id="fm">
				     <table align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" class='title'><span>布置作业</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          作业标题：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="homeworkTitle" name="homeworkTitle" size="65"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          作业要求：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <textarea rows="3" id="homeworkDetails" name="homeworkDetails" style="width: 400px;"></textarea>						        
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          上传附件：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="file" id="attachmentOldName" name="attachmentOldName" size="65"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          发布人：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="teaNum" name="teaNum" size="65"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          截止日期：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="deadline" name="deadline" size="65"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="发布" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						       <input type="submit" value="返回" onclick="return1()"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
		</div>

  </body>
<script language="javascript">
   function check(){
	   var homeworkTitle=$("#homeworkTitle").val();
	   var homeworkDetails=$("#homeworkDetails").val();
	   var teaNum=$("#teaNum").val();
	   var deadline=$("#deadline").val();
	   
	   //做JS校验
	   var ht=$.trim(homeworkTitle);
	   var hd=$.trim(homeworkDetails);
	   var tn=$.trim(teaNum);
	   var dl=$.trim(deadline);
	   if(null==ht||""==ht){
		   alert("作业标题不能为空");
		   return;
	   }
	   if(null==hd||""==hd){
		   alert("作业要求不能为空");
		   return;
	   }
	   if(null==tn||""==tn){
		   alert("发布人不能为空");
		   return;
	   }
	   if(null==dl||""==dl){
		   alert("截止日期不能为空");
		   return;
	   }
	   //利用JS的方式提交表单
	   document.getElementById("fm").submit();
   }
   
</script>
<script>
function return1(){
   	var url="${pageContext.request.contextPath}/tea/homework/homeworkMana.jsp";
   	window.location.href=url;
   }
</script>
</html>