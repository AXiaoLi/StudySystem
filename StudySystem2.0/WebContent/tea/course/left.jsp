<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 
    <script src="${pageContext.request.contextPath}/js/menu.js"></script>

	<style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			color: #FFFFFF;
			font-weight: bold;
			font-size: 12px;
		}
		.STYLE2 {
			font-size: 12px;
			color: #03515d;
		}
		a:link {font-size:12px; text-decoration:none; color:#03515d;}
		a:visited{font-size:12px; text-decoration:none; color:#03515d;}
		.STYLE3 {font-size: 12px}
	</style>
  </head>

  <body>
     <table width="156"  border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" valign="top">
	            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				      <tr>
				        <td height="33" background="${pageContext.request.contextPath}/images/main_21.gif">&nbsp;</td>
				      </tr>
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td1" onClick="show(1)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20">
						              <div align="center">
							              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
							                <tr>
							                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
							                  <td valign="middle">
							                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">教学公告</div>
							                  </td>
							                </tr>
							               </table>
						              </div>
					            </td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show1" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/NoticeServlet?method=findNoticeByTeacher" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;教学公告</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td2" onClick="show(2)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">课程资源</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show2" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/PPTServlet?method=findPPTsWithPageByTeacher&num=1" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;教学课件</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/DocServlet?method=findDocsWithPageByTeacher&num=1" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;教学文档</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/VedioServlet?method=findVediosWithPageByTeacher&num=1" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;教学视频</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/atea/doc/docMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;创建分类</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td4" onClick="show(4)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">教学团队</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show4" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/team/teamMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;教学团队</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/team/request.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;查看请求</a>
					            </td>
					          </tr>		         
					        </table>
					    </td>
				      </tr>				    
				      <!-- caidan -->
				         
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td5" onClick="show(5)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">作业管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show5" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td>
					               <a href="${pageContext.request.contextPath}/tea/homework/homeworkMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;作业管理</a>
					            </td>
					          </tr>					 
					          <tr>
					            <td>
					               <a href="${pageContext.request.contextPath}/tea/homework/grade.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;查看修改评语成绩</a>
					            </td>
					          </tr>
					          <tr>
					            <td>
					               <a href="${pageContext.request.contextPath}/tea/homework/gradeExport.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;导出成绩</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				       <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td6" onClick="show(6)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">考勤管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show6" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/attendance/gradeAttendance.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;班级点名</a>
					            </td>
					          </tr>
					         
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td7" onClick="show(7)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">师生交流</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show7" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/message/messageMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;师生交流</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td8" onClick="show(8)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">班级管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show8" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/class/classMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;班级管理</a>
					            </td>
					          </tr>
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/class/classMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;查看消息</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td9" onClick="show(9)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"><img src="${pageContext.request.contextPath}/images/top_8.gif" width="16" height="16"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;">成绩管理</div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show9" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">
					          <tr>
					            <td><a href="${pageContext.request.contextPath}/tea/grade/gradeMana.jsp" target="I2" style="margin-left: 20px;">
					               <img src="${pageContext.request.contextPath}/images/arr3.gif" border="0">&nbsp;&nbsp;成绩管理</a>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
				      
				      <!-- caidan -->
				      <tr>
				        <td height="30" background="${pageContext.request.contextPath}/images/main_25.jpg" id="td8" onClick="show(8)">
					        <table width="100%" border="0" cellspacing="0" cellpadding="0">
					          <tr>
					            <td width="13%">&nbsp;</td>
					            <td width="72%" height="20"><div align="center">
					              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
					                <tr>
					                  <td><div align="center"></div></td>
					                  <td valign="middle">
					                      <div align="center" class="STYLE1" style="font-family: 微软雅黑;"></div>
					                  </td>
					                </tr>
					              </table>
					            </div></td>
					            <td width="15%">&nbsp;</td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <tr id="show8" style="display:none">
				        <td align="center" valign="top">
					        <table border="0" align="center" cellpadding="5" cellspacing="5">					        
					            <td>
					            </td>
					          </tr>
					        </table>
					    </td>
				      </tr>
				      <!-- caidan -->
				      
	            </table>
            </td>
        </tr>
     </table>
  </body>
</html>

