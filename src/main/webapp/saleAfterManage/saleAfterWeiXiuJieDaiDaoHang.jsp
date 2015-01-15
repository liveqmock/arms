<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	维修接待导航
</title>
    <style type="text/css">
        td
        {
            white-space:nowrap;
            }
    #tb1  td
     {
     	height:28px; 
     	}
    #tbWeiXiuList td
    {
    	white-space:nowrap;
    	}
    </style>
 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('#tbWeiXiuList tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('#tbWeiXiuList tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });
 
</script>



<body>
    <form name="form1" method="post" id="form1">
    <div style="margin-top:20px;margin-left:20px;">
      <table id="tb1" border="0" cellpadding="0" cellspacing="0" width="750px">
       <tr>
       <td>客户名：</td>
       <td><input name="txtCustName" type="text" value="<s:property value='customer.txtCheZhuName' />" readonly="readonly" id="txtCustName" /> </td>
       <td>联系人：</td>
       <td><input name="txtLianXiRenName" type="text" value="<s:property value='customer.txtCheZhuName' />" readonly="readonly" id="txtLianXiRenName" /> </td>
       <td style="width:100px;">联系人电话：</td>
       <td style="width:160px;"><input name="txtLianXiRenMob" type="text" value="<s:property value='customer.txtLianXiRenTel' />" readonly="readonly" id="txtLianXiRenMob" style="width:130px;" /> </td>


       <td rowspan="8" style="padding-left:2;vertical-align:top;">
           <!--RGVIP start--><!--RGVIP end-->

       </td>


       </tr>
       <tr>
       <td>车牌号：</td>
       <td><input name="txtChePaiHao" type="text" value="<s:property value='customer.txtCheLiangChePaiHao' />" readonly="readonly" id="txtChePaiHao" /> </td>
       <td>车架号码：</td>
       <td><input name="txtCheJiaHaoMa" type="text" value="<s:property value='customer.txtCheLiangCheJiaHao' />" readonly="readonly" id="txtCheJiaHaoMa" /> </td>
       </tr>

       <tr>
       <td>车系：</td>
       <td><input name="txtCheXi" type="text" value="<s:property value='customer.ddlCheLiangCheXi' />" readonly="readonly" id="txtCheXi" /> </td>
       <td style="width:80px;">车身颜色：</td>
       <td><input name="txtCheShenYanSe" type="text" value="<s:property value='customer.ddlCheShenColor' />" readonly="readonly" id="txtCheShenYanSe" /> </td>
       <td colspan="2" style="color:Red;font-weight:bold;">
        
       </td> 
        
       </tr>
       <tr>
       <td style="width:80px;">联系人地址:</td>
       <td colspan="5" style="width:620px"><input name="txtLianXiRenAdd" type="text" value="<s:property value='customer.txtLianXiRenAdd' />" readonly="readonly" id="txtLianXiRenAdd" style="width:100%;" /> </td>
       </tr>
       <tr>
       <td>驾照日期：</td>
       <td><input name="txtJiaZhaoDate" type="text" value="<s:property value='customer.txtLianXiRenJiaZhaoDate' />" readonly="readonly" id="txtJiaZhaoDate" /> </td>
       <td>购车日期：</td>
       <td><input name="txtGouCheDate" type="text" value="<s:property value='customer.txtGouCheDate' />" readonly="readonly" id="txtGouCheDate" /> </td>
       <td>投保日期：</td>
       <td><input name="txtChuXianDate" type="text" value="<s:property value='customer.txtBaoXianDate' />" readonly="readonly" id="txtChuXianDate" style="width:100%;" /> </td>
       </tr>

       <tr>
       <td colspan="6" height="6px"></td>
       </tr>
       <tr>
       <td colspan="2" align="center">
       <div style="border:1px dashed gray;width:180px;height:180px;text-align:center;">
       </div>
       </td>
       
       <td colspan="2" align="center">
       <div style="border:1px dashed gray;width:180px;height:180px;text-align:center;">
       <br />
       <a onClick="return saleAfterShow();" id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">维修接待</a>
       </div>
       
       </td>

       <td colspan="2" align="center">
       <div style="border:1px dashed gray;width:180px;height:180px;text-align:center;">
       </div>
       </td>


       </tr> 
      </table>      
    
    维修信息列表(前5条)
    <!--维修列表 start-->
     <table border="1" id="tbWeiXiuList" cellpadding="0" cellspacing="0" width="700px" style="border-collapse:collapse;border:1px solid gray;">
       
        <tr>
        <td>工单号</td><td>协议单号</td><td>车牌号</td><td>服务顾问</td><td>联系人</td>
        <td></td><td>车系</td><td>单据状态</td><td>接车日期</td>
        </tr>
        
        <tr onclick=saleAfterLiShiShow('c2c6e440-1f8a-424e-b484-91d55db56289','已出库')>
        <td>JDD20150102013</td><td>SL0X15013546</td><td>粤B2G1E9</td>
        <td >张先赞</td><td>吴月梅</td>
        <td >13926586569[定保]</td><td>RX270</td>
        <td >已出库</td><td>2015-1-2 12:21:33</td>
        </tr>
        
       

     </table>
    <!--维修列表 end-->
    
    </div>
 </form>

    <script language="javascript" type="text/javascript" >

        //预约单转向

        //维修单
        function saleAfterShow() {
            //parent.winopen('../saleAfterManage/saleAfterIndex.action?cusId=3901db63-9379-4ef2-8ace-67bf172a5559&d=' + new Date(), '维修接待', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/saleAfterIndex.action?vehicleId=<s:property value="customer.txtVehicleId" />&d=' + new Date(), '维修接待', 'height=600, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();

            window.opener = null;
            window.close();
            return false;
        }


       //查看维修历史信息
        function saleAfterLiShiShow(saleAfterGuid,busiStatus) {
            //parent.winopen('../saleAfterManage/saleAfterIndex.action?saleAfterWeiXiuGuid='+saleAfterGuid+'&d=' + new Date(), '维修历史查看', 990, 600, true, true, false);

            var z;
            if (busiStatus != '已出库') {
                z = window.open('../saleAfterManage/saleAfterIndex.action?saleAfterWeiXiuGuid=' + saleAfterGuid + '&d=' + new Date(), '维修历史查看', 'height=600, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            } else {
                z = window.open('../saleAfterManage/saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.aspx?saleAfterGuid=' + saleAfterGuid + '&d=' + new Date(), '维修历史查看', 'height=900, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            }
            z.focus();

            window.opener = null;
            window.close();
            return false;
        }

        //转向预约
        function yuYue() {
            // parent.winopen('../saleAfterManage/saleAfter_yuYueMain.aspx?cusId=3901db63-9379-4ef2-8ace-67bf172a5559&d=' + new Date(), '维修预约', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/saleAfter_yuYueMain.aspx?vehicleId=3901db63-9379-4ef2-8ace-67bf172a5559&d=' + new Date(), '维修预约', 'height=600, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();

            window.opener = null;
            window.close();
            return false;
         
        }


        //转向预约列表
        function showYuYue() {
            //parent.winopen('../saleAfterManage/saleAfter_yuYueListByCusId.aspx?cusId=3901db63-9379-4ef2-8ace-67bf172a5559&d=' + new Date(), '预约明细列表', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/saleAfter_yuYueListByCusId.aspx?vehicleId=3901db63-9379-4ef2-8ace-67bf172a5559&d=' + new Date(), '预约明细列表', 'height=600, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();

            window.opener = null;
            window.close();
            return false;
        }


        //转向配件订货
        function storeOtherOrder() {
            z = window.open('../storeOtherManage/storeOtherOrderBill.aspx?busiType=customManage&busiGuid=3901db63-9379-4ef2-8ace-67bf172a5559&d=' + new Date(), '配件订货', 'height=600, width=990, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();

            window.opener = null;
            window.close();
            return false;
        }


        //转向配件订货列表
        function showStoreOtherOrderList(custGuid) {
            z = window.open('../storeOtherManage/storeOtherOrderBillManageSelf.aspx?custGuid=' + custGuid + '&d=' + new Date(), '配件订货查看', 'height=600, width=1200, top=100, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
            z.focus();

            window.opener = null;
            window.close();
            return false;

        }

    </script>


</body>
</html>