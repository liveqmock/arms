
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
    <form name="form1" method="post" action="CommonReport.aspx?type=saleAfterWeiXiuGongDanList" id="form1">
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
                        维修工单列表</span>
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
        <div   id="light" class="white_content"  style="padding:2px;width:460px;height:350px;"  title="saleAfterWeiXiuGongDanList查询"><div class="dialog_title"><div>维修工单列表</div></div><div class="dialog_content"> <table border="0"   cellpadding="3" cellspacing="0" style="margin:10px;width:96%"><tr> <td align="right">机构选择:</td><td><input  type="text"   style="width:90%;"  name="txtgroup"    Id="txtgroup"    MaxLength="200"  onclick="groupselect()"/> </td> <td><input  type="hidden"   style="width:90%;"  name="txtgroupId"    Id="txtgroupId"    MaxLength="200"  /> </td></tr><tr> <td align="right">入厂日期:</td><td> <span class="span"> <input  type="text"    name="ruChangDate1"  class="easyui-datebox"   Id="ruChangDate1"    MaxLength="30"  /> 至: <input  type="text"    name="ruChangDate2"    class="easyui-datebox" Id="ruChangDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">出厂日期:</td><td> <span class="span"> <input  type="text"    name="chuChangDate1"  class="easyui-datebox"   Id="chuChangDate1"    MaxLength="30"  /> 至: <input  type="text"    name="chuChangDate2"    class="easyui-datebox" Id="chuChangDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">车牌号码:</td><td><input  type="text"   style="width:90%;"  name="chePaiHao"    Id="chePaiHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">车系:</td><td><input  type="text"   style="width:90%;"  name="cheXi"    Id="cheXi"    MaxLength="30"  /> </td></tr><tr> <td align="right">车型代码:</td><td><input  type="text"   style="width:90%;"  name="cheXing"    Id="cheXing"    MaxLength="30"  /> </td></tr><tr> <td align="right">车主名称:</td><td><input  type="text"   style="width:90%;"  name="cheZhuName"    Id="cheZhuName"    MaxLength="30"  /> </td></tr></table></div><div style="text-align:center;margin:10px"><input type="button"   onclick="searchCheck()" value="查询"/> <input type="button"    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" value="关闭"/>    </div> </div>
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
 var colModel=null;colModel= {colModel:[{display:'NO.',name:'NO.',width:30,resizable : true,sortable:true},{display:'协议单号',name:'协议单号',width:120,resizable : true,sortable:true},{display:'车牌号码',name:'车牌号码',width:120,resizable : true,sortable:true},{display:'会员号码',name:'会员号码',width:120,resizable : true,sortable:true},{display:'会员级别',name:'会员级别',width:120,resizable : true,sortable:true},{display:'出厂日期',name:'出厂日期',width:120,resizable : true,sortable:true},{display:'维修单号',name:'维修单号',width:120,resizable : true,sortable:true},{display:'入厂时间',name:'入厂时间',width:120,resizable : true,sortable:true},{display:'第一次来厂时间',name:'第一次来厂时间',width:120,resizable : true,sortable:true},{display:'最后一次来厂时间',name:'最后一次来厂时间',width:120,resizable : true,sortable:true},{display:'维修类型',name:'维修类型',width:120,resizable : true,sortable:true},{display:'服务顾问',name:'服务顾问',width:120,resizable : true,sortable:true},{display:'厂牌',name:'厂牌',width:120,resizable : true,sortable:true},{display:'车系',name:'车系',width:120,resizable : true,sortable:true},{display:'车型代码',name:'车型代码',width:120,resizable : true,sortable:true},{display:'车架号码',name:'车架号码',width:120,resizable : true,sortable:true},{display:'购车日期',name:'购车日期',width:120,resizable : true,sortable:true},{display:'来厂里程',name:'来厂里程',width:120,resizable : true,sortable:true},{display:'车主名',name:'车主名',width:120,resizable : true,sortable:true},{display:'车主电话',name:'车主电话',width:120,resizable : true,sortable:true},{display:'车主手机',name:'车主手机',width:120,resizable : true,sortable:true},{display:'联系人名称',name:'联系人名称',width:120,resizable : true,sortable:true},{display:'联系人电话',name:'联系人电话',width:120,resizable : true,sortable:true},{display:'联系人手机',name:'联系人手机',width:120,resizable : true,sortable:true},{display:'联系人地址',name:'联系人地址',width:120,resizable : true,sortable:true},{display:'车主生日',name:'车主生日',width:120,resizable : true,sortable:true},{display:'实收金额',name:'实收金额',width:120,resizable : true,sortable:true}],dataType:'json',usepager: true,height:500,pagestat : '显示第 {from} 条到 {to} 条,共 {total} 条数据',rpOptions:[15, 25, 50, 100],rp:15};var jsonData={"total":13790,"page":1,"rows":[{"NO.":"1","协议单号":"SL0X15003827","车牌号码":"粤B62B96","会员号码":"","会员级别":"","出厂日期":"2014/03/12","维修单号":"JDD20140312003","入厂时间":"2014/03/12","第一次来厂时间":"","最后一次来厂时间":"2014-3-12 11:56:19","维修类型":"一般维修","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"ES350","车型代码":"GSV40L-BETGKC","车架号码":"JTHBJ46G772161623","购车日期":"","来厂里程":"184588","车主名":"薛生","车主电话":"","车主手机":"","联系人名称":"薛生","联系人电话":"","联系人手机":"13902963662","联系人地址":"深圳市宝安区宝乐新村一巷10号","车主生日":"1900/01/01","实收金额":"400.00"},{"NO.":"2","协议单号":"1","车牌号码":"粤B-18D22","会员号码":"","会员级别":"","出厂日期":"","维修单号":"JDD20141211019","入厂时间":"2014/12/11","第一次来厂时间":"","最后一次来厂时间":"2014-12-11 14:29:56","维修类型":"保险","服务顾问":"潘景锋","厂牌":"雷克萨斯","车系":"LS460","车型代码":"NULL","车架号码":"JTHGM46F075022856","购车日期":"1900/01/01","来厂里程":"150000","车主名":"温养养","车主电话":"13691972202","车主手机":"13691972202","联系人名称":"温养养","联系人电话":"13691972202","联系人手机":"13691972202","联系人地址":"科技园","车主生日":"1975/11/20","实收金额":"0.00"},{"NO.":"3","协议单号":"SL0X15010921","车牌号码":"粤BL9912","会员号码":"","会员级别":"","出厂日期":"2014/10/24","维修单号":"JDD20141024016","入厂时间":"2014/10/24","第一次来厂时间":"2014-1-16 9:49:39","最后一次来厂时间":"2014-10-31 11:05:33","维修类型":"厂家保修","服务顾问":"陈秋波","厂牌":"雷克萨斯","车系":"ES240","车型代码":"ACV40L-BEAGKC","车架号码":"JTHBW46G5B2053639","购车日期":"2011/12/26","来厂里程":"69290","车主名":"黄虹","车主电话":"13501588280","车主手机":"13501588280","联系人名称":"黄虹","联系人电话":"13501588280","联系人手机":"13501588280","联系人地址":"西乡（客户不留）","车主生日":"1982/03/11","实收金额":"3079.00"},{"NO.":"4","协议单号":"SL0X15005825","车牌号码":"粤BL9912","会员号码":"","会员级别":"","出厂日期":"2014/05/20","维修单号":"JDD20140520020","入厂时间":"2014/05/20","第一次来厂时间":"2014-1-16 9:49:39","最后一次来厂时间":"2014-10-31 11:05:33","维修类型":"厂家保修","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"ES240","车型代码":"ACV40L-BEAGKC","车架号码":"JTHBW46G5B2053639","购车日期":"2011/12/26","来厂里程":"65324","车主名":"黄虹","车主电话":"13501588280","车主手机":"13501588280","联系人名称":"黄虹","联系人电话":"13501588280","联系人手机":"13501588280","联系人地址":"西乡（客户不留）","车主生日":"1982/03/11","实收金额":"1710.00"},{"NO.":"5","协议单号":"SL0X15004729","车牌号码":"粤B1WF48","会员号码":"","会员级别":"","出厂日期":"2014/04/13","维修单号":"JDD20140411023","入厂时间":"2014/04/11","第一次来厂时间":"","最后一次来厂时间":"2014-10-26 9:36:49","维修类型":"定保","服务顾问":"刘杰生","厂牌":"Lexus雷克萨斯","车系":"RX270","车型代码":"精英版","车架号码":"JTJZA11A5D2036288","购车日期":"2013/10/30","来厂里程":"13058","车主名":"邱毅文","车主电话":"18922867448","车主手机":"18922867448","联系人名称":"邱毅文","联系人电话":"18922867448","联系人手机":"18922867448","联系人地址":"深圳市宝安区50区海景花园B栋A座402","车主生日":"1975/03/15","实收金额":"1020.20"},{"NO.":"6","协议单号":"SL0X15001688","车牌号码":"粤B0QT56","会员号码":"","会员级别":"","出厂日期":"2013/12/10","维修单号":"JDD20131210002","入厂时间":"2013/12/10","第一次来厂时间":"2013-12-7 12:53:40","最后一次来厂时间":"2014-11-12 16:50:40","维修类型":"定保","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"GX460","车型代码":"URJ150L-GKTZKC","车架号码":"JTJJM7FX2C5045399","购车日期":"2012/04/18","来厂里程":"41457","车主名":"叶华敏","车主电话":"13631574767","车主手机":"13631574767","联系人名称":"叶华敏","联系人电话":"13631574767","联系人手机":"13631574767","联系人地址":"中粮锦云","车主生日":"1979/11/29","实收金额":"640.00"},{"NO.":"7","协议单号":"SL0X15009420","车牌号码":"湘J85999","会员号码":"","会员级别":"","出厂日期":"2014/09/13","维修单号":"JDD20140912029","入厂时间":"2014/09/12","第一次来厂时间":"2014-7-12 11:59:37","最后一次来厂时间":"2014-10-26 12:33:07","维修类型":"定保","服务顾问":"陈秋波","厂牌":"雷克萨斯","车系":"RX270","车型代码":"23232","车架号码":"JTJZA11A3B2006395","购车日期":"2014/07/09","来厂里程":"82928","车主名":"郭峰","车主电话":"13553417758","车主手机":"13553417758","联系人名称":"郭峰","联系人电话":"13553417758","联系人手机":"13553417758","联系人地址":"湖南省津市市汪家桥派出所新城社区居委会雅梦苑10栋404号","车主生日":"2014/07/15","实收金额":"3002.00"},{"NO.":"8","协议单号":"SL0X15003048","车牌号码":"粤B8WF27","会员号码":"","会员级别":"","出厂日期":"2014/02/18","维修单号":"JDD20140207009","入厂时间":"2014/02/07","第一次来厂时间":"","最后一次来厂时间":"2014-10-8 10:42:26","维修类型":"保险","服务顾问":"林泽鹏","厂牌":"Lexus雷克萨斯","车系":"IS250","车型代码":"领先版","车架号码":"JTHBF1D29D5005195","购车日期":"2014/01/08","来厂里程":"1721","车主名":"曾慧欣","车主电话":"13570879865","车主手机":"13570879865","联系人名称":"曾慧欣","联系人电话":"13570879865","联系人手机":"13570879865","联系人地址":"宝安区宝城N7区西岸观邸花园1栋C座2802","车主生日":"1989/02/06","实收金额":"29400.00"},{"NO.":"9","协议单号":"SL0X15005185","车牌号码":"粤BX509Y","会员号码":"","会员级别":"","出厂日期":"2014/04/25","维修单号":"JDD20140425014","入厂时间":"2014/04/25","第一次来厂时间":"","最后一次来厂时间":"2014-12-30 11:13:53","维修类型":"厂家保修","服务顾问":"刘杰生","厂牌":"雷克萨斯","车系":"RX270","车型代码":"AGL10L-AWTGKW","车架号码":"JTJZA11A0B2417821","购车日期":"2011/12/15","来厂里程":"59700","车主名":"谢亚雄","车主电话":"13692132008","车主手机":"13692132008","联系人名称":"谢亚雄","联系人电话":"13692132008","联系人手机":"13692132008","联系人地址":"宝安76区天骄世家6栋1座3C","车主生日":"1900/01/01","实收金额":"1845.00"},{"NO.":"10","协议单号":"SL0X15003907","车牌号码":"粤B078UJ","会员号码":"","会员级别":"","出厂日期":"2014/03/14","维修单号":"JDD20140314030","入厂时间":"2014/03/14","第一次来厂时间":"","最后一次来厂时间":"2015-1-5 14:58:04","维修类型":"厂家保修","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"RX270","车型代码":"AGL10L-AWTGKW","车架号码":"JTJZA11A0B2411596","购车日期":"2011/10/22","来厂里程":"60612","车主名":"张仰政","车主电话":"13802564752","车主手机":"13802564752","联系人名称":"张仰政","联系人电话":"13802564752","联系人手机":"13802564752","联系人地址":"石岩街道北环北一巷23号第18栋金佰利一层","车主生日":"1971/04/04","实收金额":"3052.00"},{"NO.":"11","协议单号":"SL0X15011016","车牌号码":"粤Q58345","会员号码":"","会员级别":"","出厂日期":"2014/10/29","维修单号":"JDD20141027020","入厂时间":"2014/10/27","第一次来厂时间":"2014-2-23 13:17:34","最后一次来厂时间":"2014-12-2 15:50:01","维修类型":"定保","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"RX270","车型代码":"AGL10L-AWTGKW","车架号码":"JTJZA11A1B2404608","购车日期":"2011/04/15","来厂里程":"93502","车主名":"莫次","车主电话":"13922002060","车主手机":"13922002060","联系人名称":"莫次","联系人电话":"13922002060","联系人手机":"13922002060","联系人地址":"西乡槟城西岸花园","车主生日":"1985/08/21","实收金额":"11480.20"},{"NO.":"12","协议单号":"SL0X15011373","车牌号码":"粤BM6627","会员号码":"","会员级别":"","出厂日期":"2014/11/06","维修单号":"JDD20141106021","入厂时间":"2014/11/06","第一次来厂时间":"","最后一次来厂时间":"2014-11-6 12:19:39","维修类型":"定保","服务顾问":"陈秋波","厂牌":"雷克萨斯","车系":"ES250","车型代码":"ASV60L-BETGKC","车架号码":"JTHBJ1GG5E2044620","购车日期":"2014/03/24","来厂里程":"17038","车主名":"李聪","车主电话":"13823263922","车主手机":"13823263922","联系人名称":"李聪","联系人电话":"13823263922","联系人手机":"13823263922","联系人地址":"沙井新沙路星际大厦1208室","车主生日":"1978/08/17","实收金额":"1902.20"},{"NO.":"13","协议单号":"SL0X15004624","车牌号码":"粤BM6627","会员号码":"","会员级别":"","出厂日期":"2014/04/08","维修单号":"JDD20140408018","入厂时间":"2014/04/08","第一次来厂时间":"","最后一次来厂时间":"2014-11-6 12:19:39","维修类型":"一般维修","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"ES250","车型代码":"ASV60L-BETGKC","车架号码":"JTHBJ1GG5E2044620","购车日期":"2014/03/24","来厂里程":"1615","车主名":"李聪","车主电话":"13823263922","车主手机":"13823263922","联系人名称":"李聪","联系人电话":"13823263922","联系人手机":"13823263922","联系人地址":"沙井新沙路星际大厦1208室","车主生日":"1978/08/17","实收金额":"1280.00"},{"NO.":"14","协议单号":"SL0X15011092","车牌号码":"粤B2250P","会员号码":"","会员级别":"","出厂日期":"2014/10/30","维修单号":"JDD20141030004","入厂时间":"2014/10/30","第一次来厂时间":"2014-6-3 14:26:36","最后一次来厂时间":"2014-10-30 11:31:36","维修类型":"定保","服务顾问":"张先赞","厂牌":"雷克萨斯","车系":"ES240","车型代码":"ACV40L-BEAGKC","车架号码":"JTHBW46G1C2061707","购车日期":"1900/01/01","来厂里程":"45769","车主名":"潘勉","车主电话":"13502818636","车主手机":"13502818636","联系人名称":"潘勉","联系人电话":"13502818636","联系人手机":"13502818636","联系人地址":"湖滨路","车主生日":"1900/01/01","实收金额":"1620.40"},{"NO.":"15","协议单号":"SL0X15010213","车牌号码":"粤B77672","会员号码":"","会员级别":"","出厂日期":"2014/10/07","维修单号":"JDD20141006016","入厂时间":"2014/10/06","第一次来厂时间":"","最后一次来厂时间":"2015-1-5 17:31:23","维修类型":"保险","服务顾问":"王秀娟","厂牌":"Lexus雷克萨斯","车系":"ES250","车型代码":"精英版","车架号码":"JTHBJ1GG2D2039759","购车日期":"2014/01/02","来厂里程":"11042","车主名":"张明峰","车主电话":"13510992698","车主手机":"13510992698","联系人名称":"张明峰","联系人电话":"13510992698","联系人手机":"13510992698","联系人地址":"深圳市福田区新洲嘉洲豪园3栋203","车主生日":"1986/05/02","实收金额":"6005.00"}]};Sys.Application.initialize();
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