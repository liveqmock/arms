
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
    <form name="form1" method="post" action="CommonReport.aspx?type=customSaleAfterHuiFangReport" id="form1">
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
                        客户回访报表</span>
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
        <div   id="light" class="white_content"  style="padding:2px;width:460px;height:350px;"  title="customSaleAfterHuiFangReport查询"><div class="dialog_title"><div>客户回访报表</div></div><div class="dialog_content"> <table border="0"   cellpadding="3" cellspacing="0" style="margin:10px;width:96%"><tr> <td align="right">机构选择:</td><td><input  type="text"   style="width:90%;"  name="txtgroup"    Id="txtgroup"    MaxLength="200"  onclick="groupselect()"/> </td> <td><input  type="hidden"   style="width:90%;"  name="txtgroupId"    Id="txtgroupId"    MaxLength="200"  /> </td></tr><tr> <td align="right">出厂日期:</td><td> <span class="span"> <input  type="text"    name="chuChangDate1"  class="easyui-datebox"   Id="chuChangDate1"    MaxLength="30"  /> 至: <input  type="text"    name="chuChangDate2"    class="easyui-datebox" Id="chuChangDate2"    MaxLength="30"  /> </span></td></tr><tr> <td align="right">车主姓名:</td><td><input  type="text"   style="width:90%;"  name="cheZhuName"    Id="cheZhuName"    MaxLength="30"  /> </td></tr><tr> <td align="right">车架号码:</td><td><input  type="text"   style="width:90%;"  name="cheJiaHao"    Id="cheJiaHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">服务顾问:</td><td><input  type="text"   style="width:90%;"  name="Sa"    Id="Sa"    MaxLength="30"  /> </td></tr><tr> <td align="right">车牌号码:</td><td><input  type="text"   style="width:90%;"  name="chePaiHao"    Id="chePaiHao"    MaxLength="30"  /> </td></tr><tr> <td align="right">入厂日期:</td><td> <span class="span"> <input  type="text"    name="ruChangDate1"  class="easyui-datebox"   Id="ruChangDate1"    MaxLength="30"  /> 至: <input  type="text"    name="ruChangDate2"    class="easyui-datebox" Id="ruChangDate2"    MaxLength="30"  /> </span></td></tr></table></div><div style="text-align:center;margin:10px"><input type="button"   onclick="searchCheck()" value="查询"/> <input type="button"    onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" value="关闭"/>    </div> </div>
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
 var colModel=null;colModel= {colModel:[{display:'NO.',name:'NO.',width:30,resizable : true,sortable:true},{display:'服务顾问',name:'服务顾问',width:120,resizable : true,sortable:true},{display:'车主类型',name:'车主类型',width:120,resizable : true,sortable:true},{display:'维修单号',name:'维修单号',width:120,resizable : true,sortable:true},{display:'车系',name:'车系',width:120,resizable : true,sortable:true},{display:'车身颜色',name:'车身颜色',width:120,resizable : true,sortable:true},{display:'车牌号码',name:'车牌号码',width:120,resizable : true,sortable:true},{display:'入厂时间',name:'入厂时间',width:120,resizable : true,sortable:true},{display:'首次来厂日',name:'首次来厂日',width:120,resizable : true,sortable:true},{display:'出厂时间',name:'出厂时间',width:120,resizable : true,sortable:true},{display:'首保',name:'首保',width:120,resizable : true,sortable:true},{display:'免检',name:'免检',width:120,resizable : true,sortable:true},{display:'新车检查',name:'新车检查',width:120,resizable : true,sortable:true},{display:'返修',name:'返修',width:120,resizable : true,sortable:true},{display:'保险',name:'保险',width:120,resizable : true,sortable:true},{display:'定保',name:'定保',width:120,resizable : true,sortable:true},{display:'机电',name:'机电',width:120,resizable : true,sortable:true},{display:'钣喷',name:'钣喷',width:120,resizable : true,sortable:true},{display:'保修',name:'保修',width:120,resizable : true,sortable:true},{display:'大客户',name:'大客户',width:120,resizable : true,sortable:true},{display:'美容',name:'美容',width:120,resizable : true,sortable:true},{display:'里程',name:'里程',width:120,resizable : true,sortable:true},{display:'车架号',name:'车架号',width:120,resizable : true,sortable:true},{display:'发动机号',name:'发动机号',width:120,resizable : true,sortable:true},{display:'车主姓名',name:'车主姓名',width:120,resizable : true,sortable:true},{display:'性别',name:'性别',width:120,resizable : true,sortable:true},{display:'车主电话',name:'车主电话',width:120,resizable : true,sortable:true},{display:'车主手机',name:'车主手机',width:120,resizable : true,sortable:true},{display:'联系地址',name:'联系地址',width:120,resizable : true,sortable:true},{display:'邮编',name:'邮编',width:120,resizable : true,sortable:true},{display:'应收',name:'应收',width:120,resizable : true,sortable:true},{display:'实收',name:'实收',width:120,resizable : true,sortable:true},{display:'管理内',name:'管理内',width:120,resizable : true,sortable:true},{display:'管理外',name:'管理外',width:120,resizable : true,sortable:true},{display:'预出厂时间',name:'预出厂时间',width:120,resizable : true,sortable:true},{display:'提示信息',name:'提示信息',width:120,resizable : true,sortable:true}],dataType:'json',usepager: true,height:500,pagestat : '显示第 {from} 条到 {to} 条,共 {total} 条数据',rpOptions:[15, 25, 50, 100],rp:15};var jsonData={"total":13861,"page":1,"rows":[{"NO.":"1","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140617001","车系":"RX270","车身颜色":"亮褐金属色","车牌号码":"粤BW1211","入厂时间":"2014-6-17 9:00:57","首次来厂日":"","出厂时间":"2014-6-17 16:26:16","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"1185","车架号":"JTJZA11A0E2452962","发动机号":"1AR1055175","车主姓名":"刘玮","性别":"女","车主电话":"13418691408","车主手机":"13418691408","联系地址":"深圳市福田区景田南四街30号香蜜三村香悦阁10E","邮编":"","应收":"0.00","实收":"0.00","管理内":"","管理外":"","预出厂时间":"2014-6-18 9:00:57","提示信息":""},{"NO.":"2","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140820002","车系":"RX270","车身颜色":"亮褐金属色","车牌号码":"粤BW1211","入厂时间":"2014-8-20 10:04:09","首次来厂日":"","出厂时间":"2014-8-20 11:39:39","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"1","机电":"","钣喷":"","保修":"","大客户":"","美容":"","里程":"2754","车架号":"JTJZA11A0E2452962","发动机号":"1AR1055175","车主姓名":"刘玮","性别":"女","车主电话":"13418691408","车主手机":"13418691408","联系地址":"深圳市福田区景田南四街30号香蜜三村香悦阁10E","邮编":"","应收":"225.00","实收":"225.00","管理内":"","管理外":"","预出厂时间":"2014-8-21 10:04:09","提示信息":""},{"NO.":"3","服务顾问":"林泽鹏","车主类型":"普通客户","维修单号":"JDD20140530021","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2014-5-30 15:28:13","首次来厂日":"","出厂时间":"2014-6-4 12:50:21","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"1","定保":"","机电":"","钣喷":"1","保修":"","大客户":"","美容":"","里程":"59936","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖志国","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"4600.00","实收":"4600.00","管理内":"","管理外":"","预出厂时间":"2014-6-2 12:00:00","提示信息":""},{"NO.":"4","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140527043","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2014-5-27 18:50:04","首次来厂日":"","出厂时间":"2014-5-30 18:02:24","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"","钣喷":"","保修":"","大客户":"","美容":"1","里程":"68000","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖志国","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"660.00","实收":"660.00","管理内":"","管理外":"","预出厂时间":"2014-5-28 18:50:04","提示信息":""},{"NO.":"5","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140506019","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2014-5-6 15:25:35","首次来厂日":"","出厂时间":"2014-5-6 18:29:49","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"58236","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖志国","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"270.00","实收":"270.00","管理内":"","管理外":"","预出厂时间":"2014-5-7 15:25:35","提示信息":""},{"NO.":"6","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140506014","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2014-5-6 13:52:54","首次来厂日":"","出厂时间":"2014-5-6 18:24:38","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"1","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"58236","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖志国","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"675.00","实收":"675.00","管理内":"","管理外":"","预出厂时间":"2014-5-7 13:52:54","提示信息":""},{"NO.":"7","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140911006","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2014-9-11 9:41:42","首次来厂日":"","出厂时间":"2014-9-11 15:01:05","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"1","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"66016","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖志国","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"1035.00","实收":"1035.00","管理内":"","管理外":"","预出厂时间":"2014-9-12 9:41:42","提示信息":""},{"NO.":"8","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20131120003","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2013-11-20 9:50:14","首次来厂日":"","出厂时间":"2013-11-20 16:45:41","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"","钣喷":"","保修":"","大客户":"","美容":"","里程":"51142","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖先生","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"1185.00","实收":"1095.00","管理内":"","管理外":"","预出厂时间":"2013-11-21 11:30:14","提示信息":""},{"NO.":"9","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20131120006","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2013-11-20 11:12:00","首次来厂日":"","出厂时间":"2013-11-20 16:46:47","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"","钣喷":"","保修":"","大客户":"","美容":"","里程":"51142","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖先生","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"630.00","实收":"630.00","管理内":"","管理外":"","预出厂时间":"2013-11-21 11:12:00","提示信息":""},{"NO.":"10","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140506018","车系":"ES240","车身颜色":"深灰云母金","车牌号码":"粤B256LL","入厂时间":"2014-5-6 15:20:57","首次来厂日":"","出厂时间":"2014-5-6 18:30:39","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"58236","车架号":"JTHBW46G5B2038252","发动机号":"2AZ H643263","车主姓名":"赖志国","性别":"","车主电话":"13925265476","车主手机":"13925265476","联系地址":"宝安76区丽景城6栋702","邮编":"","应收":"360.00","实收":"360.00","管理内":"","管理外":"","预出厂时间":"2014-5-7 15:20:57","提示信息":""},{"NO.":"11","服务顾问":"潘景锋","车主类型":"普通客户","维修单号":"JDD20140409013","车系":"ES300h","车身颜色":"暴风银","车牌号码":"粤B0JV76","入厂时间":"2014-4-9 12:01:40","首次来厂日":"2014-4-9 12:01:40","出厂时间":"2014-4-16 18:25:36","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"1","定保":"","机电":"","钣喷":"1","保修":"","大客户":"","美容":"","里程":"21442","车架号":"JTHBW1GG9D2028596","发动机号":"AVV60L-BEXGBC","车主姓名":"梁培源","性别":"","车主电话":"13510838163","车主手机":"13510838163","联系地址":"宝城","邮编":"","应收":"4150.00","实收":"4150.00","管理内":"","管理外":"","预出厂时间":"2014-4-10 12:01:40","提示信息":""},{"NO.":"12","服务顾问":"张先赞","车主类型":"普通客户","维修单号":"JDD20140628025","车系":"ES240","车身颜色":"暴风银","车牌号码":"粤B299GJ","入厂时间":"2014-6-28 15:56:59","首次来厂日":"2014-6-28 15:56:59","出厂时间":"2014-6-28 19:57:52","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"1","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"39928","车架号":"JTHBW46G692010440","发动机号":"2AZ H439001","车主姓名":"文桂好","性别":"","车主电话":"13502893218","车主手机":"13502893218","联系地址":"冠城世家长龙轩3座1410","邮编":"","应收":"720.00","实收":"576.00","管理内":"","管理外":"","预出厂时间":"2014-6-29 15:56:59","提示信息":"建议更换四条轮胎，蓄电池，光前后刹车碟；"},{"NO.":"13","服务顾问":"潘景锋","车主类型":"普通客户","维修单号":"JDD20140731020","车系":"ES240","车身颜色":"黑色","车牌号码":"粤BD5962","入厂时间":"2014-7-31 15:09:13","首次来厂日":"","出厂时间":"2014-8-5 17:31:15","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"1","定保":"","机电":"","钣喷":"1","保修":"","大客户":"","美容":"","里程":"113636","车架号":"JTHBW46GXA2013622","发动机号":"2AZ H467378","车主姓名":"周永彬","性别":"","车主电话":"13603080058","车主手机":"13603080058","联系地址":"深圳市宝安区宝民一路96号白金公寓2309","邮编":"","应收":"3333.00","实收":"3333.00","管理内":"","管理外":"","预出厂时间":"2014-8-1 16:00:00","提示信息":""},{"NO.":"14","服务顾问":"潘景锋","车主类型":"普通客户","维修单号":"JDD20140519021","车系":"ES240","车身颜色":"黑色","车牌号码":"粤BD5962","入厂时间":"2014-5-19 15:07:14","首次来厂日":"","出厂时间":"2014-5-22 14:06:59","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"1","定保":"","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"101011","车架号":"JTHBW46GXA2013622","发动机号":"2AZ H467378","车主姓名":"周永彬","性别":"","车主电话":"13603080058","车主手机":"13603080058","联系地址":"深圳市宝安区宝民一路96号白金公寓2309","邮编":"","应收":"5980.00","实收":"5980.00","管理内":"","管理外":"","预出厂时间":"2014-5-20 15:07:14","提示信息":""},{"NO.":"15","服务顾问":"林泽鹏","车主类型":"普通客户","维修单号":"JDD20140910030","车系":"ES240","车身颜色":"黑色","车牌号码":"粤BD5962","入厂时间":"2014-9-10 19:26:23","首次来厂日":"","出厂时间":"2014-9-13 13:30:11","首保":"0","免检":"0","新车检查":"0","返修":"0","保险":"0","定保":"","机电":"1","钣喷":"","保修":"","大客户":"","美容":"","里程":"114308","车架号":"JTHBW46GXA2013622","发动机号":"2AZ H467378","车主姓名":"陈荣华","性别":"","车主电话":"13510833321","车主手机":"13510833321","联系地址":"深圳市宝安区宝民一路96号白金公寓2309","邮编":"","应收":"0.00","实收":"0.00","管理内":"","管理外":"","预出厂时间":"2014-9-11 19:26:23","提示信息":""}]};Sys.Application.initialize();
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