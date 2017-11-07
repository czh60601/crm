///<file name="VSButtonMouseEvents.lib.js" designed="James YU" program="James YU" createdate="2003/10/31">
///	<description>���s���, �ƹ��ƥ�(event)�����B�z����Library.<![CDATA[<br/>]]>�`�N: �ޥΥ� Library �N�|�إߤ@�ӥ����ܼƪ���: <![CDATA[<span class="keyword">MBEventHandler</span>]]>.</description>
///	<modifies>
///	</modifies>
///</file>

///<class name="VSButtonMouseEventHandler"><description>���s���, �ƹ��ƥ�(event)�����B�z����C</description></class>
function VSButtonMouseEventHandler()
{
	// private vairables.
	var _overClassName = "MouseOverButton";
	var _outClassName = "EnabledButton";

	// Properties
	///<property name="OverClassName" type="String">��ƹ����ܫ��s�W��, ���s�ҮM�Ϊ��˦��W��. �Y�����w���ݩʮ�, �w�]�Ȭ�<![CDATA[<b>MouseOverButton</b>]]>.</property>
	this.OverClassName = _overClassName;
	///<property name="OutClassName" type="String">��ƹ����}���s��, ���s�ҮM�Ϊ��˦��W��. �Y�����w���ݩʮ�, �w�]�Ȭ�<![CDATA[<b>EnabledButton</b>]]>.</property>
	this.OutClassName = _outClassName;	

	// Methods	
	///<method name="MouseOver">
	///	<description>�ƹ�������s�W��, Ĳ�o�ƥ�B�z���.</description>
	///	<returns>none</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///		<param name="poButton" type="Object">Object must be button object, �_�h�|�X�{ "Can not set MouseEventHandler to none button object" ���~�T��.</param>
	///	</params>
	///</method>
	this.MouseOver = F_MouseOver;
	///<method name="MouseOut">
	///	<description>mouseout event handler.</description>
	///	<returns>none</returns>
	///	<params>
	///		<!-- �ѼƲM�� -->
	///		<param name="poButton" type="Object">Object must be button object, �_�h�|�X�{ "Can not set MouseEventHandler to none button object" ���~�T��.</param>
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