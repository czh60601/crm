<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=gb2312">
	<title></title>
	<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/dtree.js"></script>
</head>

<body style="font-size: 10pt; font-family: 宋体">
<div class="dtree"><a href="javascript: d.openAll();"><span>展开</span></a><span style="font-size: 10pt; font-family: 宋体"> | </span><a href="javascript: d.closeAll();">关闭</a>
<br>
	<script type="text/javascript">
		d = new dTree('d');

		d.add(0,-1,'销售管理系统');		
		
		d.add(1,0,'客户管理','','','frmMainBody');
		d.add(2,1,'客户添加','','','frmMainBody');
        d.add(3,2,'客户信息录入','Customer/addCustomerInfo','','frmMainBody');
		d.add(4,1,'客户列表','','','frmMainBody');
		d.add(5,4,'所有客户','','','frmMainBody');
        d.add(6,5,'所有客户列表','Customer/selectCustomer','','frmMainBody');
		d.add(7,4,'按区域管理','','','frmMainBody');
        d.add(8,7,'华北','','','frmMainBody');        
        d.add(9,8,'北京','','','frmMainBody');
        d.add(10,9,'东城区','Customer/areaCustomer','','frmMainBody');
        d.add(11,9,'西城区','Customer/areaCustomer','','frmMainBody');
        d.add(12,9,'朝阳区','Customer/areaCustomer','','frmMainBody');
        d.add(13,9,'海淀区','Customer/areaCustomer','','frmMainBody');        
        d.add(14,8,'天津','','','frmMainBody');
        d.add(15,14,'红桥区','Customer/areaCustomer','','frmMainBody');
        d.add(16,14,'南开区','Customer/areaCustomer','','frmMainBody');        
        d.add(17,8,'河北','','','frmMainBody');
        d.add(18,17,'石家庄','Customer/areaCustomer','','frmMainBody');
        d.add(19,17,'唐山','Customer/areaCustomer','','frmMainBody');
        d.add(20,17,'张家口','Customer/areaCustomer','','frmMainBody');
        d.add(21,17,'秦皇岛','Customer/areaCustomer','','frmMainBody');        
        d.add(22,8,'山西','','','frmMainBody');
        d.add(23,22,'太原','Customer/areaCustomer','','frmMainBody');
        d.add(24,22,'大同','Customer/areaCustomer','','frmMainBody');        
        d.add(25,8,'内蒙','','','frmMainBody');
        d.add(26,25,'呼和浩特','Customer/areaCustomer','','frmMainBody');
        d.add(27,25,'包头','Customer/areaCustomer','','frmMainBody');        
        d.add(28,7,'东北','','','frmMainBody');        
        d.add(29,28,'辽宁','','','frmMainBody');
        d.add(30,29,'沈阳','Customer/areaCustomer','','frmMainBody');
        d.add(31,29,'大连','Customer/areaCustomer','','frmMainBody');        
        d.add(32,28,'吉林','','','frmMainBody');
        d.add(33,32,'长春','Customer/areaCustomer','','frmMainBody');
        d.add(34,32,'四平','Customer/areaCustomer','','frmMainBody');
        d.add(35,28,'黑龙江','','','frmMainBody');
        d.add(36,35,'哈尔滨','Customer/areaCustomer','','frmMainBody');
        d.add(37,35,'佳木斯','Customer/areaCustomer','','frmMainBody');
        d.add(38,7,'华东','','','frmMainBody');        
        d.add(39,38,'上海','','','frmMainBody');
        d.add(40,39,'浦东','Customer/areaCustomer','','frmMainBody');
        d.add(41,39,'浦西','Customer/areaCustomer','','frmMainBody');
        d.add(42,38,'浙江','','','frmMainBody');
        d.add(43,42,'杭州','Customer/areaCustomer','','frmMainBody');
        d.add(44,42,'温州','Customer/areaCustomer','','frmMainBody');        
        d.add(45,38,'江苏','','','frmMainBody');
        d.add(46,45,'南京','Customer/areaCustomer','','frmMainBody');
        d.add(47,45,'苏州','Customer/areaCustomer','','frmMainBody');
        d.add(48,38,'福建','','','frmMainBody');
        d.add(49,48,'福州','Customer/areaCustomer','','frmMainBody');
        d.add(50,48,'厦门','Customer/areaCustomer','','frmMainBody');
        d.add(51,38,'山东','','','frmMainBody');
        d.add(52,51,'济南','Customer/areaCustomer','','frmMainBody');
        d.add(53,51,'青岛','Customer/areaCustomer','','frmMainBody');        
        d.add(54,38,'安徽','','','frmMainBody');
        d.add(55,54,'合肥','Customer/areaCustomer','','frmMainBody');
        d.add(56,54,'安庆','Customer/areaCustomer','','frmMainBody');        
        d.add(57,38,'江西','','','frmMainBody');
        d.add(58,57,'南昌','Customer/areaCustomer','','frmMainBody');
        d.add(59,57,'九江','Customer/areaCustomer','','frmMainBody');         
        d.add(60,7,'华南','','','frmMainBody');        
        d.add(61,60,'广东','','','frmMainBody');
        d.add(62,61,'广州','Customer/areaCustomer','','frmMainBody');
        d.add(63,61,'深圳','Customer/areaCustomer','','frmMainBody');
        d.add(64,60,'广西','','','frmMainBody');
        d.add(65,64,'南宁','Customer/areaCustomer','','frmMainBody');
        d.add(66,64,'桂林','Customer/areaCustomer','','frmMainBody');        
        d.add(67,60,'海南','','','frmMainBody');
        d.add(68,67,'海口','Customer/areaCustomer','','frmMainBody');
        d.add(69,67,'三亚','Customer/areaCustomer','','frmMainBody'); 
        d.add(70,7,'西南','','','frmMainBody');        
        d.add(71,70,'云南','','','frmMainBody');
        d.add(72,71,'昆明','Customer/areaCustomer','','frmMainBody');
        d.add(73,71,'大理','Customer/areaCustomer','','frmMainBody');
        d.add(74,70,'四川','','','frmMainBody');
        d.add(75,74,'成都','Customer/areaCustomer','','frmMainBody');
        d.add(76,74,'绵阳','Customer/areaCustomer','','frmMainBody');        
        d.add(77,70,'重庆','','','frmMainBody');
        d.add(78,77,'渝中','Customer/areaCustomer','','frmMainBody');
        d.add(79,77,'江北','Customer/areaCustomer','','frmMainBody');        
        d.add(80,7,'西北','','','frmMainBody');        
        d.add(81,80,'甘肃','','','frmMainBody');
        d.add(82,81,'兰州','Customer/areaCustomer','','frmMainBody');
        d.add(83,80,'宁夏','','','frmMainBody');
        d.add(84,83,'银川','Customer/areaCustomer','','frmMainBody');
        d.add(85,80,'新疆','','','frmMainBody');
        d.add(86,85,'乌鲁木齐','Customer/areaCustomer','','frmMainBody');
        d.add(87,80,'陕西','','','frmMainBody');
        d.add(88,87,'西安','Customer/areaCustomer','','frmMainBody');
        d.add(89,7,'中南','','','frmMainBody');        
        d.add(90,89,'湖南','','','frmMainBody');
        d.add(91,90,'长沙','Customer/areaCustomer','','frmMainBody');
        d.add(92,89,'湖北','','','frmMainBody');
        d.add(93,92,'武汉','Customer/areaCustomer','','frmMainBody');
        d.add(94,89,'河南','','','frmMainBody');
        d.add(95,94,'郑州','Customer/areaCustomer','','frmMainBody');
        d.add(95,7,'国外','','','frmMainBody');        
        d.add(96,95,'英国','Customer/areaCustomer','','frmMainBody');
        d.add(97,95,'美国','Customer/areaCustomer','','frmMainBody');        
		d.add(98,4,'按行业管理','','','frmMainBody');
        d.add(99,98,'石化','Customer/wayCustomer','','frmMainBody');
        d.add(100,98,'化学','Customer/wayCustomer','','frmMainBody');
        d.add(101,98,'发电','Customer/wayCustomer','','frmMainBody');
        d.add(102,98,'电网','Customer/wayCustomer','','frmMainBody');
        d.add(103,98,'钢铁','Customer/wayCustomer','','frmMainBody');
        d.add(104,98,'有色金属','Customer/wayCustomer','','frmMainBody');
        d.add(105,98,'学校','Customer/wayCustomer','','frmMainBody');
        d.add(106,98,'医院','Customer/wayCustomer','','frmMainBody');
        d.add(107,98,'政府工程','Customer/wayCustomer','','frmMainBody');
        d.add(108,98,'房地产','Customer/wayCustomer','','frmMainBody');
        d.add(109,98,'铝业','Customer/wayCustomer','','frmMainBody');
        d.add(110,98,'煤炭','Customer/wayCustomer','','frmMainBody');
        d.add(111,98,'市政','Customer/wayCustomer','','frmMainBody');
        d.add(112,98,'铁路','Customer/wayCustomer','','frmMainBody');
        d.add(113,98,'电信','Customer/wayCustomer','','frmMainBody');
        d.add(114,98,'电子','Customer/wayCustomer','','frmMainBody');
        d.add(115,98,'建筑','Customer/wayCustomer','','frmMainBody');
        d.add(116,98,'公路','Customer/wayCustomer','','frmMainBody');
        d.add(117,98,'环保','Customer/wayCustomer','','frmMainBody');
        d.add(118,98,'建材','Customer/wayCustomer','','frmMainBody');
        d.add(119,98,'外资','Customer/wayCustomer','','frmMainBody');
        d.add(120,98,'汽车','Customer/wayCustomer','','frmMainBody');
        d.add(121,98,'轻工','Customer/wayCustomer','','frmMainBody');
        d.add(122,98,'机场','Customer/wayCustomer','','frmMainBody');        
		d.add(123,1,'客户检索','Customer/seach','','frmMainBody');
        d.add(124,1,'客户统计分析','','','frmMainBody'); 
		d.add(125,124,'客户地区统计','Customer/AnalysisCustomerByArea','','frmMainBody');
		d.add(126,124,'客户行业统计','Customer/AnalysisCustomerByWay','','frmMainBody');		
        d.add(127,1,'客户自定义设置','','','frmMainBody'); 
		d.add(128,127,'设置客户区域','Customer/setarea','','frmMainBody');
		d.add(129,127,'设置客户行业','Customer/setway','','frmMainBody');
         
		d.add(130,0,'项目管理','','','frmMainBody');
		d.add(131,130,'项目添加','','','frmMainBody');
		d.add(132,131,'项目信息录入','Project/addProject','','frmMainBody');
		d.add(133,130,'项目漏斗','','','frmMainBody');
		d.add(134,133,'漏斗分析','Project/fillerProject','','frmMainBody');
		d.add(135,130,'项目列表检索','','','frmMainBody');
		d.add(136,135,'所有项目列表检索','Project/ProjectList','','frmMainBody');		
		d.add(137,130,'项目统计分析','','','frmMainBody');
		d.add(138,137,'项目参标统计','Project/AttTenderAnalysis','','frmMainBody');
		d.add(139,137,'项目未中标统计','Project/AttTenderNoAnalysis','','frmMainBody');
		d.add(140,137,'项目中标统计','Project/AttTenderYesAnalysis','','frmMainBody');
		d.add(141,130,'项目自定义设置','','','frmMainBody');
		d.add(142,141,'设置项目状态','Project/setProject','','frmMainBody');
		
		d.add(143,0,'合同管理','','','frmMainBody');
		d.add(144,143,'合同添加','','','frmMainBody');
		d.add(145,144,'合同信息录入','Contract/AddContract','','frmMainBody');//5
		d.add(146,143,'订单执行','','','frmMainBody');
		d.add(147,146,'订单执行情况','Contract/OrderExecute','','frmMainBody');//4
		d.add(148,143,'合同列表检索','','','frmMainBody');
		d.add(149,148,'所有合同列表检索','Contract/ContractAllList','','frmMainBody');//3
		d.add(150,143,'订单统计','','','frmMainBody');
		d.add(151,150,'月份统计','Contract/OrderList','','frmMainBody');//2
		d.add(152,150,'干变月份统计','Contract/GanBian','','frmMainBody');//2
		d.add(153,150,'箱变月份统计','Contract/XiangBian','','frmMainBody');//2
		d.add(154,150,'全年统计分析','Contract/OrderPic','','frmMainBody');//2
		
		d.add(155,0,'产品管理','','','frmMainBody');
		d.add(156,155,'产品目录','','','frmMainBody');
		d.add(157,156,'产品目录设置','Product/setProduct','','frmMainBody');		
		d.add(158,155,'产品添加','','','frmMainBody');
		d.add(159,158,'产品信息录入','Product/addProduct','','frmMainBody');
		d.add(160,155,'产品检索','','','frmMainBody');
		d.add(161,160,'所有产品列表检索','Product/ProductAllList','','frmMainBody');
		
		d.add(162,0,'成品库存管理','','','frmMainBody');
		d.add(163,162,'承运公司管理','','','frmMainBody');
		d.add(164,163,'承运公司列表','TransportCompany/tcList','','frmMainBody');		
		d.add(165,162,'入库管理','','','frmMainBody');
		d.add(166,165,'入库信息录入','Depot/InDepot','','frmMainBody');		
		d.add(167,165,'所有入库列表检索','Depot/InDepotList','','frmMainBody');
		d.add(168,162,'出库管理','','','frmMainBody');
		d.add(169,168,'出库信息录入','Depot/AddOutDepot','','frmMainBody');		
		d.add(170,168,'所有出库列表检索','Depot/OutDepotList','','frmMainBody');
		
		d.add(171,0, '财务管理','','','frmMainBody');
	    d.add(172,171,'项目价格录入','Finance/ProjectPriceEnter','','frmMainBody');
	    d.add(173,171,'回款管理','','','frmMainBody');
	    d.add(174,173,'订单回款录入','Finance/prMoney','','frmMainBody');
	    d.add(175,173,'全年回款分析图','Finance/prMoneyPic','','frmMainBody');
	    d.add(176,171,'开票管理','Finance/TicketAdmin','','frmMainBody');
	    d.add(177,171,'订单明细','Finance/OrderDetail','','frmMainBody');
     
	     	     
	    d.add(178,0, '统计报表','','','frmMainBody');
	    d.add(179,178,'销售员回款统计','Report/ReMoneySa','','frmMainBody','');
	    d.add(180,178,'应收账款分析','Report/ReAccount ','','frmMainBody','');
	    d.add(181,178,'逾期账款分析','Report/ReOverdue','','frmMainBody','');
	    d.add(182,178,'销售员订单分析','Report/ReOrderSa','','frmMainBody','');
	    d.add(183,178,'开票明细','Report/ReInvoice','','frmMainBody','');	   

	    d.add(184,0,'系统管理','','','frmMainBody');
	    d.add(185,184,'销售人员管理','BaseInfo/SalesList','','frmMainBody');   

	    d.add(186,184,'部门管理','SysAdmin/DepList','','frmMainBody','');	 
	    d.add(187,184,'操作权限设定','SysAdmin/PowerAdmin','','frmMainBody','');	   
	    d.add(188,184,'帐号管理','SysAdmin/AccountAdmin','','frmMainBody','');	   
	    d.add(189,184,'修改密码','SysAdmin/ChangePassword','','frmMainBody','');	
		
		document.write(d);
        d.closeAll();
	</script>

</div>


</body>

</html>