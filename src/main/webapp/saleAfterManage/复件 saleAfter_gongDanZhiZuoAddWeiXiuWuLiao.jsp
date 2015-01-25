<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	维修物料新增
</title>
    <style type="text/css">
     td
     {
     	height:25px;
     	}
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<base target="_self" />
<body>
    <form name="form1" method="post" action="saleAfter_gongDanZhiZuoAddWeiXiuWuLiao.aspx?type=yuYueManage&amp;saleAfterGuid=0fa6bbde-a9ad-4e80-8eb3-14006f387ff2&amp;d=Mon+Jan+05+2015+15%3a23%3a18+GMT+0800" id="form1">

    <div style="margin-top:5px;margin-left:5px;margin-right:3px;">
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(维修物料新增)</span> 
         </td><td align="right">
           </td></tr>
      </table> 

       <table border="0" cellpadding="0" cellspacing="0" >
         <tr>         
         <td>商品编码:</td>
         <td><input name="txtShopId" type="text" maxlength="10" id="txtShopId" /> </td>
         <td>商品名称:</td>
         <td><input name="txtShopName" type="text" maxlength="10" id="txtShopName" /> </td>
          <td>适用车型:</td>
         <td>
         <input name="txtShiYongCheXing" type="text" maxlength="10" id="txtShiYongCheXing" />
         </td> 
         </tr>
         <tr>
         
          <td>所属帐套:</td>
         <td><select name="ddlSuoShuZhangTao" id="ddlSuoShuZhangTao" style="width:135px;">
	<option value="正常维修">正常维修</option>
	<option value="厂家保修">厂家保修</option>
	<option value="大客户(月结)">大客户(月结)</option>
	<option value="保险">保险</option>
	<option value="保险自付">保险自付</option>
	<option value="内结">内结</option>
	<option selected="selected" value=""></option>

</select></td>       
         <td></td>
         <td></td>
         <td>
          <a id="lnkBtnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkBtnSearch','')">查询</a>
         </td>
         </tr>


       </table>
       <table border="1" cellpadding="0" cellspacing="0"   style="border-collapse:collapse;border:1px solid gray;width:100%" >
        
        
         <tr>
         <td>NO.</td><td>商品编号</td>
         <td>商品名称</td><td>单位</td>
         <td>商品区分</td><td>销售价</td>
         <td>需求数</td>
         <td>库存数</td>
         <td></td>
         </tr>
         
         <tr id="1" onclick=insertWeiXiuWuLiao(1,'8666a92f-9a4e-441d-8799-b75cc5fa41fb') >
         <td style="text-align:center;">1</td>
         <td>000 817 10 16</td>
         <td>中网标志</td>
         <td>全部</td>
         <td></td>
         <td>493.00</td>
         <td><input type='text' class="easyui-numberbox" style="width:60px;" value="1" data-options="precision:2"  id='1Num' /></td>
         <td>0.00</td>
         <td></td>
         </tr>
       </table>
    </div>
</form>
    
    <script language="javascript" type="text/javascript" >

        function insertWeiXiuWuLiao(trId, shopThisId) {
             var saleAfterGuid = "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2";
            var num = $("#" + trId + "Num").val();

            if ("yuYueManage" == "yuYueManage") {
                $.get("saleAfter_yuYueExec.aspx?d="+new Date(), {
                    type: "weiXiuWuLiaoInsert",
                    yuYueGuid: "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2",
                    shopThisId: shopThisId,
                    num: num
                }, function (data) {
                    if (data == "ok") {
                        $("#" + trId).css("display", "none");
                    }
                });

            } else {

                if ($("#ddlSuoShuZhangTao").val() == "") { alert('维修帐套未选择！'); return false; }

                $.get("saleAfter_gongDanZhiZuoExec.aspx?d="+new Date(), {
                    type: "weiXiuWuLiaoInsert",
                    saleAfterGuid: "0fa6bbde-a9ad-4e80-8eb3-14006f387ff2",
                    shopThisId: shopThisId,
                    zhangTao:$("#ddlSuoShuZhangTao").val(),
                    num: num
                }, function (data) {
                    if (data == "ok") {
                        if (window.opener != null) {
                            window.opener.pageLoad();
                            window.opener.focus();
                        }
                        $("#" + trId).css("display", "none");
                    }
                });
            }

        }

    </script>

</body>
</html>