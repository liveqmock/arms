
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self" />
    <title>

</title><link rel="Stylesheet" type="text/css" href="../../js/dhtmlxTree/dhtmlxtree.css" /> 
    <script language="javascript" type="text/javascript" src="../../js/dhtmlxTree/dhtmlxcommon.js"></script> 
    <script language="javascript" type="text/javascript" src="../../js/dhtmlxTree/dhtmlxtree.js"></script>

    <style type="text/css" >
     td {  white-space:nowrap;}    
    </style>

 <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
 <script language="javascript" type="text/javascript">
function carReturn(chePai, lianXiPerson, tel, mobile,cusId,customSort,weiXiuCiShu,huiYuanSort,vehicleId) {    
    document.getElementById("txtChePai").value = chePai;
    document.getElementById("txtConnect").value = lianXiPerson;
    document.getElementById("txtTelNum").value = tel;
    document.getElementById("txtMobile").value = mobile;
    document.getElementById("custom_Manage_Guid").value = cusId;
    document.getElementById("vehicleId_guid").value = vehicleId;
}
      
function weiXiuReturn(billNo, FuWuUserID, LiCheng, shiShou, zhuXiuRenName, wanJianRenName, ruChangDate, chuChangDate,WeiXiuDanGuid) {
        document.getElementById("txtWeiXiuNo").value       = billNo;
        document.getElementById("txtJieChePerson").value   = FuWuUserID;
        document.getElementById("txtLiCheng").value        = LiCheng;
        document.getElementById("txtWeiXiuFei").value      = shiShou;
        document.getElementById("txtZhuXiu").value         = zhuXiuRenName;
        document.getElementById("txtCheckPerson").value    = wanJianRenName;
        document.getElementById("txtInTime").value         = ruChangDate;
        document.getElementById("txtOutTime").value        = chuChangDate;
        document.getElementById("WeiXiuJieDai_Guid").value = WeiXiuDanGuid;
    }

function onCheckSubmit() {
    var message = "";
      
    var strTouSuFShi = document.getElementById("ddlTouSuFShi");
    if (strTouSuFShi.value == "") {
        message += "“投诉方式”不能为空。";

    }

    var strTouSuXingZh = document.getElementById("ddlTouSuXingZh");
    if (strTouSuXingZh.value == "") {
        message += "“投诉性质”不能为空。";

    }

    var strUrgentDegree = document.getElementById("ddlUrgentDegree");
    if (strUrgentDegree.value == "") {
        message += "“紧急程度”不能为空。";

    }

    var strTouSuNeiR = document.getElementById("txtTouSuNeiR");
    if (strTouSuNeiR.value == "") {
        message += "“投诉内容”不能为空。";

    }

    var checkedSign = 0;

    for (num = 0; num < tdTouSuBM.getElementsByTagName("input").length; num++) {
        if (tdTouSuBM.getElementsByTagName("input")[num].checked) {
           
            checkedSign = 1;
        }
    }
  
    if (checkedSign == 0) {
 
         message += "“还没选择投诉部门”";
      
    }

     if (message == "") {
       
        return true;
    }
    else {
        try {
            parent.Messager("info", "消息", message);
            tmp = "";

        } catch (e) {
            window.alert(message);
        }
    }
    return false;

}



function saveCheck() {
 
    if (!onCheckSubmit())
        return false;
 
    var flag = true;
    flag = $("#form1").form("validate");
    if (!flag) {

        return false;
    } else {
        __doPostBack('btnSave', '');
    }
    return false;

 }
