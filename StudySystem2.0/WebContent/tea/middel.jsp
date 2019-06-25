<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'middel.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		-->
	</style>
	<style> 
		.navPoint { 
		COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt 
		} 
	</style>
    <script>
		function switchSysBar()
		{ 
			var locate=location.href.replace('/StudySystem2.0/tea/middel.jsp','');
			var ssrc=document.all("img1").src.replace(locate,'');
			if (ssrc=="/StudySystem2.0/img/main_30.gif")
			{ 
				document.all("img1").src="/StudySystem2.0/img/main_30_1.gif";
				document.all("frmTitle").style.display="none";
			} 
			else
			{ 
				document.all("img1").src="/StudySystem2.0/img/main_30.gif";
				document.all("frmTitle").style.display="";
			} 
		} 
    </script>
  </head>
  
  <body style="overflow:hidden">
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="156" id=frmTitle noWrap name="fmTitle" align="center" valign="top">
					<iframe name="I1" height="100%" width="156" src="/StudySystem2.0/tea/left.jsp" border="0" frameborder="0" scrolling="no">
						浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
					</iframe>
				</td>
				<td width="4" valign="middle" background="/StudySystem2.0/images/main_27.gif" onclick="switchSysBar()">
					<SPAN class=navPoint id=switchPoint title=关闭/打开左栏>
					<img src="/StudySystem2.0/images/main_30.gif" name="img1" width="4" height="47" id="img1">
					</SPAN>
				</td>
				<td align="center" valign="top">
					<iframe name="I2" height="100%" width="100%" border="0" frameborder="0" src="/StudySystem2.0/stu/sysPro.jsp">
						浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</html>
