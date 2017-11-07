///<file name="VSTables.lib.js" design="James YU" program="James YU" createdate="2002/08/09">
///	<description>�B�z�ƹ��bTable�W���ʤ��I���Ƥ��ĪG�C</description>
///	<modifies>
///	</modifies>
///</file>

///<class name="MTable"><description>�ƹ���Table�W���ʤ�Click�ƥ�B�z, XSLTTable��������C</description></class>
function ShowDialog(url)
{
    var childWin = window.open (url,'newwindow','fullscreen=no,height=600,width=800,top=0,left=0,toolbar=no,menubar=no,scrollbars=yes, resizable=no,location=no, status=no') 
    return childWin;	
}
function ShowDS(url)
{
    window.showModalDialog(url,'','dialogWidth=700px;dialogHeight=550px')
}
function MTable()
{
	// Properties
	// Single selection, 
	//	if false, need to uncheck the previous row
	///<property name="SingleSelection" type="boolean">�]�w Table �����Φh��, �w�]����� (Read/Write)�C</property>
	this.SingleSelection = true;
	// Selected row.
	this.SelectedRow = null;
	// Selected row's className.
	this.SelectedRowClassName = "";	
	// Previous mouse over row
	this.PrevRow = null;
	// Previous mouse over row's className;
	this.PrevRowClassName = "";

	// Methods
	///<method name="MouseOver">
	///	<description>mouse over�ƥ�ΦU����Ƥ���C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.MouseOver = F_mouseOver;
	///<method name="MouseOut">
	///	<description>mouse out�ƥ�ΦU����Ƥ���C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.MouseOut = F_mouseOut;
	///<method name="MouseDown">
	///	<description>mouse click ��, �]�w�β�������C��C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.MouseDown = F_mouseDown;
	
	// Method MouseOver
	function F_mouseOver()
	{
		var row = window.event.srcElement;

		while (row.tagName != "TR")
		{
			row = row.parentElement;
		}
		
		this.PrevRow = row;
		
		if (row != this.SelectedRow)
		{
			this.PrevRowClassName = row.className;
			row.className = "MouseOver";
		}
		else
		{
			row.className = "MouseDown";
			//row.className = this.SelectedRowClassName;
		}
	}

	// Method MouseOut
	function F_mouseOut()
	{
		var row = window.event.srcElement;

		while (row.tagName != "TR")
		{
			row = row.parentElement;
		}
		
		if (this.PrevRow != null)
		{
			if (this.PrevRow != this.SelectedRow)
			{
				this.PrevRow.className = this.PrevRowClassName;
			}
			else
			{
				this.PrevRow.className = "MouseDown";
			}
		}
	}

	// Method MouseDown
	function F_mouseDown()
	{
		var row = window.event.srcElement;
		
		while (row.tagName != "TR")
		{
			row = row.parentElement;
		}
		
		// �����e�@����ܪ��A
		if (this.SelectedRow != null && this.SingleSelection == true)
		{
			this.SelectedRow.className = this.SelectedRowClassName;
		}
		
		if (row != this.SelectedRow)
		{
			// ��@��ܼҦ�
			//if (this.SingleSelection == true || this.SelectedRow == null)
			if (this.SingleSelection == true)
			{
				this.SelectedRow = row;
				row.className = "MouseDown";
				this.SelectedRowClassName = this.PrevRowClassName;
			}
		}
		else
		{
			//this.SelectedRow.className = this.SelectedRowClassName;
			row.className = "MouseOver";

			this.SelectedRow = null;
			this.PrevRowClassName = this.SelectedRowClassName;
			this.SelectedRowClassName = "";
		}
	}
}

