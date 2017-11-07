<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
--Modifier:Yuppie
--Modify Time:2007-4-19 14：27
--Modify Content:Arrow
-->
<html>
	<head>
		<title>待办事项清单</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="${pageContext.request.contextPath}/css/style1.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/general.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/common/common.css" rel="stylesheet" type="text/css">		
		<script language="javascript" src="${pageContext.request.contextPath}/scripts/client/VSButtonMouseEvents.lib.js"></script>
		<script language="javascript" src="${pageContext.request.contextPath}/scripts/client/VSTables.lib.js"></script>		
		<script language="javascript">
		    var g_oTable = new XSLTTable();
			
			function MouseOver()
			{
				g_oTable.MouseOver();
			}
			function MouseOut()
			{
				g_oTable.MouseOut();
			}
			function MouseDown()
			{
				g_oTable.MouseDown();
				//window.location.href = "工程质量监督记录维护.htm";
			}
			function Query()
			{
				document.getElementsByName("spnQuery")[0].className = "Display";

				document.getElementsByName("spnResult")[0].className = "NoDisplay";

			}
			
			//资料审查
			function OpenCheck()
			{
				//window.location.href = "资料审查.htm";
				window.showModalDialog("资料审查维护.htm","StatusNO","dialogWidth:800px;DialogHeight=750px;");
			}
			
			//监督分配
			function OpenSupAssign()
			{
				window.showModalDialog("工程监督分配与调度维护.htm","StatusNO","dialogWidth:800px;DialogHeight=750px;");
			}
			
			//投诉分配
			function OpenReqAssign()
			{
				window.showModalDialog("投诉分配与调度维护.htm","StatusNO","dialogWidth:800px;DialogHeight=750px;");
			}
			
			function DelMPPrj()
        	{
        		window.location.href = "工程质量监督记录.htm";
        	}			
			function changeSort(fileName)
		    {	
		    	if(document.getElementById("txtSortField").value==fileName)
		    	{
		    		if(document.getElementById("txtSortFlag").value == "ASC")
		    		{
		    			document.getElementById("txtSortFlag").value ="DESC";
		    			document.getElementById("imgArrow"+fileName).src="../images/pointdown.gif";
		    		}
		    		else
		    		{
		    			document.getElementById("txtSortFlag").value ="ASC";
		    			document.getElementById("imgArrow"+fileName).src="../images/pointup.gif";
		    		}
		    		document.getElementById("imgArrow"+fileName).className="Display";
		    	}		    	
		    	else
		    	{		    		
		    		document.getElementById("imgArrow"+document.getElementById("txtSortField").value).className="NoDisplay";
		    		document.getElementById("txtSortField").value=fileName;
		    		document.getElementById("imgArrow"+fileName).className="Display";
		    		document.getElementById("txtSortFlag").value = "ASC";
		   			document.getElementById("imgArrow"+fileName).src="../images/pointup.gif";
		    	}		    	
		    }
		</script>
	</head>
	<body leftmargin="0" topmargin="0">
		<center>
			<table width="95%" height="41" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="5" height="29" bgcolor="#ffb77a">
						&nbsp;</td>
					<td width="200" rowspan="2" bgcolor="#f7f7f7" class="title2_15">
						<font color="#006699" class="title2_15">
							<span id="lblTitle" class="title2_15" style="FONT-WEIGHT: bold;
                        FONT-SIZE: 15px">待办事项清单</span>&nbsp; </font>
					</td>
					<td rowspan="2" background="../images/title_r2_c2.gif">
						&nbsp;</td>
				</tr>
				<tr>
					<td height="12" bgcolor="#d46100">
						&nbsp;</td>
				</tr>
			</table>
			<table width="95%" cellpadding="0" cellspacing="0" style="border-bottom:ridge 2px #c7d7e7">
			    <tr><td colspan="7">&nbsp;</td></tr>
			    <tr>
			        <td>&nbsp;</td>
			        <td align="center">
			            <table>
			                <tr>
				                <td align="right" style="width: 88px">
                                    监督登记号：</td>
				                <td align="left" style="width: 77px"><input style="width:157px" type="text" value="" /></td>
				                <td align="right" style="width: 98px">
                                    待办工作名称：</td>
				                <td align="left" style="width: 157px">
				                    <input style="width:157px" type="text" value="" />
				                </td>
                                <td class="text2_12" style="text-align:center; width: 26px;" colspan="7">
                                    <input id="Button1" name="btnShow" type="button" value="查询" class="EnabledButton" onmouseover="MBEventHandler.MouseOver(this)"
                                        onclick="" onmouseout="MBEventHandler.MouseOut(this)">
                                </td>
			                </tr>
			            </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr><td colspan="7">&nbsp;</td></tr>
	        </table>
			<table width="95%" border="0" cellpadding="0" cellspacing="0">
			    <tr><td style="height: 13px">&nbsp;</td></tr>
				<tr>
					<td align="left" style="height: 31px">
						<table width="297px" border="0" cellspacing="0" cellpadding="0" ID="Table1">
							<tr>
								<td class="text4_13" style="height: 18px">
									查询结果：</td>
								<td class="text4_13" style="height: 18px">
									共</td>
								<td class="text3_13" style="height: 18px">
									9,999</td>
								<td class="text4_13" style="height: 18px">
									条</td>
								<td class="text4_13" style="height: 18px">
									/</td>
								<td class="text4_13" style="height: 18px">
									共</td>
								<td class="text3_13" style="height: 18px">
									99</td>
								<td class="text4_13" style="height: 18px">
									页</td>
								<td class="text4_13" style="height: 18px">
									/</td>
								<td class="text4_13" style="height: 18px">
									目前在</td>
								<td class="text3_13" style="height: 18px">
									99</td>
								<td class="text4_13" style="height: 18px">
									页</td>
							</tr>
						</table>
					</td>
					<td align="right" style="height: 31px">
					    <table border="0" cellspacing="0" cellpadding="0" id="Table3">
							<tr>
							  <!--  <td>
							        <input id="btnShow" name="btnShow" type="button" value="审核" class="EnabledButton" onmouseover="MBEventHandler.MouseOver(this)"
							            onclick="GoDetail()" onmouseout="MBEventHandler.MouseOut(this)"></td>
							     <td>
							    		&nbsp;
							        <input id="btnAdd" name="btnAdd" type="button" value="" class="EnabledButton" onmouseover="MBEventHandler.MouseOver(this)"
							            onclick="GoDetail()" onmouseout="MBEventHandler.MouseOut(this)">
							    </td>
							   <td>
							        <input id="btnModyfy" name="btnModyfy" type="button" value="修改" class="EnabledButton" onmouseover="MBEventHandler.MouseOver(this)"
							            onclick="GoDetail()" onmouseout="MBEventHandler.MouseOut(this)">
							    </td>
							    <td>
							        <input id="btnDelete" name="btnDelete" type="button" value="删除" class="EnabledButton" onmouseover="MBEventHandler.MouseOver(this)"
							            onclick="DelMPPrj()" onmouseout="MBEventHandler.MouseOut(this)">
							    </td>-->
					        </tr>
						</table>
					</td>
				</tr>
			</table>
		</center>
        <center>
            &nbsp;</center>
        <center>
            &nbsp;</center>
        <center>
            &nbsp;</center>
        <center>
			<table width="95%" align="center" border="0">
				<thead class="TableHeader">
					<tr>
						<th nowrap width="10%" class="form_t1_m" height="18" onclick="changeSort('SuperviseNo')">
							监督登记号
							<img class="NoDisplay" id="imgArrowSuperviseNo" height="10" src="../images/pointdown.gif" width="13" border="0">
						</th>
						<th nowrap width="153" class="form_t1_m" height="18" onclick="changeSort('BuildCo')">
							建设单位
							<img class="NoDisplay" id="imgArrowBuildCo" height="10" src="../images/pointup.gif" width="13" border="0">
						</th>
						<th nowrap width="15%" class="form_t1_m" height="18" onclick="changeSort('ReportPerson')">
							报监人
							<img class="NoDisplay" id="imgArrowReportPerson" height="10" src="../images/pointup.gif" width="13" border="0">
						</th>
						<th nowrap width="15%" class="form_t1_m" height="18" onclick="changeSort('SuperviseDate')">
							报监日期
							<img class="Display" id="imgArrowSuperviseDate" height="10" src="../images/pointup.gif" width="13" border="0">
						</th>
						<th nowrap width="20%" class="form_t1_m" height="18" onclick="changeSort('AwaitDoProject')">
							待办工作名称
							<img class="NoDisplay" id="imgArrowAwaitDoProject" height="10" src="../images/pointup.gif" width="13" border="0">
						</th>
						<th nowrap class="form_t1_m" height="18" onclick="changeSort('Explain')" style="width: 219px">
							说明
							<img class="NoDisplay" id="imgArrowExplain" height="10" src="../images/pointup.gif" width="13" border="0">							
						</th>
					</tr>
				</thead>
				<tr class="TableOddRow" id="TableRow1" style="CURSOR: hand" align="center" name="TableRow">
					<td onmouseover="MouseOver()" onmouseout="MouseOut()">
						F02-2007-0304
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenCheck()" onmouseout="MouseOut()">
						滨州喜乐建筑有限公司
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenCheck()" onmouseout="MouseOut()">
						李高信
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenCheck()" onmouseout="MouseOut()">
						2007/04/12
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenCheck()" onmouseout="MouseOut()">
						资料审核
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenCheck()" onmouseout="MouseOut()" align="left" style="width: 219px">
						报监资料审查
					</td>
				</tr>
				<tr class="TableOddRow" id="Tr1" style="CURSOR: hand" align="center" name="TableRow">
					<td onmouseover="MouseOver()" onmouseout="MouseOut()">
						F01-2007-0310
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenSupAssign()" onmouseout="MouseOut()">
						滨州华信实业有限公司
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenSupAssign()" onmouseout="MouseOut()">
						刘艳红
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenSupAssign()" onmouseout="MouseOut()">
						2007/04/16
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenSupAssign()" onmouseout="MouseOut()">
						监督分配
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenSupAssign()" onmouseout="MouseOut()" align="left" style="width: 219px">
						监督单位-审批后分配人员
					</td>
				</tr>
				<tr class="TableOddRow" id="Tr1" style="CURSOR: hand" align="center" name="TableRow">
					<td onmouseover="MouseOver()" onmouseout="MouseOut()">
						F01-2007-0410
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenReqAssign()" onmouseout="MouseOut()">
						滨州第一建筑有限公司
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenReqAssign()" onmouseout="MouseOut()">
						高健
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenReqAssign()" onmouseout="MouseOut()">
						2007/04/20
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenReqAssign()" onmouseout="MouseOut()">
						投诉分配
					</td>
					<td onmouseover="MouseOver()" onclick="MouseDown();OpenReqAssign()" onmouseout="MouseOut()" align="left" style="width: 219px">
						监督单位-审批后分配人员
					</td>
				</tr>
				<tr>
        			<td colspan="6" align="right">
						<table border="0" cellspacing="0" cellpadding="0" ID="Table2">
							<tr>
								<td class="text4_13">
									第<input type="text" size="5" ID="Text1" NAME="Text1"></input>页</td>
								<td width="10">&nbsp;</td>
								<td class="EnabledButton">
									<a href="#">上一页</a></td>
								<td width="10px">
									&nbsp;</td>
								<td class="EnabledButton">
									<a href="#">下一页</a></td>
							</tr>
						</table>
        			</td>
				</tr>
			</table>					
        </center>
		<input type="hidden" name="txtSortFlag" id="txtSortFlag" value="ASC">
        <input type="hidden" name="txtSortField" id="txtSortField" value="SuperviseDate">
    </body>
</html>

