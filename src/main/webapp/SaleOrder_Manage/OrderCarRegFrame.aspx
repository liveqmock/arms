
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	纳税申报
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script type="text/javascript">

    function ShowOrder_Query() {
        var href = "SaleOrder_OrderInfo_Query.aspx?Order_Status=110&&syauto=" + new Date() + "";
        //此处定单状态需要为“开票确认状态”
        var SizeZ = 'dialogWidth:1000px;dialogHight:800px;center:yes;edge:sunken;help:no;resizable:no;scroll:no;status:no;';
        var returnValue = window.showModalDialog(href, '', SizeZ);
        if (returnValue != undefined && returnValue.length > 0) {
            document.getElementById("hidOrderIdTemp").value = returnValue;
            return true;
        }
        return false;
    }
    $(function () {
        $('#tt').tabs({
            onSelect: function (title, content) {
                var pp = $('#tt').tabs('getSelected');
                if (pp.panel('options').content == null) {
                    pp.panel('options').content = " <iframe  class=\"tabDefault\" style='width:100%;height:100%;' frameborder='0'  src='" + pp.panel('options').id + "'></iframe>";
                    pp.panel('refresh');
                }
            }
        });
    });

</script>
<body>
    <div align="center" id="tt" class="easyui-tabs" style="height: 760px;">
        <div  title="车辆购置纳税申报" id="SaleOrder_Print_NaShuiShenBao.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4">
        </div>
        <div title="刑侦验车登记" id="SaleOrder_Print_XingZhenYanChe.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4">
        </div>
        <div title="机动车注册申请" id="SaleOrder_Print_CheLiangZhuCe.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4">
        </div>
        <div title="机动车注册登记" id="SaleOrder_Print_ZhuCeDengJi.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4">
        </div>
        <div title="同城速递委托受理登记" id="SaleOrder_Print_TongChengSuDi.aspx?OrderID=bb48b67f-fabd-44b6-92ea-5e424a1c79b4">
        </div>
    </div>
    <input name="hidOrderIdTemp" type="hidden" id="hidOrderIdTemp" />
    <input name="hidOrderIDSeleted" type="hidden" id="hidOrderIDSeleted" />
</body>
</html>