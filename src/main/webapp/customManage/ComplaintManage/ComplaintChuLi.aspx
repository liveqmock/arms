

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	投诉处理
</title><link href="../../style/default/Comlaint.css" type="text/css" rel="Stylesheet" />
    <style type="text/css">
        body
        {
            margin-top: 6px;
            margin-left: 6px;
            margin-bottom: 0px;
            margin-right: 0px;
            font-family: "宋体";
        }
        span
        {
            border: #ffffff 1px solid;
        }
    </style>

    <script language="javascript" type="text/javascript">
        $ = function (obj) {
            if (document.getElementById(obj) != null) {
                return document.getElementById(obj);
            }
            else {
                return "";
            }
        }
        function Modify() {
            var href = window.location.href;
            var TouSuBuMen_ID = href.split("&TouSuBuMen_ID=");
            var strID = TouSuBuMen_ID[0].split("BillGuid=");
            if (strID.length > 1) {
                strID = strID[1];
            }
            else {
                strID = "";
            }
            if (document.getElementById("hidTouSuStatus").value != '处理中')

                window.showModalDialog('ComplaintAdd.aspx?ID=' + strID + '&TouSuType=Only&d=' + new Date(), '投诉修改',800, 600, true, true, false);
            //  top.location.href = "ComplaintAdd.aspx?ID=" + strID + "&TouSuType=Only";
            else
                //window.showModalDialog('ComplaintAdd.aspx?ID=' + strID + '&d=' + new Date(), '投诉修改', 700, 600, true, true, false);
                window.showModalDialog('ComplaintAdd.aspx?ID=' + strID + '&d=' + new Date() , 'window', 'dialogHeight:600px;dialogWidth:800px;status:no;toolbar:no;resizable:no;menubar:no;location:no;scrollbars:no;dialogLeft: ' + (screen.width / 2.0 - 150) + ',dialogTop:170 ');
            //  top.location.href = "ComplaintAdd.aspx?ID=" + strID;
        }
        function check1(IsAdded) {
            var href = window.location.href;
            var TouSuBuMen_ID = href.split("&TouSuBuMen_ID=");
            var ID = TouSuBuMen_ID[0].split("BillGuid=");
            if (TouSuBuMen_ID.length > 1) {
                TouSuBuMen_ID = TouSuBuMen_ID[1];
            }
            else {
                TouSuBuMen_ID = "";
            }
            if (ID.length > 1) {
                ID = ID[1];
            }
            else {
                ID = "";
            }
            var intSign = window.showModalDialog('ComplaintChuLiJingGuo.aspx?ID=' + ID + '&TouSuBuMen_ID=' + TouSuBuMen_ID + '&IsAdded=' + IsAdded, 'window', 'dialogHeight:200px;dialogWidth:660px;status:no;toolbar:no;resizable:no;menubar:no;location:no;scrollbars:no;dialogLeft: ' + (screen.width / 2.0 - 150) + ',dialogTop:170 ');
            if (intSign >= 1)
                window.location.reload();
        }
        function check2(IsAdded) {
            var href = window.location.href;
            var TouSuBuMen_ID = href.split("&TouSuBuMen_ID=");
            var ID = TouSuBuMen_ID[0].split("BillGuid=");
            if (TouSuBuMen_ID.length > 1) {
                TouSuBuMen_ID = TouSuBuMen_ID[1];
            }
            else {
                TouSuBuMen_ID = "";
            }
            if (ID.length > 1) {
                ID = ID[1];
            }
            else {
                ID = "";
            }
            window.showModalDialog('ComplaintChuLiJLYiJian.aspx?ID=' + ID + '&TouSuBuMen_ID=' + TouSuBuMen_ID + '&IsAdded=' + IsAdded, 'window', 'dialogHeight:150px;dialogWidth:660px;status:no;toolbar:no;resizable:no;menubar:no;location:no;scrollbars:no;dialogLeft: ' + (screen.width / 2.0 - 150) + ',dialogTop:170 ');
        }
        function check3() {
            var href = window.location.href;
            var TouSuBuMen_ID = href.split("&TouSuBuMen_ID=");
            var ID = TouSuBuMen_ID[0].split("BillGuid=");
            if (ID.length > 1) {
                ID = ID[1];
            }
            else {
                ID = "";
            }
            window.showModalDialog('ComplaintChuSecondHuiF.aspx?ID=' + ID, 'window', 'dialogHeight:180px;dialogWidth:660px;status:no;toolbar:no;resizable:no;menubar:no;location:no;scrollbars:no;dialogLeft: ' + (screen.width / 2.0 - 150) + ',dialogTop:170 ');
        }
        function check4() {
            var href = window.location.href;
            var TouSuBuMen_ID = href.split("&TouSuBuMen_ID=");
            var ID = TouSuBuMen_ID[0].split("BillGuid=");
            if (ID.length > 1) {
                ID = ID[1];
            }
            else {
                ID = "";
            }
            window.showModalDialog('ComplaintChuLiKeFuJL.aspx?ID=' + ID, 'window', 'dialogHeight:150px;dialogWidth:660px;status:no;toolbar:no;resizable:no;menubar:no;location:no;scrollbars:no;dialogLeft: ' + (screen.width / 2.0 - 150) + ',dialogTop:170 ');
        }
        function check5() {
            var href = window.location.href;
            var TouSuBuMen_ID = href.split("&TouSuBuMen_ID=");
            var ID = TouSuBuMen_ID[0].split("BillGuid=");
            if (ID.length > 1) {
                ID = ID[1];
            }
            else {
                ID = "";
            }
            window.showModalDialog('ComplaintChuLiZongJL.aspx?ID=' + ID, 'window', 'dialogHeight:150px;dialogWidth:660px;status:no;toolbar:no;resizable:no;menubar:no;location:no;scrollbars:no;dialogLeft: ' + (screen.width / 2.0 - 150) + ',dialogTop:170 ');
        }

        function printTouSuDan() { 
            window.open("ComplaintPrint.aspx?BillGuid=" + '5804f5ce-5267-4f67-83d1-aea59c9b921e&d='+new Date());
            return false;
        }
        function DelConfirm() {
            if (confirm('确认删除此投诉单吗？')) {
                return true;
            }
            else
                return false;
        }
    </script>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="ComplaintChuLi.aspx?BillGuid=5804f5ce-5267-4f67-83d1-aea59c9b921e&amp;TouSuBuMen_ID=2F852198-DDAD-4B27-BD9C-744E71E48076&amp;d=Thu+Jan+08+2015+14%3a30%3a08+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

    <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
        border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td style="text-align: left; width: 100%" nowrap>
                <table width="100%">
                    <tbody>
                        <tr>
                            <td style="font-size: 14px; width: 25%; text-align:left;" nowrap>
                                投诉编号：<span id="labTouSuHao" style="display:inline-block;border-style:None;">TSD201501003</span>
                            </td>
                            <td style="font-size: 14px; width: 25%;text-align:left;" nowrap>
                                投诉时间：<span id="labTouSuTime" style="display:inline-block;border-style:None;">2015-1-4 16:32:00</span>
                            </td>
                            <td style="font-size: 14px; width: 25%;text-align:left;" nowrap>
                                受理人：<span id="lblShouLiRen" style="display:inline-block;border-style:None;">周镇平</span>
                            </td>
                            <td style="font-size: 14px; width: 25%;text-align:center;" nowrap>

                        <input type="submit" name="Button1" value="打印" onclick="return printTouSuDan();" id="Button1" style="height: 25px; background-color: #F9F8F5;" />
                                <input name="hidTouSuStatus" type="hidden" id="hidTouSuStatus" value="待部门经理确认" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
                    border="1" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                车牌号码
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labChePaiHao">赣GP6661</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                联系人
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labLianXiRen">周镇平</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                会员类型
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labhuiYuanSort">普通客户</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                是否在店
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labZaiDian">不在店</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                来厂次数
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="lablaiChangCiShu">2</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                投诉次数
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labTotalNumber">1</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                满意度
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labManY">★</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                <span id="Label1">联系电话</span>
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="lblLianXiTel">13907027630</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                维修单号
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labWeiXDanH">WXD20150102007</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                接车员
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labFuWuUserID">周蔷</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                里程数
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labLiCheng">150891</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                <span id="Label3">手机号码</span>
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="lblShouJiHao">13907027630</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                主修人
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labzhuXiuRen">尧中升</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                检验员
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labWanJianRen">周蔷  [受理人:陈成]</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                进厂时间
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labruChangDate">2015-1-2 10:50:45</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                出厂时间
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labchuChangDate">2015-1-2 17:52:46</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                投诉性质
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labTouSuXingZh">一般投诉</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                紧急程度
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labUrgentDegree">一般</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                投诉部门
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labTouSuBuM">九江丰田售后前台 </span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                车架号码
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="lblCheJiaHao">LFMBE84B180115543</span>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                投诉方式
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labTouSuFShi">回访</span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                是否有效
                            </td>
                            <td height="20" style="width: 18%" class="tr_td" nowrap>
                                <span id="labEnabled"></span>
                            </td>
                            <td height="20" style="width: 7%" class="style1" nowrap>
                                投诉分类
                            </td>
                            <td height="20" colspan="3" class="tr_td" nowrap>
                                <span id="labTouSuFenL">服务态度、保养费用高</span>
                            </td>
                        </tr>
                        <tr>
                            <td  style="width: 7%" class="style1" nowrap>
                                投诉内容
                            </td>
                            <td  colspan="7" class="tr_td" nowrap>
                                <textarea name="txtTouSuNeiR" rows="2" cols="20" readonly="readonly" id="txtTouSuNeiR" style="border-width:0px;font-size:9pt;width:100%; min-height:52px; max-height:200px;">客户说你们店的服务一点都不好，服务态度也不好，保养费又高。一分钱折扣都没有，不停的要我充500块钱才能工时打折，不充的话就什么优惠都没有，我去南昌的话不要存钱都会主动给我工时材料都打9折，不像你们这就知道要人充钱，我后后面本来还有几个东西要换，不充钱都没有折扣，后面我就换了个机油什么都没做，我情愿把车开南昌去换那几个东西。就觉得你们店的服务没有南昌好。</textarea>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap align="right" colspan="8">
                                <input type="submit" name="btnModify" value="修改" onclick="Modify();" id="btnModify" style="height: 25px; background-color: #F9F8F5;" />
                                <input type="submit" name="btnDel" value="刪除" onclick="return DelConfirm();" id="btnDel" style="height: 25px; background-color: #F9F8F5;" />&nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
                    border="1" cellpadding="0" width="100%" cellspacing="1">
                    <thead>
                        <tr>
                            <td colspan="8">
                                <table width="100%" border="0">
                                    <tr>
                                        <td width="25%">
                                            <font style="font-size: 10pt;">处理经过</font>
                                        </td>
                                        <td width="75%">
                                            <div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
	<table cellspacing="0" rules="all" border="1" id="gv_JingGuoChuLi" style="width:100%;border-collapse:collapse;">
		<tr class="style2_2">
			<th scope="col" style="white-space:nowrap;">部门</th><th scope="col" style="white-space:nowrap;">处理人</th><th scope="col" style="white-space:nowrap;">处理/意见</th><th scope="col" style="white-space:nowrap;">填写时间</th><th scope="col" style="white-space:nowrap;">处理时间</th>
		</tr><tr class="gv_row" onmouseover="c=this.style.backgroundColor;this.style.backgroundColor='#EEE3CB'" onmouseout="this.style.backgroundColor=c" ondblclick="return check1('5804f5ce-5267-4f67-83d1-aea59c9b921e');">
			<td align="center" style="width:6%;">九江丰田售后前台</td><td align="center" style="width:7%;">任家长生</td><td align="left" style="width:65%;">15点40致电客户，客户说不方便接电话，但能明显感觉出来客户不愿意接听，已发短信给客户。该客户刚到店时要求折扣，并要和南昌一样，建议客户办理预存500的活动，客户不办理，后面答应办理该活动，经再三考虑之后还是没办理，我店已和客户说明我店优惠政策，因为每个店政策不同，无法和南昌折扣一样，但针对此类客户，为了留住客户下次的保养，可以针对工时适当优惠一点</td><td align="center" style="width:12%;">2015-01-05 15:44</td><td align="center" style="width:10%;">0天23小时12分钟</td>
		</tr>
	</table>