function CloseWindow() {

    window.opener = null;
    window.open("", "_self");
    window.close();
}
function ChePaiShow() {


        var href = "ChePaiSelect.aspx?d=" + new Date();
        var SizeZ = 'dialogWidth:900px;dialogHeight:700px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
        var returnValue = window.showModalDialog(href, window, SizeZ);
     
            return false;

        }
        function WeiXiuShow() {


            var href = "WeiXiuDanSelect.aspx?cusid=" +document.getElementById("custom_Manage_Guid").value + "&d="+new Date();
            var SizeZ = 'dialogWidth:900px;dialogHeight:700px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
            var returnValue = window.showModalDialog(href, window, SizeZ);

            return false;

        }
        function InitTree() {
            tree = new dhtmlXTreeObject("treeboxbox_tree", "100%", "100%", 0);
            tree.setSkin('dhx_skyblue');
            tree.setImagePath("../../js/dhtmlxTree/imgs/csh_bluebooks/");
            tree.loadXML("../../tmp/6012TouSuFenLei.xml");
            tree.setOnDblClickHandler(tondblclick);
        }

      

        function tondblclick(id) {
            var nodeText = tree.getItemText(id);
            document.getElementById("txtTouSuFenL").value = nodeText;
            document.getElementById("treeboxbox_tree").style.display = "none";
        };


        function showTree(obj) {
            sid = obj.id; //存储全局变量 当前操作控件id
            var top = 0;
            var left = 0;
            var width = obj.offsetWidth;
            var height = obj.offsetHeight;
         
         
            while (obj.offsetParent) {
                top += obj.offsetTop;
                left += obj.offsetLeft;
                obj = obj.offsetParent;
            }
        
            document.getElementById("treeboxbox_tree").style.position = "absolute";
            document.getElementById("treeboxbox_tree").style.left = left+"px";
            document.getElementById("treeboxbox_tree").style.top = top + height + "px";
            document.getElementById("treeboxbox_tree").style.display = (document.getElementById("treeboxbox_tree").style.display == "none") ? "block" : "none";
        }
        $(function () {
            InitTree();
        });

 </script>
