
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title><link rel="stylesheet" type="text/css" href="../style/default/flexigrid.pack.css" />
    <style type="text/css">
        .black_overlay
        {
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: #33001A;
            z-index: 1001;
            -moz-opacity: 0.2;
            opacity: .20;
            filter: alpha(opacity=20);
            
        }
        .white_content
        {
            display: none;
            position: absolute;
            top: 35%;
            left: 35%;
       
            background-color: white;
            z-index: 1002;
            overflow: hidden;
        }
        .dialog_title
        {
            width: 100%;
            height: 20px;
            background-color: #EECEE5;
            position: relative;
        }
        .dialog_content
        {
            height: 280px;
            overflow: scroll;
        }
        #pageDiv
        {
            font-size: 12px;
        }
        .span
        {
            display: block;
            white-space: nowrap;
            width: 100%;
        }
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript" src="../js/flexigrid.js"></script>

<script type="text/javascript" src="../js/GridPage.js"></script>
<body>
    <form name="form1" method="post" action="CommonReport.aspx?type=saleDingDanLieBiaoTongJi" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTI5MDgwMjczMA9kFgICAw9kFgICAQ9kFgJmD2QWAmYPDxYCHgdWaXNpYmxlZ2RkZB9f9un9FwTyNBQNUdimXa3hCcNb" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


    <div class="title">
        <table border="0" style="width: 100%;">
            <tr>
                <td class="titlebg">
                    <span class="titleSpan">
                        订单列表统计</span>
                </td>
                <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('tmpa1', document.getElementById('form1'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['ttmpa2','tUpdatePanel1'], [], [], 90);
//]]>
</script>

                <td align="right" >
               
                
                     <div id="tmpa2">
	
                    
            <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">生成Excel</a>
            
            
</div>
                 </td>
                        <td  style="width:80px;">
                    <a href="#" id="lnkSearchA" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'"
                        onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" >
                        查询</a>
                        
                </td>
            </tr>
        </table>
    </div>
    <div>   
        <div   id="light" class="white_content"  style="padding:2px;width:450px;height:350px;"  title="saleDingDanLieBiaoTongJi查询"><div class="dialog_title"><div>订单列表统计</div></div><div class="dialog_content"> <table border="0"   cellpadding="3" cellspacing="0" style="margin:10px;width:96%"><tr> <td align="right">机构选择:</td><td><input  type="text"   style="width:90%;"  name="txtgroup"    Id="txtgroup"    MaxLength="200"  onclick="groupselect()"/> </td> <td><input  type="hidden"   style="width:90%;"  name="txtgroupId"    Id="txtgroupId"    MaxLength="200"  /> </td></tr><tr> <td align="right">订单日期:</td><td> <span class="span"> <input  type="text"    name="OrderDate1"  class="easyui-datebox"   Id="OrderDate1"    MaxLength="30"  /> 至: <input  type="text"    name="OrderDate2"    class="easyui-datebox" Id="OrderDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">配车日期:</td><td> <span class="span"> <input  type="text"    name="PeiCheDate1"  class="easyui-datebox"   Id="PeiCheDate1"    MaxLength="30"  /> 至: <input  type="text"    name="PeiCheDate2"    class="easyui-datebox" Id="PeiCheDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">交车日期:</td><td> <span class="span"> <input  type="text"    name="TiCheDate1"  class="easyui-datebox"   Id="TiCheDate1"    MaxLength="30"  /> 至: <input  type="text"    name="TiCheDate2"    class="easyui-datebox" Id="TiCheDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">开票日期:</td><td> <span class="span"> <input  type="text"    name="KaiPiaoDate1"  class="easyui-datebox"   Id="KaiPiaoDate1"    MaxLength="30"  /> 至: <input  type="text"    name="KaiPiaoDate2"    class="easyui-datebox" Id="KaiPiaoDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">核迄日期:</td><td> <span class="span"> <input  type="text"    name="HeQiDate1"  class="easyui-datebox"   Id="HeQiDate1"    MaxLength="30"  /> 至: <input  type="text"    name="HeQiDate2"    class="easyui-datebox" Id="HeQiDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">配车状态:</td><td><span class="span"> <input type="radio" name="PeCheStatus" value="全部">全部 <input type="radio" name="PeCheStatus" value="已配车">已配车 <input type="radio" name="PeCheStatus" value="未配车">未配车</span></td></tr><tr> <td align="right">开票状态:</td><td><span class="span"> <input type="radio" name="KaiPiaoStatus" value="全部">全部 <input type="radio" name="KaiPiaoStatus" value="已开票">已开票 <input type="radio" name="KaiPiaoStatus" value="未开票">未开票</span></td></tr><tr> <td align="right">出库状态:</td><td><span class="span"> <input type="radio" name="ChuKuStatus" value="全部">全部 <input type="radio" name="ChuKuStatus" value="已出库">已出库 <input type="radio" name="ChuKuStatus" value="未出库">未出库</span></td></tr><tr> <td align="right">车牌号:</td><td><input  type="text"   style="width:90%;"  name="ChePaiHao"    Id="ChePaiHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">车型:</td><td><input  type="text"   style="width:90%;"  name="CheXing"    Id="CheXing"    MaxLength="30"  /> </td></tr><tr> <td align="right">车系:</td><td><input  type="text"   style="width:90%;"  name="CheXi"    Id="CheXi"    MaxLength="30"  /> </td></tr><tr> <td align="right">车架号:</td><td><input  type="text"   style="width:90%;"  name="CheJiaHao"    Id="CheJiaHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">销售顾问:</td><td><input  type="text"   style="width:90%;"  name="Salor"    Id="Salor"    MaxLength="30"  /> </td></tr><tr> <td align="right">客户名称:</td><td><input  type="text"   style="width:90%;"  name="OrderCustName"    Id="OrderCustName"    MaxLength="30"  /> </td></tr><tr> <td align="right">订单编号:</td><td><input  type="text"   style="width:90%;"  name="BillNo"    Id="BillNo"    MaxLength="30"  /> </td></tr></table></div><div style="text-align:center;margin:10px"><input type="button"   onclick="searchCheck()" value="查询"/> <input type="button"    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" value="关闭"/>    </div> </div>
        <div id="fade" class="black_overlay">
        </div>
    </div>
    
    <div id="UpdatePanel1">
	
            <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display: none;" />
            <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display: none;" />
            <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>
            <input type="hidden" name="hiddJSON" id="hiddJSON" />
            <a id="lnkSearch" href="javascript:__doPostBack('lnkSearch','')"></a>
            
            <table id="flexdg">
            </table>
        
</div>
    <input name="txtSearchSet" type="hidden" id="txtSearchSet" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="24375021" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCAKIlqOXAQK87en2BAKfluDwDwKa7byuAgKm4eRsAt3T+roGAqmLicEFAo7R3s0GsfKFsPOcm3mDNUExq2eyvCLuw4M=" />
</div>

<script type="text/javascript">
//<![CDATA[
 var colModel=null;colModel= {colModel:[{display:'No.',name:'No.',width:0},{display:'订单日期',name:'Order_date',width:0},{display:'订单编号',name:'billNo',width:0},{display:'销售顾问',name:'Order_Salor',width:0},{display:'开票人',name:'JDC_FaPiao_KaiPiaoRen',width:0},{display:'发票号码',name:'JDC_FaPiao_HaoMa',width:0},{display:'客户名称',name:'Order_Cust_Name',width:0},{display:'客户性别',name:'Order_Cust_Sex',width:0},{display:'经办人电话',name:'Order_JBRen_Tel',width:0},{display:'客户证件',name:'Order_Cust_ZhengJianHao',width:0},{display:'客户手机',name:'Order_Cust_Mobile',width:0},{display:'车牌号',name:'CarRuKu_ChePaiHao',width:0},{display:'车架号',name:'CarRuKu_CheJiaHao',width:0},{display:'车系',name:'Order_Car_CheXi',width:0},{display:'车型代码',name:'CarRuKu_CheXingDaiMa',width:0},{display:'车身颜色',name:'Order_Car_Color',width:0},{display:'配车日期',name:'Order_PeiCheDate',width:0},{display:'发票日期',name:'Order_FaPiaoDate',width:0},{display:'预交车日期',name:'Order_YuJiaoChe_Date',width:0},{display:'订单备注',name:'Order_Remark',width:0},{display:'经办人地址',name:'Order_JBRen_Address',width:0},{display:'交车日期',name:'Order_TiCheDate',width:0},{display:'机构名称',name:'groupSimpleName',width:0}],dataType:'json',usepager: true,height:500,pagestat : '显示第 {from} 条到 {to} 条,共 {total} 条数据',rpOptions:[15, 25, 50, 100],rp:15};var jsonData={"total":2260,"page":1,"rows":[{"No.":"1","Order_date":"2013/07/20","billNo":"CDD20130720001","Order_Salor":"王磊","JDC_FaPiao_KaiPiaoRen":"秦曾","JDC_FaPiao_HaoMa":"00088437","Order_Cust_Name":"黄智伟","Order_Cust_Sex":"男","Order_JBRen_Tel":"13802263300","Order_Cust_ZhengJianHao":"441622198312200037","Order_Cust_Mobile":"13802263300","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"JTJBK11AXD2032056","Order_Car_CheXi":"RX350","CarRuKu_CheXingDaiMa":"RX350B7","Order_Car_Color":"星光黑色","Order_PeiCheDate":"2013/07/24","Order_FaPiaoDate":"2013/07/25","Order_YuJiaoChe_Date":"2013/08/31","Order_TiCheDate":"2013/07/27","Order_Remark":"中行按揭，出人保保险，第三者100万。","Order_JBRen_Address":"深圳市宝安区西乡镇香缇湾花园一栋B座1001","groupSimpleName":"深业雷克"},{"No.":"2","Order_date":"2013/07/21","billNo":"CDD20130721001","Order_Salor":"36645D13-374F-4569-9607-7EAE71E22BA6","JDC_FaPiao_KaiPiaoRen":"","JDC_FaPiao_HaoMa":"","Order_Cust_Name":"tst","Order_Cust_Sex":"男","Order_JBRen_Tel":"00","Order_Cust_ZhengJianHao":"0000000","Order_Cust_Mobile":"","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"","Order_Car_CheXi":"RX350","CarRuKu_CheXingDaiMa":"","Order_Car_Color":"天青云母色","Order_PeiCheDate":"","Order_FaPiaoDate":"","Order_YuJiaoChe_Date":"","Order_TiCheDate":"","Order_Remark":"","Order_JBRen_Address":"","groupSimpleName":"深业雷克"},{"No.":"3","Order_date":"2013/07/21","billNo":"CDD20130721002","Order_Salor":"赵雅琴","JDC_FaPiao_KaiPiaoRen":"","JDC_FaPiao_HaoMa":"","Order_Cust_Name":"张三","Order_Cust_Sex":"男","Order_JBRen_Tel":"","Order_Cust_ZhengJianHao":"150103198808191235","Order_Cust_Mobile":"","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"","Order_Car_CheXi":"ES300h","CarRuKu_CheXingDaiMa":"","Order_Car_Color":"珍珠白色","Order_PeiCheDate":"","Order_FaPiaoDate":"","Order_YuJiaoChe_Date":"","Order_TiCheDate":"","Order_Remark":"","Order_JBRen_Address":"","groupSimpleName":"深业雷克"},{"No.":"4","Order_date":"2013/07/21","billNo":"CDD20130721003","Order_Salor":"陈智聪","JDC_FaPiao_KaiPiaoRen":"","JDC_FaPiao_HaoMa":"","Order_Cust_Name":"黄奇源","Order_Cust_Sex":"男","Order_JBRen_Tel":"13802261294","Order_Cust_ZhengJianHao":"440301195708270119","Order_Cust_Mobile":"","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"","Order_Car_CheXi":"ES250","CarRuKu_CheXingDaiMa":"","Order_Car_Color":"星光黑色","Order_PeiCheDate":"","Order_FaPiaoDate":"","Order_YuJiaoChe_Date":"","Order_TiCheDate":"","Order_Remark":"","Order_JBRen_Address":"","groupSimpleName":"深业雷克"},{"No.":"5","Order_date":"2013/07/21","billNo":"CDD20130721004","Order_Salor":"丁拱祥","JDC_FaPiao_KaiPiaoRen":"杨丽琴","JDC_FaPiao_HaoMa":"00088439","Order_Cust_Name":"姜军","Order_Cust_Sex":"男","Order_JBRen_Tel":"","Order_Cust_ZhengJianHao":"230106196101281731","Order_Cust_Mobile":"13902436260","CarRuKu_ChePaiHao":"粤B5WB82","CarRuKu_CheJiaHao":"JTHBW1GG0D2031550","Order_Car_CheXi":"ES300h","CarRuKu_CheXingDaiMa":"ES300hH1","Order_Car_Color":"亮褐金属色","Order_PeiCheDate":"2013/07/28","Order_FaPiaoDate":"2013/08/01","Order_YuJiaoChe_Date":"2013/08/31","Order_TiCheDate":"2013/08/07","Order_Remark":"平安保险一次性","Order_JBRen_Address":"广东省深圳市福田区景楼花园D栋1302","groupSimpleName":"深业雷克"},{"No.":"6","Order_date":"2013/07/21","billNo":"CDD20130721005-2","Order_Salor":"陈智聪","JDC_FaPiao_KaiPiaoRen":"刘达龙","JDC_FaPiao_HaoMa":"00088445","Order_Cust_Name":"林美莲","Order_Cust_Sex":"女","Order_JBRen_Tel":"13714424998","Order_Cust_ZhengJianHao":"441522197312284728","Order_Cust_Mobile":"13714424998","CarRuKu_ChePaiHao":"0PS83","CarRuKu_CheJiaHao":"JTHBJ1GG8D2022786","Order_Car_CheXi":"ES250","CarRuKu_CheXingDaiMa":"ES250E1","Order_Car_Color":"亮褐金属色","Order_PeiCheDate":"2013/08/03","Order_FaPiaoDate":"2013/08/06","Order_YuJiaoChe_Date":"2013/08/25","Order_TiCheDate":"2013/08/14","Order_Remark":"","Order_JBRen_Address":"深圳市宝安区西乡河东路口百佳华大厦C栋510","groupSimpleName":"深业雷克"},{"No.":"7","Order_date":"2013/07/21","billNo":"CDD20130721006-2","Order_Salor":"王磊","JDC_FaPiao_KaiPiaoRen":"秦曾","JDC_FaPiao_HaoMa":"00171590","Order_Cust_Name":"邹庆春","Order_Cust_Sex":"男","Order_JBRen_Tel":"13602664063","Order_Cust_ZhengJianHao":"440102195302134016","Order_Cust_Mobile":"13602664063","CarRuKu_ChePaiHao":"7WA09","CarRuKu_CheJiaHao":"JTHBJ1GG9D2022957","Order_Car_CheXi":"ES250","CarRuKu_CheXingDaiMa":"ES250B1","Order_Car_Color":"亮褐金属色","Order_PeiCheDate":"2013/08/09","Order_FaPiaoDate":"2013/08/09","Order_YuJiaoChe_Date":"2013/08/28","Order_TiCheDate":"2013/08/18","Order_Remark":"","Order_JBRen_Address":"深圳市®å®åºæ°å®è¥¿è·¯å¯æå8A10A","groupSimpleName":"æ·±ä¸é·å"},{"No.":"8","Order_date":"2013/07/21","billNo":"CDD20130721007","Order_Salor":"ç½å¨","JDC_FaPiao_KaiPiaoRen":"ç§¦æ¾","JDC_FaPiao_HaoMa":"00088441","Order_Cust_Name":"æ¾æ±å ","Order_Cust_Sex":"ç·","Order_JBRen_Tel":"","Order_Cust_ZhengJianHao":"440321196504151214","Order_Cust_Mobile":"13602660393","CarRuKu_ChePaiHao":"ç²¤B-4WB11","CarRuKu_CheJiaHao":"JTHBW1GG7D2032467","Order_Car_CheXi":"ES300h","CarRuKu_CheXingDaiMa":"ES300hH1","Order_Car_Color":"çç ç½è²","Order_PeiCheDate":"2013/07/31","Order_FaPiaoDate":"2013/08/01","Order_YuJiaoChe_Date":"2013/08/31","Order_TiCheDate":"2013/08/09","Order_Remark":"äººä¿ä¿é©ä¸æ¬¡æ§","Order_JBRen_Address":"å¹¿ä¸çæ·±å³å¸å®å®åºæ²äºæ°æ¡¥æ´ä¸ä¸ä¸å··4å·","groupSimpleName":"æ·±ä¸é·å"},{"No.":"9","Order_date":"2013/07/21","billNo":"CDD20130721008-2","Order_Salor":"èç®","JDC_FaPiao_KaiPiaoRen":"æ¨ä¸½ç´","JDC_FaPiao_HaoMa":"00171630","Order_Cust_Name":"ä½å°è³","Order_Cust_Sex":"å¥³","Order_JBRen_Tel":"13622374408","Order_Cust_ZhengJianHao":"422302198504134121","Order_Cust_Mobile":"13622374408","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"JTHBJ1GG7D2024013","Order_Car_CheXi":"ES250","CarRuKu_CheXingDaiMa":"ES250B1","Order_Car_Color":"äº®è¤éå±è²","Order_PeiCheDate":"2013/08/29","Order_FaPiaoDate":"2013/08/29","Order_YuJiaoChe_Date":"2013/09/10","Order_TiCheDate":"2013/09/05","Order_Remark":"æ­¤ä»·æ ¼å«6000åé·åè¨æ¯éèæç»­è´¹ï¼505æ¹æ¡","Order_JBRen_Address":"æ·±å³å¸å®å®åºè¥¿ä¹¡æ±ä¸å1F2901","groupSimpleName":"æ·±ä¸é·å"},{"No.":"10","Order_date":"2013/07/22","billNo":"CDD20130722001","Order_Salor":"èç®","JDC_FaPiao_KaiPiaoRen":"æ¨ä¸½ç´","JDC_FaPiao_HaoMa":"00171591","Order_Cust_Name":"éæä¹","Order_Cust_Sex":"ç·","Order_JBRen_Tel":"13510243350","Order_Cust_ZhengJianHao":"440301199006301919","Order_Cust_Mobile":"13510243350","CarRuKu_ChePaiHao":"ç²¤B8WB08","CarRuKu_CheJiaHao":"JTJZA11A8D2029741","Order_Car_CheXi":"RX270","CarRuKu_CheXingDaiMa":"RX270B7","Order_Car_Color":"æ·±æ£äºæ¯éå±è²","Order_PeiCheDate":"2013/08/10","Order_FaPiaoDate":"2013/08/11","Order_YuJiaoChe_Date":"2013/08/20","Order_TiCheDate":"2013/08/14","Order_Remark":"","Order_JBRen_Address":"å®å®åºç¦æ°¸è¡éå¡å°¾ç¤¾åºå´ä¸è¥¿è·¯ä¹åºäºå··2å·","groupSimpleName":"æ·±ä¸é·å"},{"No.":"11","Order_date":"2013/07/23","billNo":"CDD20130723001-1","Order_Salor":"é»ç¿é®","JDC_FaPiao_KaiPiaoRen":"æ¨ä¸½ç´","JDC_FaPiao_HaoMa":"00088440","Order_Cust_Name":"æ¨æè¾","Order_Cust_Sex":"ç·","Order_JBRen_Tel":"13609617702","Order_Cust_ZhengJianHao":"440922196909207510","Order_Cust_Mobile":"13609617702","CarRuKu_ChePaiHao":"ç²¤B-K328Q","CarRuKu_CheJiaHao":"JTHBW1GG7D2031478","Order_Car_CheXi":"ES300h","CarRuKu_CheXingDaiMa":"ES300hH1","Order_Car_Color":"æ·±æ£äºæ¯éå±è²","Order_PeiCheDate":"2013/07/30","Order_FaPiaoDate":"2013/08/01","Order_YuJiaoChe_Date":"2013/08/10","Order_TiCheDate":"2013/08/09","Order_Remark":"ä¸æ¬¡æ§","Order_JBRen_Address":"æ·±å³å¸é¾ååºå¤§æµªææ°´å´æè²ä¸è·¯2å·","groupSimpleName":"æ·±ä¸é·å"},{"No.":"12","Order_date":"2013/07/24","billNo":"CDD20130724001-1","Order_Salor":"èè¹","JDC_FaPiao_KaiPiaoRen":"æ¨ä¸½ç´","JDC_FaPiao_HaoMa":"00171597","Order_Cust_Name":"å¾éå¯","Order_Cust_Sex":"ç·","Order_JBRen_Tel":"365538242","Order_Cust_ZhengJianHao":"220102198102052238","Order_Cust_Mobile":"18118781555","CarRuKu_ChePaiHao":"555PY","CarRuKu_CheJiaHao":"JTHBW1GG6D2032668","Order_Car_CheXi":"ES300h","CarRuKu_CheXingDaiMa":"ES300hH1","Order_Car_Color":"æåé»è²","Order_PeiCheDate":"2013/08/15","Order_FaPiaoDate":"2013/08/15","Order_YuJiaoChe_Date":"2013/08/31","Order_TiCheDate":"2013/08/28","Order_Remark":"å°æ»å³ç³»æ·","Order_JBRen_Address":"æ·±å³å¸çç°åºä¸­éè·¯8å·ä¸­æµ·åå±±æºªè°·5-3-1B","groupSimpleName":"æ·±ä¸é·å"},{"No.":"13","Order_date":"2013/07/24","billNo":"CDD20130724002-1","Order_Salor":"é»ç¿é®","JDC_FaPiao_KaiPiaoRen":"åè¾¾é¾","JDC_FaPiao_HaoMa":"00088444","Order_Cust_Name":"éé¶ç","Order_Cust_Sex":"å¥³","Order_JBRen_Tel":"13925808555","Order_Cust_ZhengJianHao":"421022198302213946","Order_Cust_Mobile":"13925808555","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"JTHBW1GG9D2028484","Order_Car_CheXi":"ES300h","CarRuKu_CheXingDaiMa":"ES300hH1","Order_Car_Color":"çç ç½è²","Order_PeiCheDate":"2013/08/02","Order_FaPiaoDate":"2013/08/06","Order_YuJiaoChe_Date":"2013/08/15","Order_TiCheDate":"2013/08/14","Order_Remark":"","Order_JBRen_Address":"æ·±å³å¸å®å®åºç½ç°è·¯æ·±ä¸æ°å²¸çº¿11æ Båº§8A","groupSimpleName":"æ·±ä¸é·å"},{"No.":"14","Order_date":"2013/07/24","billNo":"CDD20130724003-1","Order_Salor":"èè¹","JDC_FaPiao_KaiPiaoRen":"æ¨ä¸½ç´","JDC_FaPiao_HaoMa":"00171605","Order_Cust_Name":"æ´ç¥ä¼","Order_Cust_Sex":"å¥³","Order_JBRen_Tel":"13510011537","Order_Cust_ZhengJianHao":"441802196803093228","Order_Cust_Mobile":"13510011537","CarRuKu_ChePaiHao":"6WC55","CarRuKu_CheJiaHao":"JTJZA11A4D2028649","Order_Car_CheXi":"RX270","CarRuKu_CheXingDaiMa":"RX270B7","Order_Car_Color":"äº®è¤éå±è²","Order_PeiCheDate":"2013/08/16","Order_FaPiaoDate":"2013/08/17","Order_YuJiaoChe_Date":"2013/08/23","Order_TiCheDate":"2013/08/27","Order_Remark":"","Order_JBRen_Address":"æ·±å³å¸å®å®åºè¥¿ä¹¡å¤§é115åºå¾¡é¾å±9A13A01","groupSimpleName":"æ·±ä¸é·å"},{"No.":"15","Order_date":"2013/07/24","billNo":"CDD20130724004-1","Order_Salor":"éæºèª","JDC_FaPiao_KaiPiaoRen":"æ¨ä¸½ç´","JDC_FaPiao_HaoMa":"00088438","Order_Cust_Name":"é»å¥æº","Order_Cust_Sex":"ç·","Order_JBRen_Tel":"13802261294","Order_Cust_ZhengJianHao":"440301195708270119","Order_Cust_Mobile":"13802261294","CarRuKu_ChePaiHao":"","CarRuKu_CheJiaHao":"JTHBJ1GG3D2024591","Order_Car_CheXi":"ES250","CarRuKu_CheXingDaiMa":"ES250S1","Order_Car_Color":"æåé»è²","Order_PeiCheDate":"2013/07/29","Order_FaPiaoDate":"2013/07/29","Order_YuJiaoChe_Date":"2013/08/09","Order_TiCheDate":"2013/08/11","Order_Remark":"","Order_JBRen_Address":"å¹¿ä¸çæ·±å³å¸ç½æ¹åºç°å¿åºäºè±å­1-402A","groupSimpleName":"æ·±ä¸é·å"}]};Sys.Application.initialize();
//]]>
</script>
</form>
    <script language="javascript" type="text/javascript">
        function initData() {
            if (colModel != null) {
                $("#flexdg").flexigrid(colModel);

            }
            if (jsonData != null) {
                $("#flexdg").flexAddData(jsonData);
            }

            $("#lnkExcel,#lnkSearchA").linkbutton();
              $.messager.progress('close');
        }
        var dragfg = false;
        $(function () {
            initData();
           
            var offsetX = 0;
            var offsetY = 0;
            $(".dialog_title").mouseover(function () {
                $(this).css("cursor", "move");
            });
            $(".dialog_title").mousedown(function () {
                dragfg = true;
                offsetX = event.offsetX;
                offsetY = event.offsetY;
                $(this).css("cursor", "move");
            }).mouseup(function () {
                dragfg = false;
            });
            $(document).mousemove(function () {
                if (!dragfg||event.button!=1) {
                    return;
                }
                var x = event.clientX - offsetX;
                var y = event.clientY - offsetY;
                $("#light").css("left", x).css("top", y);
               

            });


        });

        function searchCheck() {
            $("#txtPageNum").val("1");

             $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });

            __doPostBack('lnkSearch', '');
            $("#light,#fade").hide();
            return false;
        }

        function getSelect(obj) {

            $("#txtPageSize").val(obj.value);
          $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });
            __doPostBack('tmp', '');

        }
        function pageClick(page) {

            $("#txtPageNum").val(page);
           $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });
            __doPostBack('tmp', '');
        }
        function sizeClick(pageSize) {

            $("#txtPageNum").val("1");
            $("#txtPageSize").val(pageSize);
          $.messager.progress({
                 title: '请稍后',
                 
                  text: '努力加载中...' , 
                 interval: 100
             });

            __doPostBack('tmp', '');
        }
        function groupselect() {
            var href = "../index/groupSelect.aspx";
            var SizeZ = 'dialogWidth:600px;dialogHeight:450px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, '', SizeZ);
            if (returnValue != undefined && returnValue != "") {
                var s = returnValue.split("|");
                $("#txtgroupId").val(s[0]);
                $("#txtgroup").val(s[1]);
            }

        }
    </script>
</body>
</html>
<script type="text/javascript">
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(initData);
</script>