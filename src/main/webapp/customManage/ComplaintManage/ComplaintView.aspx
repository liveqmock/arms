
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="ComplaintView.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjAzODc0OTI3Mg9kFgICAQ9kFgICCA8QDxYGHg1EYXRhVGV4dEZpZWxkBQhkZXB0TmFtZR4ORGF0YVZhbHVlRmllbGQFCGRlcHRHdWlkHgtfIURhdGFCb3VuZGdkEBUMFeS5neaxn+S4sOeUsOi0ouWKoemDqBXkuZ3msZ/kuLDnlLDplIDllK7pg6gY5Lmd5rGf5Liw55Sw6ZKj5Za36L2m6Ze0GOS5neaxn+S4sOeUsOe+juWuuei9pumXtBvkuZ3msZ/kuLDnlLDllK7lkI7mnI3liqHpg6gb5Lmd5rGf5Liw55Sw5a6i5oi35YWz57O76YOoGOS5neaxn+S4sOeUsOacuueUtei9pumXtBjkuZ3msZ/kuLDnlLDllK7lkI7liY3lj7Ab5Lmd5rGf5Liw55Sw5Lq65LqL6KGM5pS/6YOoFeS5neaxn+S4sOeUsOeyvuWTgemDqBjkuZ3msZ/kuLDnlLDllK7lkI7phY3ku7YAFQwkMDYxMDUzNDktNWRjNC00MDM3LTg5ZDEtMDA0ZmViODM0OWY2JDAyYzM4MDhlLWU2ZDAtNGNhMi1iMzVhLTExMjkwMWQ2YTllZSRmN2YzYjM5Yy0wYWFmLTRhZGUtYTZhYy0xMmZkOTNjZDNkODAkMzIzMTYwNWYtZTU1Ni00MzdiLTgwYjItMThjMzMzNjI0ZGUzJDIzZWE0NjhhLWJhZjMtNGIxMC04M2VjLTE5YmU1MDkwNzZiZCQ0MGJkMzA5Zi0zNTQzLTRlOTUtYTliZi0yNzc3MmZmZGVjNmMkNDk1ZDdjY2ItZjJhMy00M2E1LTk5ZGItNTdiOTk4NmJkNWVkJDJmODUyMTk4LWRkYWQtNGIyNy1iZDljLTc0NGU3MWU0ODA3NiQ0MGI0ZDU1NC1iMWRlLTQ4MjgtOTk5NS03NTY5MTM5M2E0M2YkYTBmMjM2ZmUtOTk1Yy00MjJjLWE4NzEtODRhMmUxNzEzODk5JGZkMDIzZjRhLWE2ZDctNDQ0Yi04NmZjLWQ3YTk0Y2Q5NTM3MQAUKwMMZ2dnZ2dnZ2dnZ2dnZGRkL99Xo7rrxLujdDri5j1+VZcc5OA=" />
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


        <div class="allRegion">
     <div class="title">
       <table border="0" style="width: 100%;">
        <tr>
        <td class="titlebg">
                         <span class="titleSpan" >投诉管理</span>
                    </td>
                           <td align="right">
                           
                        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"
                            onclick="add(0,'投诉新增');">新增投诉</a> 
                            
                        <a id="refresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('refresh','')">刷新</a>
                        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');" >
                            查询</a>
                        <a id="lnkExcel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
                        </td>
        </tr>
          </table>
      </div>
        <div class="region">
            <table id="dg" class="easyui-datagrid" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                columns:[[
                 {field:'ck',checkbox:true},
                 {field:'BillGuid',title:'投诉单guid',hidden:true,width:40},
                  {field:'Custom_Manage_Guid',title:'用户guid',hidden:true,width:40},
                   {field:'ComplaintDeptGuid',title:'投诉部门guid',hidden:true,width:40},
                   {field:'ComplaintNo',title:'投诉号',width:120},
                 {field:'Enabled',title:'是否有效',width:80},
              {field:'customizeName',title:'自定义客户标识',width:80},
                    {field:'ComplaintWay',title:'投诉方式',width:80},
                 {field:'ContactStatus',title:'处理状态',width:120},
                    {field:'FactoryStatus',title:'返厂处理',width:120},
                       {field:'BackFactoryTime',title:'返厂处理次数',width:120},
                  {field:'ComplaintTime',title:'投诉时间',width:120},
            {field:'lianXiRenName',title:'投诉人',width:80},
                 {field:'ComplaintDeptName',title:'投诉部门',width:80},
                {field:'UrgentDegree',title:'紧急程度',width:100},
                 {field:'ComplaintContent',title:'投诉内容',width:100},
                 {field:'ComplaintProperty',title:'投诉性质',width:60},
                 {field:'ComplaintClassification',title:'投诉分类',width:80},
                 {field:'ShouLiPerson',title:'受理人',width:80},
                 {field:'FinishTime',title:'完成时间',width:100},
                       {field:'HuiFanResult',title:'客户回访结果',width:80},
                 {field:'firstChuLiTime',title:'首次处理时间',width:80},
                 {field:'SpendTime',title:'处理时间',width:100},
                 {field:'DutyPerson',title:'责任人',width:100},
                 {field:'ChePaiHao',title:'车牌号',width:100},
                 {field:'CarRuKu_Stock',title:'维修单号',width:80},
                 {field:'fuWuUserId',title:'接车SA',width:80},
                    {field:'chejiahao',title:'车架号',width:80},
                 {field:'LiCheng',title:'来厂里程',width:80},
                           {field:'changPai',title:'车辆品牌',width:100},
                 {field:'chexi',title:'车系',width:80}
                
                ]],
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15">
            </table>

            </div>
                                  <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />
     <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>
    </div>
     <div  id="search" style="display:none;">
    <table border='0' >
    <tr>
    <td>车牌号:</td>
     <td> <input name="txtChePaiHao" type="text" maxlength="20" id="txtChePaiHao" /> </td>
         <td>车主:</td>
     <td> <input name="txtCustomQuanCheng" type="text" maxlength="20" id="txtCustomQuanCheng" /> </td>
      <td>联系人:</td>
     <td> <input name="txtLianXiRen" type="text" maxlength="30" id="txtLianXiRen" /> </td>
       <td>投诉部门:</td>
     <td>     <select name="ddlTouSuBuM" id="ddlTouSuBuM">
	<option value="06105349-5dc4-4037-89d1-004feb8349f6">九江丰田财务部</option>
	<option value="02c3808e-e6d0-4ca2-b35a-112901d6a9ee">九江丰田销售部</option>
	<option value="f7f3b39c-0aaf-4ade-a6ac-12fd93cd3d80">九江丰田钣喷车间</option>
	<option value="3231605f-e556-437b-80b2-18c333624de3">九江丰田美容车间</option>
	<option value="23ea468a-baf3-4b10-83ec-19be509076bd">九江丰田售后服务部</option>
	<option value="40bd309f-3543-4e95-a9bf-27772ffdec6c">九江丰田客户关系部</option>
	<option value="495d7ccb-f2a3-43a5-99db-57b9986bd5ed">九江丰田机电车间</option>
	<option value="2f852198-ddad-4b27-bd9c-744e71e48076">九江丰田售后前台</option>
	<option value="40b4d554-b1de-4828-9995-75691393a43f">九江丰田人事行政部</option>
	<option value="a0f236fe-995c-422c-a871-84a2e1713899">九江丰田精品部</option>
	<option value="fd023f4a-a6d7-444b-86fc-d7a94cd95371">九江丰田售后配件</option>
	<option selected="selected" value=""></option>