<body>
    <form name="form1" method="post" action="ComplaintAdd.aspx?d=Thu+Jan+08+2015+14%3a31%3a29+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTEyODIxODEwNw9kFgICAQ9kFgICEQ8PZBYCHgdvbmNsaWNrBQxXZWlYaXVTaG93KClkGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYLBQlDaGVja0JveDAFCUNoZWNrQm94MQUJQ2hlY2tCb3gyBQlDaGVja0JveDMFCUNoZWNrQm94NAUJQ2hlY2tCb3g1BQlDaGVja0JveDYFCUNoZWNrQm94NwUJQ2hlY2tCb3g4BQlDaGVja0JveDkFCkNoZWNrQm94MTCut9MohYUjIYpGhG0B0xFQiZQSrw==" />
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


                  <div>
    <table border="0" style="width:600px;border-bottom:1px solid #b8b8b8;margin-top:15px; margin-left:15px"">
        <tr><td class="titlebg"><span>客服管理</span>(投诉管理)
         </td><td align="right">
           </td></tr>
         </table> 
    </div> 
        <div region="center" border="false" style="padding: 10px; overflow: hidden;">
           <div id="center-main" style="border: 1px solid #e0ecff; overflow: auto">
        
       <table border="0"   cellpadding="3" cellspacing="0" >
  
            <tr>
            <td>
            车辆信息
            </td>
            </tr>
                   <tr>
       <td  align="right"><span class="requireSpan">*&nbsp;</span>车牌号码:</td>
        
        <td>
        <input name="txtChePai" type="text" maxlength="20" id="txtChePai" class="easyui-validatebox" data-options="required:true" style="width:75%;" />
       <input name="Button1" type="button" id="Button1" onclick="ChePaiShow();" style="margin-left: 0px; height: 22px; 
                        width: 15%" />
        </td>
        <td align="right"><span class="requireSpan">*&nbsp;</span>联系人:</td>
        <td>
 <input name="txtConnect" type="text" maxlength="20" id="txtConnect" class="easyui-validatebox" data-options="required:true" />
        </td>
         <td align="right">电话号码:</td>
        <td>
       <input name="txtTelNum" type="text" maxlength="30" id="txtTelNum" class="easyui-validatebox" data-options="required:true" />
        </td>
       </tr>
                         <tr>
       <td  align="right"><span class="requireSpan">&nbsp;</span>投诉次数:</td>
        
        <td>
        <input name="txtTouSuNum" type="text" id="txtTouSuNum" disabled="disabled" class="easyui-validatebox" /></td>

         <td align="right"><span class="requireSpan">*&nbsp;</span>手机:</td>
        <td>
       <input name="txtMobile" type="text" maxlength="20" id="txtMobile" class="easyui-validatebox" data-options="required:true" />
        </td>
              <td  align="right">客户满意度:</td>
        
        <td>
        <input name="txtManY" type="text" id="txtManY" disabled="disabled" class="easyui-validatebox" /></td>
       </tr>
                         <tr>
 
        <td align="right"><span class="requireSpan">&nbsp;</span>是否在店:</td>
        <td>
 <input name="txtIsHere" type="text" id="txtIsHere" disabled="disabled" class="easyui-validatebox" />
        </td>

       </tr>
                <tr>
            <td>
            维修信息
            </td>
            </tr>
             <tr>
       <td  align="right"><span class="requireSpan">&nbsp;</span>维修单号:</td>
        
        <td>
        <input name="txtWeiXiuNo" type="text" id="txtWeiXiuNo" class="easyui-validatebox" onclick="WeiXiuShow()" /></td>
        <td align="right"><span class="requireSpan">&nbsp;</span>接车人:</td>
        <td>
 <input name="txtJieChePerson" type="text" id="txtJieChePerson" disabled="disabled" class="easyui-validatebox" />
        </td>
         <td align="right">里程数:</td>
        <td>
       <input name="txtLiCheng" type="text" id="txtLiCheng" disabled="disabled" class="easyui-validatebox" />
        </td>
       </tr>
                         <tr>
       <td  align="right"><span class="requireSpan">&nbsp;</span>维修费用:</td>
        
        <td>
        <input name="txtWeiXiuFei" type="text" id="txtWeiXiuFei" disabled="disabled" class="easyui-validatebox" /></td>
        <td align="right"><span class="requireSpan">&nbsp;</span>主修人:</td>
        <td>
 <input name="txtZhuXiu" type="text" id="txtZhuXiu" disabled="disabled" class="easyui-validatebox" />
        </td>
         <td align="right">检验员:</td>
        <td>
       <input name="txtCheckPerson" type="text" id="txtCheckPerson" disabled="disabled" class="easyui-validatebox" />
        </td>
       </tr>
                         <tr>
       <td  align="right"><span class="requireSpan">&nbsp;</span>进场时间:</td>
        
        <td>
        <input name="txtInTime" type="text" id="txtInTime" disabled="disabled" class="easyui-validatebox" /></td>
        <td align="right"><span class="requireSpan">&nbsp;</span>出场时间:</td>
        <td>
 <input name="txtOutTime" type="text" id="txtOutTime" disabled="disabled" class="easyui-validatebox" />
        </td>

       </tr>

  <tr>
            <td>
            投诉信息
            </td>
            </tr>
                         <tr>
      <td align="right">
                    投诉方式*
                </td>
                <td style="width: 21%">
                    <select name="ddlTouSuFShi" id="ddlTouSuFShi" style="width: 92%">
	<option value=""></option>
	<option value="现场">现场</option>
	<option value="来电">来电</option>
	<option value="回访">回访</option>
	<option value="招揽">招揽</option>
	<option value="其他">其他</option>

</select>
                </td>
                <td align="right">
                    投诉性质*
                </td>
                <td style="width: 21%">
                    <select name="ddlTouSuXingZh" id="ddlTouSuXingZh" style="width: 92%">
	<option value=""></option>
	<option value="意见">意见</option>
	<option value="一般投诉">一般投诉</option>
	<option value="重大投诉">重大投诉</option>

</select>
                </td>
                <td align="right">
                    紧急程度*
                </td>
                <td style="width: 21%">
                    <select name="ddlUrgentDegree" id="ddlUrgentDegree" style="width: 83%">
	<option value=""></option>
	<option value="一般">一般</option>
	<option value="紧急">紧急</option>
	<option value="特紧急">特紧急</option>

