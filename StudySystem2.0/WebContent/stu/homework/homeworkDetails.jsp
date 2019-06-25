<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />

<script type="text/javascript">
        function return1()
        {
              var url="${pageContext.request.contextPath}/stu/homework/homeworkMana.jsp";
              window.location.href=url;
        }
    </script>
</head>

<body>
	<h1>作业要求</h1>
	<div>
		<table width="100%" border="0">
			<tr>
				<td align="center">第一次作业
					<hr />
				</td>
			</tr>
			<tr>
				<td align="center" style="word-break: break-all;">作业要求： 完成第一次作业
					<hr />
				</td>
			</tr>
			<tr>
				<td align="center">发布时间:2019-06-10
					<hr />
				</td>
			</tr>
			<tr>
				<td><input type="button" value="返回" style="width: 120px;" onclick="return1()" /></td>

			</tr>
		</table>
	</div>
</body>
</html>
