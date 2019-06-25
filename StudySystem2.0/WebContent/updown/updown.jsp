<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body> 
      <% 
          try
          {
              String vedioAttachment=request.getParameter("vedioAttachment");
	          String attachmentOldName=request.getParameter("attachmentOldName");
	          attachmentOldName=java.net.URLDecoder.decode(attachmentOldName,"UTF-8");
	          System.out.println(attachmentOldName+vedioAttachment);
	          
	          out.clear();
	          out=pageContext.pushBody(); 
          }
          catch(Exception e)
          {%>
              <script type="text/javascript">
                    alert("文件不存在。请联系管理人员");
                    window.history.back();
              </script>
        <%}
      %> 

      
  </body>
</html>