</div>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap align="right" style="width:100%">
                                <input type="submit" name="btnAddedContent" value="补充" onclick="return check1('1');" id="btnAddedContent" style="height: 25px; background-color: #F9F8F5;" />
                                <input type="submit" name="btnSaveJingGuo" value="填写" id="btnSaveJingGuo" disabled="disabled" onclick="return check1('0')" style="height: 25px; background-color: #F9F8F5;" />&nbsp;
                            </td>
                        </tr>
                    </thead>
                </table>
                <br />
                      <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
                    border="1" cellpadding="0" width="100%" cellspacing="1">
                    <thead>
                        <tr>
                            <td colspan="8">
                                <table width="100%" border="0">
                                    <tr>
                                        <td width="25%">
                                            <font style="font-size: 10pt">部门经理意见</font>
                                        </td>
                                        <td width="75%">
                                            <div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>

</div>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap align="right" style="width:100%">
                                <input type="submit" name="btnAddedContent2" value="补充" id="btnAddedContent2" disabled="disabled" style="height: 25px; background-color: #F9F8F5;" />
                                <input type="submit" name="btnSaveYiJian" value="填写" onclick="return check2('0');" id="btnSaveYiJian" style="height: 25px; background-color: #F9F8F5;" />&nbsp;
                            </td>
                        </tr>
                    </thead>
                </table>
                <br />
                <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
                    border="1" cellpadding="0" width="100%" cellspacing="1">
                    <thead>
                        <tr>
                            <td colspan="8">
                                <table width="100%" border="0">
                                    <tr>
                                        <td width="25%">
                                            <font style="font-size: 10pt">客户意见（回访结果）</font>
                                        </td>
                                        <td width="75%">
                                            <div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
	<table cellspacing="0" rules="all" border="1" id="gv_SecondHuiF" style="width:100%;border-collapse:collapse;">
		<tr class="style2_2">
			<th scope="col" style="white-space:nowrap;">处理人</th><th scope="col" style="white-space:nowrap;">回访结果</th><th scope="col" style="white-space:nowrap;">二次处理</th><th scope="col" style="white-space:nowrap;">处理/意见</th><th scope="col" style="white-space:nowrap;">填写时间</th><th scope="col" style="white-space:nowrap;">处理时间</th>
		</tr><tr class="gv_row">
			<td align="center" style="width:6%;">陈成</td><td align="center" style="width:7%;">其它</td><td align="center" style="width:6%;">&nbsp;</td><td align="left" style="width:59%;">已短信回访客户</td><td align="center" style="width:12%;">2015-01-06 15:23</td><td align="center" style="width:10%;">1天22小时51分钟</td>
		</tr>
	</table>
