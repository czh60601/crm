<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
	<HEAD>
		<title>webLeftFrame</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel='StyleSheet' href='${pageContext.request.contextPath}/pub/tree.css' type='text/css'>
		<link rel="StyleSheet" href="${pageContext.request.contextPath}/dtree/dtree.css" type="text/css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/dtree/dtree.js"></script>
		<script language="javascript">
			function MouseOVER(){
				window.event.srcElement.style.textDecoration='underline';
				window.event.srcElement.style.color = 'blue';
			}
			
			function MouseOUT(){
				window.event.srcElement.style.textDecoration='none';
				window.event.srcElement.style.color = '#333333';
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=true" onload="" topmargin="5" leftmargin="5"
		bgcolor="#e1ffff">
		<form id="Form1" method="post" runat="server">
		
			<div class="dtree" align="right">
				<a href="javascript: d.openAll();" onmouseover="MouseOVER()" onmouseout="MouseOUT()">
					Open</a> | <a href="javascript: d.closeAll();" onmouseover="MouseOVER()" onmouseout="MouseOUT()">
					Close</a>
			</div>
			
			<iframe id=fraExecute name=fraExecute frameborder=1 scrolling="auto" width="180" height="100" src="CMS090000\CMS92000\CMS92020.aspx" style=""></iframe>
		</form>
	</body>
</HTML>