</select> </td>
            <td>投诉时间:</td>
     <td><input name="txtTouSuTime_Begin" type="text" id="txtTouSuTime_Begin" class="easyui-datebox" /> </td>
     <td><input name="txtTouSuTime_End" type="text" id="txtTouSuTime_End" class="easyui-datebox" /> </td>
     </tr>
       <tr>
        <td>投诉性质:</td>
     <td>
        <select name="ddlTouSuXingZh" id="ddlTouSuXingZh" style="width:90px;">
	<option selected="selected" value="">全部</option>
	<option value="意见">意见</option>
	<option value="一般投诉">一般投诉</option>
	<option value="重大投诉">重大投诉</option>

</select> 
        </td>
               <td>投诉方式:</td>
     <td>
        <select name="ddlTouSuFShi" id="ddlTouSuFShi" style="width:90px;">
	<option selected="selected" value="">全部</option>
	<option value="现场">现场</option>
	<option value="来电">来电</option>
	<option value="回访">回访</option>
	<option value="招揽">招揽</option>
	<option value="其它">其它</option>

</select> 
        </td>
                     <td>紧急程度:</td>
     <td>
        <select name="ddlUrgentDegree" id="ddlUrgentDegree" style="width:90px;">
	<option selected="selected" value="">全部</option>
	<option value="一般">一般</option>
	<option value="紧急">紧急</option>
	<option value="特紧急">特紧急</option>