///<class name="XSLTTable"><description>�NXML��Ƴz�LXSLT�ഫ��X�� Table�C</description></class>
function XSLTTable()
{
	var m_oTable = new MTable();
	var m_oXSLT = null;
	var m_iViewPage = -1;
	var m_bMultiPage = true;

	// Add 2003/11/22
	// Variables field definition.
	var m_sVarVSTableNode = "oVSTable";
	var m_sVarTableName = "TableName";
	var m_sVarPrevButtonName = "PrevButtonName";
	var m_sVarNextButtonName = "NextButtonName";
	
	var m_soVSTable = "";
	var m_sTableName = "";
	var m_sPrevButtonName = "";
	var m_sNextButtonName = "";

	// Style setting
	// Toggle table visible.
	var m_sStyleDisplay = "Display";
	var m_sStyleNoDisplay = "NoDisplay";
	// Toggle button enable.
	var m_sEnabledButton = "EnabledButton";
	var m_sDisabledButton = "DisabledButton";
	
	// Properties
	// Multiple page.
	///<property name="MultiPage" type="boolean">��X�� Table �O�_�H�h���覡���, true: �h�����, false: �歶���, �w�]�Ȭ�true (Read/Write)�C</property>
	this.MultiPage = m_bMultiPage;
	// Single selection, 
	//	if true, need to uncheck the previous row
	///<property name="SingleSelection" type="boolean">�]�w Table �����Φh��, �w�]����� (Read/Write)�C</property>
	this.SingleSelection = m_oTable.SingleSelection;
	// Selected row.
	this.SelectedRow = m_oTable.SelectedRow;
	// Selected row's className.
	this.SelectedRowClassName = m_oTable.SelectedRowClassName;
	// Previous mouse over row
	this.PrevRow = m_oTable.PrevRow;
	// Previous mouse over row's className;
	this.PrevRowClassName = m_oTable.PrevRowClassName;

	// Methods
	///<method name="MouseOver">
	///	<description>mouse over�ƥ�ΦU����Ƥ���C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.MouseOver = m_oTable.MouseOver;
	///<method name="MouseOut">
	///	<description>mouse out�ƥ�ΦU����Ƥ���C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.MouseOut = m_oTable.MouseOut;
	///<method name="MouseDown">
	///	<description>mouse click ��, �]�w�β�������C��C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.MouseDown = m_oTable.MouseDown;
	///<method name="F_SetXSLT">
	///	<description>�]�w�U���ഫ�ӷ��C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///		<param name="psXML" type="String">XML data�C</param>
	///		<param name="psXSLT" type="String">XSLT data�C</param>
	///		<param name="poOutput" type="Object"><![CDATA[��X��HTML����, <div> or <span>]]> �C</param>
	///	</params>
	///</method>
	this.SetXSLT = F_SetXSLT;
	///<method name="PrevPage">
	///	<description>�����ܤW�@���C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.PrevPage = F_PrevPage;
	///<method name="NextPage">
	///	<description>�����ܤU�@���C</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.NextPage = F_NextPage;
	///<method name="TransferXML">
	///	<description>�ഫXML��ơC</description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.TransferXML = F_TransferXML;
	///<method name="GetSelectedXMLData">
	///	<description><![CDATA[�NTable�W�Q��ܦC����ƿ�X��XML���, �榡���C<ROOT><VSRECORD><DATAFIELD NAME="���id">��줺�e</DATAFIELD></VSRECORD></ROOT>]]></description>
	///	<returns>none�C</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///	</params>
	///</method>
	this.GetSelectedXMLData = F_GetSelectedXMLData;
	
	// Add 2003/11/22
	this.SetTableInfo = F_SetTableInfo;

	function F_SetTableInfo(psoVSTable, psTableName, psPrevButtonName, psNextButtonName)
	{
		m_soVSTable = psoVSTable;
		m_sTableName = psTableName;
		m_sPrevButtonName = psPrevButtonName;
		m_sNextButtonName = psNextButtonName;
	}
	
	//
	function F_SetXSLT(psXML, psXSLT, poOutput)
	{
		// Add 2003/11/23
		// �W�[TableName, PrevButtonName, NextButtonName �P�B����.
		try {
			var oXMLDoc = new ActiveXObject("MSXML2.DOMDocument.3.0");

			oXMLDoc.async = false;
		} catch (e)	{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "Can't create object 'Msxml.DOMDocument'");
		}

		var bLoadXMLSuccess = oXMLDoc.loadXML(psXSLT);

		if (bLoadXMLSuccess == false)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "Load XSLT data failed");
		}
		
		// �ˬd oVSTable
		var oNodes = oXMLDoc.selectNodes("//xsl:variable[@name='" + m_sVarVSTableNode + "']");
		
		if (oNodes.length != 1)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "variable '" + m_sVarVSTableNode + "' is not set correct!!");
		}
		
		var oAttr = oNodes.item(0).getAttributeNode("select");
		
		if (oAttr == null)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "attribute 'select' of " + m_sVarVSTableNode + " is not set!!");
		}
		
		// �u�O�_��, �S�[ "'" , xslt �|�ण�X�� ???
		oAttr.value = "'" + m_soVSTable + "'";
		
		// �ˬd TableName
		oNodes = oXMLDoc.selectNodes("//xsl:variable[@name='" + m_sVarTableName + "']");
		
		if (oNodes.length != 1)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "variable '" + m_sVarTableName  + "' is not set correct!!");
		}
		
		oAttr = oNodes.item(0).getAttributeNode("select");
		
		if (oAttr == null)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "attribute 'select' of " + m_sVarTableName  + " is not set!!");
		}
		
		oAttr.value = "'" + m_sTableName + "'";
		
		// �ˬd PrevButtonName
		oNodes = oXMLDoc.selectNodes("//xsl:variable[@name='" + m_sVarPrevButtonName + "']");
		
		if (oNodes.length != 1)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "variable '" + m_sVarPrevButtonName + "' is not set correct!!");
		}
		
		oAttr = oNodes.item(0).getAttributeNode("select");
		
		if (oAttr == null)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "attribute 'select' of " + m_sVarPrevButtonName + " is not set!!");
		}
		
		oAttr.value = "'" + m_sPrevButtonName + "'";
		
		// �ˬd NextButtonName
		oNodes = oXMLDoc.selectNodes("//xsl:variable[@name='" + m_sVarNextButtonName + "']");
		
		if (oNodes.length != 1)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "variable '" + m_sVarNextButtonName + "' is not set correct!!");
		}
		
		oAttr = oNodes.item(0).getAttributeNode("select");
		
		if (oAttr == null)
		{
			throw new VSError("[VSTables:F_SetXSLT]", -1, "attribute 'select' of " + m_sVarNextButtonName + " is not set!!");
		}
		
		oAttr.value = "'" + m_sNextButtonName + "'";
		
		// set the refine xml.
		m_oXSLT = new VSXSLT();
		//m_oXSLT.SetXSLT(psXML, psXSLT, poOutput);
		m_oXSLT.SetXSLT(psXML, oXMLDoc.xml, poOutput);
	}
	
	//
	function F_PrevPage()
	{
		if (m_oXSLT == null)
		{
			alert("Please set XSLT first");
			return false;
		}

		if (this.MultiPage == true)
		{
			m_iViewPage--;

			var oTableLists = document.getElementsByName(m_sTableName);
			
			if (oTableLists.length > m_iViewPage)
			{
				oTableLists[m_iViewPage].className = m_sStyleDisplay ;
				oTableLists[m_iViewPage + 1].className = m_sStyleNoDisplay;
			}
			
			ControlNavigateButton();
		}
	}
	
	//
	function F_NextPage()
	{
		if (m_oXSLT == null)
		{
			alert("Please set XSLT first");
			return false;
		}

		if (this.MultiPage == true)
		{
			m_iViewPage++;

			var oTableLists = document.getElementsByName(m_sTableName);
			
			if (oTableLists.length > m_iViewPage)
			{
				oTableLists[m_iViewPage].className = m_sStyleDisplay ;
				oTableLists[m_iViewPage - 1].className = m_sStyleNoDisplay;
			}
			
			ControlNavigateButton();
		}
	}
	
	//
	function F_TransferXML()
	{
		if (m_oXSLT == null)
		{
			alert("Please set XSLT first");
			return false;
		}

		//Add 2003/11/26 By Michael
		this.SelectedRow = null;

		try {		
			m_oXSLT.TransferXML();
		} catch (e) {
			e.name = "[VSTables:F_TransferXML]" + e.name;
			
			throw e;
		}
		
		if (this.MultiPage == true)
		{
			var oTableLists = document.getElementsByName(m_sTableName);
			
			m_iViewPage = -1;
			
			if (oTableLists.length > 0)
			{
				m_iViewPage++;
				oTableLists[m_iViewPage].className = m_sStyleDisplay ;
			}
			
			ControlNavigateButton();
		}
	}
	
	//
	function ControlNavigateButton()
	{
		var bPrevEnable = false;
		var bNextEnable = false;
		var sPrevCursor = "hand";
		var sNextCursor = "hand";
		var sPrevVisiable = "inline";
		var sNextVisiable = "inline";
		var iTableListsLength = document.getElementsByName(m_sTableName).length;

		if (m_iViewPage < 0)
		{
			sPrevVisiable = "none";
			sNextVisiable = "none";
		}
		else if (m_iViewPage == 0)
		{
			if (iTableListsLength <= 1)
			{
				sPrevVisiable = "none";
				sNextVisiable = "none";
			}
			else
			{
				bNextEnable = true;
				sPrevCursor = "default";
			}
		}
		else if (m_iViewPage > 0)
		{
			if (iTableListsLength <= 1)
			{
				sPrevVisiable = "none";
				sNextVisiable = "none";
			}
			else if (m_iViewPage == (iTableListsLength - 1))
			{
				sNextCursor = "default";
				bPrevEnable = true;
			}
			else
			{
				bPrevEnable = true;
				bNextEnable = true;
			}
		}

		// set previous button style and enable.
		var oPrevButtons = document.getElementsByName(m_sPrevButtonName);

		if (oPrevButtons.length == 0)
		{
			throw new VSError("[XSLTTable:ControlNavigateButton]", -1, "Need Previous button!!");
		}
		
		var oPrevButton = oPrevButtons[0];
		
		oPrevButton.disabled = !bPrevEnable;
		oPrevButton.style.display = sPrevVisiable;
		oPrevButton.style.cursor = sPrevCursor;

		if (oPrevButton.disabled == true)
		{
			oPrevButton.className = m_sDisabledButton;
		}
		else
		{
			oPrevButton.className = m_sEnabledButton;
		}

		// set next button style and enable.
		var oNextButtons = document.getElementsByName(m_sNextButtonName);

		if (oNextButtons.length == 0)
		{
			throw new VSError("[XSLTTable:ControlNavigateButton]", -1, "Need next button!!");
		}
		
		var oNextButton = oNextButtons[0];

		oNextButton.disabled = !bNextEnable;
		oNextButton.style.display = sNextVisiable;
		oNextButton.style.cursor = sNextCursor;
		
		if (oNextButton.disabled == true)
		{
			oNextButton.className = m_sDisabledButton;
		}
		else
		{
			oNextButton.className = m_sEnabledButton;
		}
	}

	//
	function F_GetSelectedXMLData()
	{
		var sSelectedData = "<ROOT><VSRECORD>";
		
		for (var i=0; i<this.SelectedRow.cells.length; i++)
		{
			sSelectedData += "<DATAFIELD NAME=\"" + this.SelectedRow.cells(i).id + "\">" + this.SelectedRow.cells(i).innerText + "</DATAFIELD>";
		}
		
		sSelectedData += "</VSRECORD></ROOT>";
		
		return sSelectedData;
	}
}