<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>志亨公司销售管理系统</title>
		<link href="${pageContext.request.contextPath}/css/cskt.css" type=text/css rel=stylesheet>
		<script type="text/javascript">
		function init()
		{
			top.frames.frmLeft.document.location.replace("left");				
		}
		</script>
	</head>
	<body onload="init();" oncontextmenu=self.event.returnValue=false onmouseover="window.status='none';return true;" MS_POSITIONING="FLOWLayout" bottomMargin="0" leftMargin="0" topMargin="0" rightMargin="0">
<TABLE height=77 cellSpacing=0 cellPadding=0 width="100%" 
background=../images/m_tbg.jpg border=0>
  <TBODY>
  <TR>
    <TD width=253 rowSpan=2><IMG src="${pageContext.request.contextPath}/images/logo_porject.gif"></TD>
    <TD height=35>
      <TABLE cellSpacing=0 cellPadding=0 align=right border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE id=nameInfo cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD align=middle>您好，<STRONG>马茂忠</STRONG>（<A 
                  href="#" 
                  target=_self>转个人管理</A>&nbsp;&nbsp; <A 
                  href="#">退出</A>） 
				2008-9-6&nbsp;星期六</TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE id=mainTopMenu cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
              <TR>
                <TD><A href="#"><IMG 
                  id=backtop alt=后退 src="${pageContext.request.contextPath}/images/back_m1bt1.gif" border=0 
                  name=backtop></A></TD>
                <TD><A href="#"><IMG 
                  id=backtop2 alt=前进 src="${pageContext.request.contextPath}/images/back_m2bt1.gif" border=0 
                  name=backtop2></A></TD>
                <TD><A href="#"><IMG 
                  height=14 alt=提醒 src="${pageContext.request.contextPath}/images/alt2.gif" width=17 
                  border=0></A> <BGSOUND src=""></TD>
                <TD><A href="#" 
                  target=_self>日程</A></TD>
                <TD><A href="#" 
                  target=_self>系统设置</A></TD>
                <TD><A href="#" 
                  target=_self>使用帮助</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD vAlign=bottom align=right>
      <TABLE style="MARGIN-BOTTOM: 0px" cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD><A href="#"><IMG 
          id=menu10 alt=首页 src="${pageContext.request.contextPath}/images/m_m1.gif" border=0 name=menu10></A></TD>
          <TD><A href="#"><IMG 
            id=menu1 alt=项目管理 src="${pageContext.request.contextPath}/images/m_m2.gif" border=0 name=menu1></A></TD>
          <TD><A href="#"><IMG 
            id=menu3 alt=合同管理 src="${pageContext.request.contextPath}/images/m_m6.gif" border=0 name=menu3></A></TD>
          <TD><A href="#"><IMG 
            id=menu4 alt=库存管理 src="${pageContext.request.contextPath}/images/m_m3.gif" border=0 name=menu4></A></TD>
          <TD><A href="#"><IMG 
            id=menu5 alt=财务管理 src="${pageContext.request.contextPath}/images/m_m5.gif" border=0 name=menu5></A></TD>
          <TD><A href="#"><IMG 
            id=menu5 alt=统计分析 src="${pageContext.request.contextPath}/images/m_m4.gif" border=0 name=menu6></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>	</body>
</html>