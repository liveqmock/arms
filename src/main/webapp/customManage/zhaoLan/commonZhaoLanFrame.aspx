
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style>
    table
    {
        border-collapse: collapse;
    }
</style>
<script type="text/javascript">
    $(function () {
        var gruid;
        $("#btnUp").click(function () {
            gruid = window.opener.upPage(); 
            if (gruid.length == 3) {
                $("#ifrmeLianXiRenInfo")[0].src = "../customInfo/LianXiRenInfo.aspx?vehicleId=" + gruid[2] + "&cusGuid=" + gruid[0] + "&saleAfterGuid=" + gruid[1];
                $("#ifrmeLianXFrame")[0].src = "../customInfo/LianXFrame.aspx?vehicleId=" + gruid[2] + "&cusGuid=" + gruid[0] + "&saleAfterGuid=" + gruid[1];
                $("#iframeZhaoLanTianXie")[0].src = "../zhaoLan/ZhaoLanTianXie.aspx?Type=定期招揽&vehicleId=" + gruid[2] + "&cusGuid=" + gruid[0] + "&saleAfterGuid=" + gruid[1];
            }
        });
        $("#btnDown").click(function () {
            gruid = window.opener.downPage();
            if (gruid.length == 3) {
                $("#ifrmeLianXiRenInfo")[0].src = "../customInfo/LianXiRenInfo.aspx?vehicleId=" + gruid[2] + "&cusGuid=" + gruid[0] + "&saleAfterGuid=" + gruid[1];
                $("#ifrmeLianXFrame")[0].src = "../customInfo/LianXFrame.aspx?vehicleId=" + gruid[2] + "&cusGuid=" + gruid[0] + "&saleAfterGuid=" + gruid[1];
                $("#iframeZhaoLanTianXie")[0].src = "../zhaoLan/ZhaoLanTianXie.aspx?Type=定期招揽&vehicleId=" + gruid[2] + "&cusGuid=" + gruid[0] + "&saleAfterGuid=" + gruid[1];
            }
        })


    });

</script>
<body>
    <form name="form1" method="post" action="commonZhaoLanFrame.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&amp;&amp;num&amp;&amp;saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7&amp;TaskId=&amp;Type=%u5b9a%u671f%u62db%u63fd&amp;d=Thu+Jan+08+2015+14%3a42%3a43+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTIwOTIwNDMzMWRk6YAxBGeX8rAP2KCNN+Y+o/Dkvjg=" />
</div>

    <div>
        <iframe id="ifrmeLianXiRenInfo" src="../customInfo/LianXiRenInfo.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&&saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7"
            style="width: 100%; height: 160px; border: 0;"></iframe>
        <iframe id="ifrmeLianXFrame" src=" ../customInfo/LianXFrame.aspx?vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&&saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7"
            style="width: 100%; height: 200px; border: 0;"></iframe>
    </div>
    <span style="font-weight: 600; font-size: 11pt; color: #CDCDDD;">填写信息</span>
    <div>
        <iframe id="iframeZhaoLanTianXie" src=" ../zhaoLan/ZhaoLanTianXie.aspx?Type=定期招揽&vehicleId=15055ad5-3292-4d6d-ba2e-ecc3c4694611&cusGuid=15055ad5-3292-4d6d-ba2e-ecc3c4694611&&saleAfterGuid=fd3fc187-5b4f-459e-9036-55f9eda0e0b7"
            style="width: 100%; height: 200px; border: 0;"></iframe>
        <table style="width: 100%">
            <tr>
                <td>
                </td>
                <td>
                    <input type="button" id="btnUp" value="上一条" />
                </td>
                <td>
                </td>
                <td>
                </td>
                <td style="text-align: right">
                    <input type="button" id="btnDown" value="下一条" />
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    <div id="treeboxbox_tree" style="width: 183px; height: 200px; z-index: 11; background-color: #f5f5f5;
        border: 1px solid Silver; overflow: auto; display: none;">
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A806C23E" />
</div></form>
</body>
</html>