</div>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap align="right" style="width: 100%" >
                                <input type="submit" name="btnSaveSecondHuiF" value="填写" id="btnSaveSecondHuiF" disabled="disabled" onclick="return check3()" style="height: 25px; background-color: #F9F8F5;" />&nbsp;
                            </td>
                        </tr>
                    </thead>
                </table>
                <br />
          
                <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
                    border="1" cellpadding="0" width="100%" cellspacing="1">
                    <thead>
                        <tr>
                            <td colspan="8">
                                <table width="100%" border="0">
                                    <tr>
                                        <td width="25%">
                                            <font style="font-size: 10pt">客服经理意见</font>
                                        </td>
                                        <td width="75%">
                                            <div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>

</div>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap align="right" style="width: 100%" >
                                <input type="submit" name="btnKeFuJingLi" value="填写" id="btnKeFuJingLi" disabled="disabled" onclick="return check4()" style="height: 25px; background-color: #F9F8F5;" />&nbsp;
                            </td>
                        </tr>
                    </thead>
                </table>
                <br />
                <table bordercolor="#ffffff" bordercolordark="#ffffff" bordercolorlight="#dddddd"
                    border="1" cellpadding="0" width="100%" cellspacing="1">
                    <thead>
                        <tr>
                            <td width="100%">
                                <table width="100%" border="0">
                                    <tr>
                                        <td width="25%">
                                            <font style="font-size: 10pt">总经理意见</font>
                                        </td>
                                        <td width="75%">
                                            <div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>

</div>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap align="right" width="100%">
                                <input type="submit" name="btnSaveZJLYiJian" value="填写" id="btnSaveZJLYiJian" disabled="disabled" onclick="return check5()" style="height: 25px; background-color: #F9F8F5;" />&nbsp;
                            </td>
                        </tr>
                    </thead>
                </table>
            </td>
        </tr>
    </table>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="96D107E1" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="60meXekPG8Ri/GwS91jJeva1qZzPzjt9f9o0UsgNURvHnEcaODVTu/XGNeKlpvPxadjkNk0CUtx9ZKplqNVPi0xLy+BkyoPezCxZK808E1G1ebiwgzLCX3gNOYy7rcODqxkVyTs0qaY0IPtY8XLF9hdk7hXMHAWD1Se5k2phFBVS0ehA" />
</div></form>
</body>
</html>