</select>
                </td>
       </tr>
        <tr>
           <td  align="right"><span class="requireSpan">*&nbsp;</span>投诉分类:</td>
      <td colspan="5">
                    <input name="txtTouSuFenL" type="text" id="txtTouSuFenL" type2="float" autocomplete="off" onclick="return showTree(this);" style="width: 90%" />
                </td>
              </tr>
                  <tr>
           <td  align="right"><span class="requireSpan">*&nbsp;</span>投诉内容:</td>
           <td colspan="5">
                    <textarea name="txtTouSuNeiR" rows="2" cols="20" id="txtTouSuNeiR" style="width: 90%; height:70px;"></textarea>
                </td>

                </tr>
                <tr>
                         <td  align="right"><span class="requireSpan">*&nbsp;</span>投诉部门:</td>
            <td id="tdTouSuBM" colspan="5" style="">
                <input id="CheckBox0" type="checkbox" name="CheckBox0" /><label for="CheckBox0">九江丰田财务部</label><input id="CheckBox1" type="checkbox" name="CheckBox1" /><label for="CheckBox1">九江丰田销售部</label><input id="CheckBox2" type="checkbox" name="CheckBox2" /><label for="CheckBox2">九江丰田钣喷车间</label><input id="CheckBox3" type="checkbox" name="CheckBox3" /><label for="CheckBox3">九江丰田美容车间</label><input id="CheckBox4" type="checkbox" name="CheckBox4" /><label for="CheckBox4">九江丰田售后服务部</label><input id="CheckBox5" type="checkbox" name="CheckBox5" /><label for="CheckBox5">九江丰田客户关系部</label><span><br></span><input id="CheckBox6" type="checkbox" name="CheckBox6" /><label for="CheckBox6">九江丰田机电车间</label><input id="CheckBox7" type="checkbox" name="CheckBox7" /><label for="CheckBox7">九江丰田售后前台</label><input id="CheckBox8" type="checkbox" name="CheckBox8" /><label for="CheckBox8">九江丰田人事行政部</label><input id="CheckBox9" type="checkbox" name="CheckBox9" /><label for="CheckBox9">九江丰田精品部</label><input id="CheckBox10" type="checkbox" name="CheckBox10" /><label for="CheckBox10">九江丰田售后配件</label></td>

                </tr>
                      <tr>

         <td colspan="6" align="center">

         <!--按钮区域 start-->
          <input name="custom_Manage_Guid" type="hidden" id="custom_Manage_Guid" />
           <input name="WeiXiuJieDai_Guid" type="hidden" id="WeiXiuJieDai_Guid" />
           <input name="vehicleId_guid" type="hidden" id="vehicleId_guid" />
           <a onclick="return saveCheck();" id="btnSave" class="easyui-linkbutton" href="javascript:__doPostBack('btnSave','')">保存</a>

           <a onclick="CloseWindow();" id="btnDel" class="easyui-linkbutton" href="javascript:__doPostBack('btnDel','')">取消</a>
         <!--按钮区域 end-->
         </td>
         </tr>
       </table>
        </div>
    </div>
       <div id="treeboxbox_tree" style="width: 183px; height: 200px; z-index: 11; background-color: #f5f5f5;
        border: 1px solid Silver; overflow: auto; display: none;">
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="5586079C" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWMQKRkvSnBwLDleaxCgKM54rGBgL6pM3ICQLa/v7OCQLz2PnNCgKxhYrZCQL4uNrIDALJm5TnAQLfvLe5AwLXve+GDQLFmfyaBALRoKHMBwKv39CyAQLNz8LcAwKQhd7xCALY9+7vCQLN0IWFDwLdwIZTAvb50sACAr+a6rQKArji8vYBAoed1pkOAv6g4foGAt+Nxt4DAp+w3aAEAtrC7fgIAqCQp7MGAoDrnM4CAtmEsN4IAoik8akFAtDvq70FAt/9mNYNAoHk17sJAoLk17sJAv/j17sJAoDk17sJAv3j17sJAv7j17sJAvvj17sJAvzj17sJAvnj17sJAvrj17sJAoLkl7wJAuLGx60DAuSUocIFAofH5rELApy3uJIMAouTpcYFj44OMLuHyei7DhSb0FYKaBu08d4=" />
</div></form>
</body>
</html>