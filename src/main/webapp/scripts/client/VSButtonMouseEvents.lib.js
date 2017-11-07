///<file name="VSButtonMouseEvents.lib.js" designed="James YU" program="James YU" createdate="2003/10/31">
///	<description>按鈕控制項, 滑鼠事件(event)集中處理公用Library.<![CDATA[<br/>]]>注意: 引用本 Library 將會建立一個全域變數物件: <![CDATA[<span class="keyword">MBEventHandler</span>]]>.</description>
///	<modifies>
///	</modifies>
///</file>

///<class name="VSButtonMouseEventHandler"><description>按鈕控制項, 滑鼠事件(event)集中處理物件。</description></class>
function VSButtonMouseEventHandler()
{
	// private vairables.
	var _overClassName = "MouseOverButton";
	var _outClassName = "EnabledButton";

	// Properties
	///<property name="OverClassName" type="String">當滑鼠移至按鈕上時, 按鈕所套用的樣式名稱. 若未指定本屬性時, 預設值為<![CDATA[<b>MouseOverButton</b>]]>.</property>
	this.OverClassName = _overClassName;
	///<property name="OutClassName" type="String">當滑鼠移開按鈕時, 按鈕所套用的樣式名稱. 若未指定本屬性時, 預設值為<![CDATA[<b>EnabledButton</b>]]>.</property>
	this.OutClassName = _outClassName;	

	// Methods	
	///<method name="MouseOver">
	///	<description>滑鼠移到按鈕上時, 觸發事件處理函數.</description>
	///	<returns>none</returns>
	///	<params>
	///		<!-- 參數清單 -->
	///		<param name="poButton" type="Object">Object must be button object, 否則會出現 "Can not set MouseEventHandler to none button object" 錯誤訊息.</param>
	///	</params>
	///</method>
	this.MouseOver = F_MouseOver;
	///<method name="MouseOut">
	///	<description>mouseout event handler.</description>
	///	<returns>none</returns>
	///	<params>
	///		<!-- 參數清單 -->
	///		<param name="poButton" type="Object">Object must be button object, 否則會出現 "Can not set MouseEventHandler to none button object" 錯誤訊息.</param>
	///	</params>
	///</method>
	this.MouseOut = F_MouseOut;
	
	// public function implement
	function F_MouseOver(poButton)
	{
		if (checkObjectType(poButton) == false)
		{
			return false;
		}

		poButton.className = _overClassName;
	}
	
	// public function implement
	function F_MouseOut(poButton)
	{
		if (checkObjectType(poButton) == false)
		{
			return false;
		}
		
		poButton.className = _outClassName;
	}
	
	// private function
	function checkObjectType(poButton)
	{
		if ((poButton.type == "button" && poButton.tagName == "INPUT") || (poButton.tagName == "BUTTON"))
		{
			return true;
		}
		else
		{
			alert("Can not set MouseEventHandler to none button object(" + poButton.name + ").");
			return false;
		}
	}
}

// global variables.
var MBEventHandler = new VSButtonMouseEventHandler();