</select> 
        </td>
                <td>处理状态:</td>
     <td>
        <select name="ddlStatus" id="ddlStatus" style="width:90px;">
	<option selected="selected" value="">全部</option>
	<option value="处理中">处理中</option>
	<option value="待二次回访">待二次回访</option>
	<option value="待部门经理确认">待部门经理确认</option>
	<option value="待客服经理确认">待客服经理确认</option>
	<option value="待总经理确认">待总经理确认</option>
	<option value="完成">完成</option>

</select> 
        </td>
     </tr>
     <tr>
     <td>
       <a onclick="return searchCheck();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D09F8645" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWLQLHtZjhDQLp4sGQAwK87en2BAKfluDwDwKa7byuAgKm4eRsAqTGvQYC242BewK3iY/qDgKo5bYmAvChnY4BAtn7xfUDAtXUl40CAvrDzLQLAvGX6+4MAv2KhoAFAqfx7/YOAvGgvacNAtvrm/oJAqOw3vsCAqLpxsYLArWVmv8CAv2H/esBAv6g4foGAt+Nxt4DAp+w3aAEAtrC7fgIAs3QhYUPAt3AhlMC9vnSwAICv5rqtAoCuOLy9gECh52atw8CoJCnswYCgOuczgIC2YSw3ggCiKTxqQUC8p/Z9goC56/pqQkCzvrdyw0C7qqBuA8CrqGSUgLIg83TBQLW/7KIBAKpi4nBBQ9NqJCjrC+pi0QlfopSC1j3RWhd" />
</div></form>
            <script language="javascript" type="text/javascript">
                var btnFlag = "0";
                function searchCheck() {
                    if (btnFlag == "0") { btnFlag = "1"; return true; } else { alert('禁止多次进行提交操作!'); }
                    return false;
                }


                function add(id, title) {
                    if (id != undefined) {

                //        parent.winopen('../customManage/ComplaintManage/ComplaintAdd.aspx?' + new Date(), title, 700, 600, true, true, false);
                        //  OpenCarPaymentAdd(id, orderNo);
                        var href = "ComplaintAdd.aspx?d="+ new Date();

                        var SizeZ = 'dialogWidth:700px;dialogHeight:600px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
                        var returnValue = window.showModalDialog(href, '', SizeZ);
                    }
                }
                function showChuLi(id,dptGuid,custId) {
                    //alert(index);


                    var href = "ComplaintTop.aspx?ID=" + id + "&TouSuBuMen_ID=" + dptGuid + "&CustGuid=" + custId + "&d=" + new Date();
                    var SizeZ = 'height=' + (screen.availHeight - 20) + ',width=' + (screen.availWidth - 10) + ',left=0,top=0,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
                    try {
                        if (!openStatus2.closed) {
                            alert("投诉处理窗口 已在外部打开");
                            openStatus2.focus();
                            return false;
                        }
                        else {
                            openStatus2 = window.open(href, '投诉处理', SizeZ);
                        }
                    }
                    catch (Error) {
                        openStatus2 = window.open(href, '投诉处理', SizeZ);
                    }

                }
//                function showChuLi(id, title) {
//                    if (id != undefined) {

//                        parent.winopen('../customManage/ComplaintManage/ComplaintAdd.aspx?' + new Date(), title, 700, 600, true, true, false);
//                        //  OpenCarPaymentAdd(id, orderNo);

