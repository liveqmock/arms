

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css" >
    td ,th
    {
    	white-space:nowrap;
    	}
    </style>
<body>
    <form name="form1" method="post" action="custYouXiaoKeHu.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTk0MjgzMTE4OWRkyE+EK/2pMnP4XHP/Jmz95SZtqAo=" />
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
        <table>
            <tr>
                <td>
                    联系人
                </td>
                <td>
                    <input name="txtlianXiRenName" type="text" id="txtlianXiRenName" />
                </td>
                <td>
                    车牌号
                </td>
                <td>
                    <input name="txtChePaihao" type="text" id="txtChePaihao" />
                </td>
                <td>
                    车型代码
                </td>
                <td>
                    <input name="txtCheXingDaima" type="text" id="txtCheXingDaima" />
                </td>
                <td>
                    车主名称
                </td>
                <td>
                    <input name="txtCheZhu" type="text" id="txtCheZhu" />
                </td>
            </tr>
            <tr>
                <td>
                    车系
                </td>
                <td>
                    <input name="txtCheXi" type="text" id="txtCheXi" />
                </td>
                <td>
                    发动机号
                </td>
                <td>
                    <input name="txtFaDongJiHao" type="text" id="txtFaDongJiHao" />
                </td>
                <td>
                    车架号
                </td>
                <td>
                    <input name="txtCheJiaHao" type="text" id="txtCheJiaHao" />
                </td>
                <td>
                    协议单号
                </td>
                <td>
                    <input name="txtXieYiDanHao" type="text" id="txtXieYiDanHao" />
                </td>
            </tr>
            <tr>
                <td>
                    联系手机
                </td>
                <td>
                    <input name="txtLianXiMod" type="text" id="txtLianXiMod" />
                </td>
                <td>
                    维修单号
                </td>
                <td>
                    <input name="txtBillNo" type="text" id="txtBillNo" />
                </td>
                <td>
                    入厂日期
                </td>
                <td>
                    <input name="txtRuChangDate1" type="text" id="txtRuChangDate1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtRuChangDate2" type="text" id="txtRuChangDate2" class="easyui-datebox" />
                </td>
            </tr>
            <tr>
                <td>
                    出厂日期
                </td>
                <td>
                    <input name="txtCuChangDate1" type="text" id="txtCuChangDate1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtCuChangDate2" type="text" id="txtCuChangDate2" class="easyui-datebox" />
                </td>
                <td>
                    结算日期
                </td>
                <td>
                    <input name="txtJieSuanDate1" type="text" id="txtJieSuanDate1" class="easyui-datebox" />
                </td>
                <td>
                    至
                </td>
                <td>
                    <input name="txtJieSuanDate2" type="text" id="txtJieSuanDate2" class="easyui-datebox" />
                </td>
            </tr>
            <tr>
                <td>
                    维修类型
                </td>
                <td>
                    <input name="txtWeiXiuSort" type="text" id="txtWeiXiuSort" />
                </td>
                <td>
                    进店次数</td>
                <td>
                    <input name="txtJinDianCiShu1" type="text" id="txtJinDianCiShu1" />
                </td>
                <td>
                    至</td>
                <td>
                    <input name="txtJinDianCiShu2" type="text" id="txtJinDianCiShu2" />
                </td>
                <td>
                </td>
                <td>
                    <a onclick="return Search();" id="lnkbtnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a>
                       
       <a id="lnkExcel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkExcel','')">Excel</a>
                </td>
            </tr>
        </table>
        <div style=" width:100%; overflow:scroll; height:500px;">
        <table border="1" style="border:1px solid gray;border-collapse:collapse;">
            <tr>
                <th>
                    车牌号
                </th>
                <th>
                    销售日期</th>
                <th>
                    底盘号</th>
                <th>
                    手机号码
                </th>
                <th>
                    联系人</th>
                <th>
                    联系人电话</th>
                <th>
                    客户名称</th>
                <th>
                    联系人地址</th>
                <th>
                    最近里程数
                </th>
                <th>
                    车辆型号</th>
                <th>
                    厂牌
                </th>
                <th>
                    客户备注
                </th>
                <th>
                    进厂日期
                </th>
                <th>
                    行驶证初登
                </th>
                <th>
                    初次进厂日期
                </th>
                <th>
                    总维修次数</th>
                <th>
                    次数
                </th>
                <th>
                    ＰＤＳ次数</th>
                <th>
                    新车精品次数</th>
                <th>
                    自售车
                </th>
                <th>
                    结算总额
                </th>
                <th>
                    总工时费
                </th>
                <th>
                    总材料费
                </th>
                <th>
                    发动机号
                </th>
               
            </tr>
            
        </table>
        </div>
      <div>
    <!--分页代码start-->
    共0页 当前1页 跳到<input name="txtThisPage" type="text" value="1" id="txtThisPage" style="border:none;border-bottom:1px solid black;width:30px;" />
    <a onclick="return pageGo();" id="lnkPageGo" href="javascript:__doPostBack('lnkPageGo','')">转到</a>
    <!--分页代码end-->
    </div>

    </div>
    <input name="txtMaxPage" type="text" id="txtMaxPage" style="display:none;" />
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4920A6EB" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWGQKsuanTDwLgjNPqCQKkxr0FAo+U6oMDAvmMjbMKAtbP/M4CAvXYxaMDAv7y5L0OAq7L998IAqntoLgNAtr08I0OAp3MzIUPAoLjrvAEAvyj/O4PAqvooq8BAoijnu0JArfnxK0LAqCpyKEEAvfvvqsEAvfvgpoKApTm+7gDArzt6fYEAu+9zkoChb3BlwwC7pe+9ATz9Jk3WCrZKzwVcyx8gxPdWjWniQ==" />
</div></form>

    <script language="javascript" type="text/javascript">

        function pageGo() {
            var t = document.getElementById("txtThisPage");
            var myReg = /^\d+$/;
            var pageN = t.value;
            if (!myReg.test(pageN)) {
                alert("输入数字无效!请重新输入!");
                t.value = "";
                t.focus();
                return false;
            }

            if (parseFloat(t.value) < 1) { t.value = "1"; }

            if (parseFloat(t.value) > parseFloat(document.getElementById("txtMaxPage").value)) {
                t.value = document.getElementById("txtMaxPage").value;
            }

            return true;

        }
      
    </script>

</body>
</html>
