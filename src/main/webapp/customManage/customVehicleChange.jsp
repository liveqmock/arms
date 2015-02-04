<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><title>
  车辆重新绑定
</title><link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=20130306" />
    <script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> 
    <script src="../js/birthDate.js?a=123" type="text/javascript"></script> 
    <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <style type="text/css">
    td,div
    {
    font-size:12px;
    }
    input
    {
  border:none;
  width:125px;
  }
    td
    {
  height:30px;
  border:1px solid #9a9a9a;
  padding-left:2px;
  }
  
    </style>
</head>
<body>
    <form name="form1" method="post" action="customVehicleChange.action" id="form1">
    <div id="aDiv" style="margin:2 0 0 5;" >
     <br />
     <span style="font-weight:bold;font-size:12px;color:Red;">选择历史车辆(每次只显示10条记录)</span>
        <table border="0" cellpadding="0" cellspacing="0" width="900px"  style="border-collapse:collapse;border:1px solid #9a9a9a" >
         <tr> 
        <%--  <td style="width:70px;">客户类型:</td><td><s:property value="customer.ddlCustSort"/></td> --%>
         <td  style="width:70px;">车主名称:</td><td style="width:300px;"><a href='#' onclick=backCustom() ><s:property value="customer.txtCheZhuName"/></a></td>
         <td  style="width:70px;">车主电话:</td>
         <td><s:property value="customer.txtCheZhuTel"/></td>
         </tr>
         <tr>
         <td>证件类型:</td><td><s:property value="customer.ddlCheZhuCardSort"/></td>
         <td>证件号码:</td><td><s:property value="customer.txtCheZhuCardNo"/></td>
         <td>车主手机:</td><td><s:property value="customer.txtCheZhuMob"/></td>
         </tr>
         <tr>
         <td>地址:</td>
         <td colspan="3"><s:property value="customer.txtLianXiRenAdd"/></td>
         <td></td>
         <td></td>
         </tr>
      </table>
    
        <br />
       <!--查询车辆信息-->
         <table border="0"  cellpadding="0" cellspacing="0" width="900px"   style="border-collapse:collapse;border:1px solid #9a9a9a"  >
          <tr><input name="custId" type="hidden" value="<s:property value='customer.txtCustId'/>" id="custId" />
          <td>车牌号码:</td><td><input name="txtCheLiangChePaiHao" type="text" value="<s:property value='query.txtCheLiangChePaiHao'/>" maxlength="10" id="txtCheLiangChePaiHao" /></td>
          <td>车系:</td><td><input name="ddlCheLiangCheXi" type="text" value="<s:property value='query.ddlCheLiangCheXi'/>" maxlength="20" id="ddlCheLiangCheXi" /></td>
          <td>车架号码:</td><td><input name="txtCheLiangCheJiaHao" type="text" value="<s:property value='query.txtCheLiangCheJiaHao'/>" maxlength="17" id="txtCheLiangCheJiaHao" /></td>
          <td>
          <a id="lnkbtnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkbtnSearch','')">查询</a>
          </td>
          </tr>
          <tr>
          <td>车主名称:</td><td><input name="txtCheZhuName" type="text" value="<s:property value='query.txtCheZhuName'/>" maxlength="20" id="txtCheZhuName" /></td>
          <td>车主电话:</td><td><input name="txtCheZhuTel" type="text" value="<s:property value='query.txtCheZhuTel'/>" maxlength="20" id="txtCheZhuTel" /></td>
          <td></td><td></td>
          <td></td>
          </tr>
         
          <tr>
          <td colspan="7" style="color:Blue;font-size:12px;font-weight:bold;">列表数据[↓]</td>
          </tr>
           <!--绑定列表数据 start-->
           <tr>
           <td>车主</td><td>车主电话</td><td>车牌号码</td>
           <td>车系</td><td>车架号码</td><td>购车日期</td>
           <td></td>
           </tr>

           <s:iterator value="customVehicleLst"> 
           <tr>
           <td><s:property value="txtCheZhuName"/></td><td><s:property value="txtCheZhuTel"/></td><td><s:property value="txtCheLiangChePaiHao"/></td>
           <td><s:property value="ddlCheLiangCheXi"/></td><td><s:property value="txtCheLiangCheJiaHao"/></td><td><s:property value="txtGouCheDate"/></td>
           <td><a href='#' onclick=addChangeInfo('<s:property value="txtVehicleId"/>') >绑定车辆</a></td>
           </tr>
           </s:iterator>         

           <!--绑定列表数据 end-->

         </table>

    </div>


    </form>

    <script language="javascript" type="text/javascript" >	
		function __doPostBack(eventTarget, eventArgument) {
			$("#form1").submit();
		}
	
		function addChangeInfo(vehicleId) {
			$.post("changeCarOwner.action?d=" + new Date(),
			{
				"txtVehicleId": vehicleId,
				"txtCustId":'<s:property value="customer.txtCustId"/>'
			}, 
			function(result) { 
				if (result.statusCode == "success") {
					alert('转换成功!');
				}
			},
			"json");
		}

        function backCustom() {
             var txtCustId = '<s:property value="customer.txtCustId"/>';
            location.href = "customNewAdd.action?showSort=3&custId="+txtCustId+"&d="+new Date();
        }

    </script>
</body>
</html>