//                    }
//                }

                $('#dg').datagrid({
                    onDblClickRow: function (index, data) {
                        // add(data.Intention_CustGuid, "修改");
                        //OpenCarPaymentDetail(data.CarRuKu_FuKuan_ID);

                        showChuLi(data.BillGuid, data.ComplaintDeptGuid, data.Custom_Manage_Guid);
                    }
                });


                var jsonStr = '{"total":647,"rows":[{"BillGuid":"4976fdb9-8a4e-49a6-b44b-5dce8cce6084","Custom_Manage_Guid":"eb6957c3-ce3c-4492-97ff-11850097f00f","ComplaintNo":"TSD201501004","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待二次回访","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2015-1-6 15:22:46","lianXiRenName":"魏宗武","ComplaintDeptName":"九江丰田机电车间","UrgentDegree":"一般","ComplaintContent":"客户说导航插USB接口没有用，来店检查没有处理好，这个故障是时有时无，2013年的时候更换过一个导航，但现在又出现问题了，希望可以把这个故障处理好。","ComplaintProperty":"意见","ComplaintClassification":"维修后故障未彻底解决","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"","firstChuLiTime":"1037分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣GW6850","billNo":"WXD20150101008","fuWuUserId":"甘琛","chejiahao":"LFMAPE2C7C0425110","LiCheng":"48539","changPai":"一汽丰田TV7163GL","CheXiMingCheng":"卡罗拉","ComplaintDeptGuid":"495D7CCB-F2A3-43A5-99DB-57B9986BD5ED","Id":"1"},{"BillGuid":"5804f5ce-5267-4f67-83d1-aea59c9b921e","Custom_Manage_Guid":"3bfaeedd-2bab-4dd8-8a7c-fb17ea121430","ComplaintNo":"TSD201501003","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2015-1-4 16:32:00","lianXiRenName":"周镇平","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说你们店的服务一点都不好，服务态度也不好，保养费又高。一分钱折扣都没有，不停的要我充500块钱才能工时打折，不充的话就什么优惠都没有，我去南昌的话不要存钱都会主动给我工时材料都打9折，不像你们这就知道要人充钱，我后后面本来还有几个东西要换，不充钱都没有折扣，后面我就换了个机油什么都没做，我情愿把车开南昌去换那几个东西。就觉得你们店的服务没有南昌好。","ComplaintProperty":"一般投诉","ComplaintClassification":"服务态度、保养费用高","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"其它","firstChuLiTime":"1392分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣GP6661","billNo":"WXD20150102007","fuWuUserId":"周蔷","chejiahao":"LFMBE84B180115543","LiCheng":"150891","changPai":"一汽丰田","CheXiMingCheng":"皇冠","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"2"},{"BillGuid":"310a65a9-7eef-4853-bca3-9c237bf64e0b","Custom_Manage_Guid":"ed9a46a2-efed-4294-b180-773bedbd0bb1","ComplaintNo":"TSD201501002","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待二次回访","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2015-1-4 16:18:26","lianXiRenName":"黄集华","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说车子外表是冲洗了，车内的仪表台灰尘是清洗了，但是清理的不是那么干净，脚垫上也没有清理干净，另外觉得你们店的工时费特别贵，本次保养工时一起760比材料费还高，打折后都要500多，自已还有辆本田车和本田的做一样的项目你们店的工时费就偏高点，在本店店保养不需要预存款就可以给我打折，因为我是外地的客户，又是老客户，每次去都会直接打折，不像你们这还非要预存500在你们店才给打折，费用太高了，如果一直这么高，以后就不会到你们店来保养。客户说知道这个每次和你们说了也没有用，以前也经常反映这个问题。你们只管服务质量，价格高不怎么管。","ComplaintProperty":"一般投诉","ComplaintClassification":"洗车质量、工时费高","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"","firstChuLiTime":"1444分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"皖HYY206","billNo":"WXD20150102011","fuWuUserId":"周蔷","chejiahao":"LFMKV30F2D0203698","LiCheng":"43499","changPai":"一汽丰田","CheXiMingCheng":"RAV4","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"3"},{"BillGuid":"8fd32162-df1c-465d-8553-380c65936956","Custom_Manage_Guid":"e0602d3e-2328-446a-926b-eaf45cc5d5df","ComplaintNo":"TSD201412024","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-31 11:08:39","lianXiRenName":"朱春保","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说你们店的工时费太高，工时费比材料费还要高。换一个东西材料只要几十块钱，工时费还要好几百。","ComplaintProperty":"意见","ComplaintClassification":"工时费高","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"7463分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣GS6555","billNo":"WXD20141228020","fuWuUserId":"周蔷","chejiahao":"LFMBE20D770100015","LiCheng":"132266","changPai":"一汽丰田TV7250V4S","CheXiMingCheng":"锐志","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"4"},{"BillGuid":"35cdd62a-8f59-46a5-9305-f038f128b6eb","Custom_Manage_Guid":"3d402efa-b04d-406c-80ab-0c53231a3ba0","ComplaintNo":"TSD201412023","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-31 10:34:15","lianXiRenName":"卢永新","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说你们店的服务人员服务太度差，问什么才说，车子要换什么应该主动跟客户介绍，不是我问什么你就答什么。这两次都是小李接待的，让他帮我查下违章，他就说查不了，上次来店，让他给我张贴前挡玻璃上的贴纸，他说没有让我去找保险公司的人要，一张5块钱，后来小任主动帮我去拿了两张，没有要我钱，觉得这不是你份内的事就不管，这种态度就不怎么好，我还和小李说了以后再这种态度下次来就不找他接待了。后面说了他，他态度才好了点。","ComplaintProperty":"一般投诉","ComplaintClassification":"接车员服务态度差","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"3174分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣GA6330","billNo":"WXD20141229022","fuWuUserId":"李南燮","chejiahao":"LFMAPE2C5D3573868","LiCheng":"20008","changPai":"一汽丰田","CheXiMingCheng":"卡罗拉","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"5"},{"BillGuid":"54a0d4f2-94ce-4e10-af96-ba7c48ef5dc4","Custom_Manage_Guid":"b6f7eb95-fa54-408a-aada-e59ca51429e2","ComplaintNo":"TSD201412019","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-29 10:57:48","lianXiRenName":"黄志军","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说你们店的材料费很高，收费合理只打了6分，保养的时间也很长，超过预估的保养时间。","ComplaintProperty":"意见","ComplaintClassification":"材料费贵","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"357分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣GD2565","billNo":"WXD20141224011","fuWuUserId":"甘琛","chejiahao":"LFMJ34AF2E3034093","LiCheng":"5481","changPai":"一汽丰田","CheXiMingCheng":"RAV4","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"6"},{"BillGuid":"d7e2ba20-cfde-44ee-b9eb-7affb5483b5b","Custom_Manage_Guid":"7ce10ea9-00fb-49dd-8f71-d6bc8f8452ce","ComplaintNo":"TSD201412018","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-29 10:40:22","lianXiRenName":"朱文清","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说车子外表是清洗了，车内没有怎么清洗，洗车服务打了9分。","ComplaintProperty":"一般投诉","ComplaintClassification":"洗车质量","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"364分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣G63C98","billNo":"WXD20141226021","fuWuUserId":"周蔷","chejiahao":"LFMAPE2C6D0488619","LiCheng":"17656","changPai":"一汽丰田","CheXiMingCheng":"卡罗拉","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"7"},{"BillGuid":"249c6603-1b34-4686-9b74-d776af35e03f","Custom_Manage_Guid":"efa9c73c-bfec-4c13-8257-30c1546b84f9","ComplaintNo":"TSD201412017","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待客服经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-28 10:47:54","lianXiRenName":"崔运飞","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说你们店的材料费太贵了就一个小小的防护条就要300多，其他方面还是比较满意的，就是费用太高了。","ComplaintProperty":"意见","ComplaintClassification":"材料费高","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"1分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣GE8996","billNo":"WXD20141216016","fuWuUserId":"甘琛","chejiahao":"LFMJ34AF6D3007168","LiCheng":"84515","changPai":"一汽丰田","CheXiMingCheng":"RAV4","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"8"},{"BillGuid":"be7dbaa4-8220-4455-93d3-aa2e2573b530","Custom_Manage_Guid":"8a8ce2d6-0b7a-42f2-b7ca-f879c1f48303","ComplaintNo":"TSD201412016","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-27 15:38:07","lianXiRenName":"夏客松","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说车多，洗车人员少，车子里外都没有清洗干净。","ComplaintProperty":"一般投诉","ComplaintClassification":"洗车质量","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"2942分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣G0N128","billNo":"WXD20141224029","fuWuUserId":"甘琛","chejiahao":"LFMBEK4BXD0096594","LiCheng":"48073","changPai":"一汽丰田TV725215","CheXiMingCheng":"皇冠","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"9"},{"BillGuid":"edbd3600-8e18-475f-966c-282b8f91f14e","Custom_Manage_Guid":"aa3d21f9-44c2-4b25-9a42-322146f0a508","ComplaintNo":"TSD201412015","Enabled":"","customizeName":"","ComplaintWay":"招揽","ContactStatus":"处理中","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-26 10:56:15","lianXiRenName":"陈英丽","ComplaintDeptName":"九江丰田钣喷车间","UrgentDegree":"一般","ComplaintContent":"客户说去年12月底来我店做了后杠油漆，不到一年的时间就掉漆了，还有现在前杠也掉漆了，是怎么回事呢，希望反映一下，帮忙处理一下。","ComplaintProperty":"意见","ComplaintClassification":"质量问题","ShouLiPerson":"程雪","FinishTime":"","HuiFanResult":"","firstChuLiTime":"3120分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣G8S209","billNo":"","fuWuUserId":"","chejiahao":"LFMAP92A8B0080884[4762]","LiCheng":"","changPai":"一汽丰田TV7165GL-ID","CheXiMingCheng":"威驰","ComplaintDeptGuid":"F7F3B39C-0AAF-4ADE-A6AC-12FD93CD3D80","Id":"10"},{"BillGuid":"bc27263d-445f-414f-b0e6-d51f427e7d52","Custom_Manage_Guid":"bd34715e-f715-412e-9c65-f0fbf697b97c","ComplaintNo":"TSD201412012","Enabled":"有效","customizeName":"","ComplaintWay":"回访","ContactStatus":"待总经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-22 15:23:36","lianXiRenName":"何知次","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说车子只是清洗了外表，车内没有做清洗。","ComplaintProperty":"一般投诉","ComplaintClassification":"洗车质量","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"7235分钟","SpendTime":"","DutyPerson":"甘琛 美容组","ChePaiHao":"湘AUW302","billNo":"WXD20141219017","fuWuUserId":"甘琛","chejiahao":"LFMAPE2C8D0485009","LiCheng":"47709","changPai":"一汽丰田","CheXiMingCheng":"卡罗拉","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"11"},{"BillGuid":"ae8a4ac8-8a23-49d0-8698-8b14a0b8b746","Custom_Manage_Guid":"85b96114-af1e-468e-acb8-dc1142e05462","ComplaintNo":"TSD201412011","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"处理中","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-21 16:20:20","lianXiRenName":"曹斌","ComplaintDeptName":"九江丰田人事行政部","UrgentDegree":"一般","ComplaintContent":"客户说对你们店的各方面服务都挺满意的，就是客户休区环境差，空调冷死人了，小空调坏了，中央空调也没有什么用，WIFI信号又差，想上个网都上不了，我做个大保养花了3个小时，在你们冷的回去第二天都感冒了。你们老板要挣钱可以理解，但也在注重这些细节，注重客户的满意度。","ComplaintProperty":"意见","ComplaintClassification":"客户休区环境差、WIFI信号差","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"","firstChuLiTime":"","SpendTime":"","DutyPerson":"","ChePaiHao":"赣G69A71","billNo":"WXD20141217016","fuWuUserId":"甘琛","chejiahao":"LFMJW36F0B0135205","LiCheng":"39750","changPai":"一汽丰田","CheXiMingCheng":"RAV4","ComplaintDeptGuid":"40B4D554-B1DE-4828-9995-75691393A43F","Id":"12"},{"BillGuid":"b0d5946b-f8fe-42e5-b88f-b5c92fe9aa0e","Custom_Manage_Guid":"1059192c-4558-47cf-b0a8-c56e87d48944","ComplaintNo":"TSD201412010","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-18 11:01:51","lianXiRenName":"谢文广","ComplaintDeptName":"九江丰田售后前台","UrgentDegree":"一般","ComplaintContent":"客户说你们店的工时材料费都很贵，收费合理只打8分。","ComplaintProperty":"意见","ComplaintClassification":"保养费用高","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"16194分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"鲁K6X511","billNo":"WXD20141118034","fuWuUserId":"甘琛","chejiahao":"LFMBEC4D1C0090706","LiCheng":"39956","changPai":"一汽丰田","CheXiMingCheng":"锐志","ComplaintDeptGuid":"2F852198-DDAD-4B27-BD9C-744E71E48076","Id":"13"},{"BillGuid":"f31600f4-a96c-47a6-bd89-913d3c6b28b6","Custom_Manage_Guid":"9331371c-9696-4e7a-8a6c-dc3889991a46","ComplaintNo":"TSD201412009","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待二次回访","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-18 10:52:25","lianXiRenName":"余家强","ComplaintDeptName":"九江丰田钣喷车间","UrgentDegree":"一般","ComplaintContent":"客户说在你们店做油漆，右后翼子板油漆没做好，漆面好毛糙，用手一摸就知道，本周未来店处理。","ComplaintProperty":"一般投诉","ComplaintClassification":"打磨粗糙","ShouLiPerson":"陈成","FinishTime":"","HuiFanResult":"","firstChuLiTime":"1929分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"浙BM967X","billNo":"WXD20141203012","fuWuUserId":"胡超","chejiahao":"LFMAP22C3B0311540","LiCheng":"29354","changPai":"一汽丰田 TV7164GD","CheXiMingCheng":"花冠","ComplaintDeptGuid":"F7F3B39C-0AAF-4ADE-A6AC-12FD93CD3D80","Id":"14"},{"BillGuid":"c55c0b6b-be92-4a1b-9386-6f3b8feca742","Custom_Manage_Guid":"0bc472ad-8554-4e15-8ae1-a789a901efba","ComplaintNo":"TSD201412008","Enabled":"","customizeName":"","ComplaintWay":"回访","ContactStatus":"待部门经理确认","FactoryStatus":"","BackFactoryTime":"","ComplaintTime":"2014-12-16 16:46:00","lianXiRenName":"宋松林","ComplaintDeptName":"九江丰田销售部","UrgentDegree":"一般","ComplaintContent":"客户说因为是朋友带他一起来买车的，销售顾问说会给朋友2000元的优惠返点现金，后来朋友又联系不到了，我的朋友也说这钱给我，他不要，最后跟销售顾问谈的就说送我一块手表跟1000块钱，到现在也没有兑现，也没有说什么时候给我！","ComplaintProperty":"一般投诉","ComplaintClassification":"沟通能力    赠品问题","ShouLiPerson":"闵媛","FinishTime":"","HuiFanResult":"满意","firstChuLiTime":"14081分钟","SpendTime":"","DutyPerson":"","ChePaiHao":"赣G12345","billNo":"","fuWuUserId":"","chejiahao":"LFMBEC4D1D0210702","LiCheng":"","changPai":"一汽丰田","CheXiMingCheng":"新锐志","ComplaintDeptGuid":"02C3808E-E6D0-4CA2-B35A-112901D6A9EE","Id":"15"}]}';
                jsonStrData = $.parseJSON(jsonStr);
                $(function () {
                    $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
                });

                function pagerFilter(data) {
                    if (typeof data.length == 'number' && typeof data.splice == 'function') {	// is array
                        data = {
                            total: data.length,
                            rows: data
                        }
                    }
                    var dg = $(this);
                    var opts = dg.datagrid('options');
                    var pager = dg.datagrid('getPager');
                    pager.pagination({
                        onSelectPage: function (pageNum, pageSize) {
                            opts.pageNumber = pageNum;
                            opts.pageSize = pageSize;
                            pager.pagination('refresh', {
                                pageNumber: pageNum,
                                pageSize: pageSize
                            });
                            $("#txtPageNum").val(pageNum);
                            $("#txtPageSize").val(pageSize);
                            __doPostBack('tmp', '');
                            dg.datagrid('loadData', data);
                        }
                    });
                    if (!data.originalRows) {
                        data.originalRows = (data.rows);
                    }
                    var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
                    var end = start + parseInt(opts.pageSize);
                    data.rows = (data.originalRows.slice(0, 100));
                    return data;
                } 


        </script>
</body>
</html>