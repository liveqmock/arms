<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	工单制作新增维修项目
</title>
    <style type="text/css" >
      td
      {
          white-space:nowrap;
          }
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
    <script language="javascript" type="text/javascript" >

        var tmp = '#FFFFFF';
        $(function () {
            $('tr').mouseover(function () {
                tmp = this.style.backgroundColor;
                this.style.backgroundColor = '#eaf2ff';
            });

            $('tr').mouseout(function () {
                this.style.backgroundColor = tmp;
            });
        });

    
      
    </script>
<body>
    <form name="form1" method="post" id="form1">
    <div style="margin-top:5px;margin-left:5px">
        <table border="0" style="width:700px;border-bottom:1px solid #b8b8b8;"  >
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(维修项目新增)</span> 
         </td><td align="right">
           </td></tr>
         </table> 

       <table border="0" >
       <tr>
        <td>项目编号:</td>
        <td><input name="txtWeiXiuXiangMuBianHao" type="text" maxlength="30" id="txtXiangMuBianHao" style="width:150px;" /> </td>
        <td>维修工段:</td>
        <td><select name="ddlSuoShuGongDuan" id="ddlWeiXiuGongDuan" style="width:150px">
	<option value="机电">机电</option>
	<option value="保养">保养</option>
	<option value="钣金">钣金</option>
	<option value="美容">美容</option>
	<option value="喷漆">喷漆</option>
	<option selected="selected" value=""></option>

</select>  </td>
         <td>维修内容:</td>
        <td><input name="txtWeiXiuNeiRong" type="text" id="txtWeiXiuNeiRong" style="width:160px;" /></td>
       
        <td>
          <a id="lnkSearch" class="easyui-linkbutton" href="javascript:searchWeiXiuXiangMu()">查询</a>
        </td> 
       </tr>
       </table>
       <!--数据列表 satrt-->
       <table border="1" cellpadding="0" cellspacing="0"   style="border-collapse:collapse;border:1px solid gray;width:700px;" >
           <tr style="height:23px;">
           <td width="80px">维修编号</td><td width="30px">工段</td><td width="30px">工时</td>
           <td width="250px">维修内容</td> 
           </tr>
           
           <s:iterator value="weiXiuXiangMuLst" status="status">
           <tr id='<s:property value="#status.count" />' style="height:23px;" onclick=insertWeiXiuXiangMu('<s:property value="#status.count" />','<s:property value="txtWeiXiuXiangMuBianHao" />','<s:property value="ddlSuoShuGongDuan" />','<s:property value="txtGongShi" />','<s:property value="txtWeiXiuNeiRong" />') >
           <td><s:property value="txtWeiXiuXiangMuBianHao" /></td>
           <td><s:property value="ddlSuoShuGongDuan" /></td>
           <td><s:property value="txtGongShi" /></td>
           <td><s:property value="txtWeiXiuNeiRong" /></td>
           </tr>
           </s:iterator>
           
       </table> 
       <!--数据列表 end-->
    </div>
    </form>
    
    <script language="javascript" type="text/javascript" >
         var saleAfterGuid = '<s:property value="saleAfterGuid" />';		 

        function searchWeiXiuXiangMu(){
			$("#form1").form('submit', {
				url : "saleAfterGongDanZhiZuoAddWeiXiuXiangMu.action?saleAfterGuid=" +saleAfterGuid+ "&d=" + new Date()
			});	
        }
		 
        function insertWeiXiuXiangMu(trId, bianHao, gongDuanName, gongShi, weiXiuNeiRong)        {
			//工单制作
			$.post("AddGongDanWeiXiuXiangMu.action?d=" + new Date(), {
				"saleAfterGuid": saleAfterGuid,
				"txtWeiXiuXiangMuBianHao": bianHao,
				"ddlSuoShuGongDuan": gongDuanName,
				"txtGongShi": gongShi,
				"txtWeiXiuNeiRong": weiXiuNeiRong
			}, function (data) {
				if (data.statusCode == "success") {
					if (window.opener != null) {
						window.opener.pageLoad();
						window.opener.focus();
					} 
                    $("#" + trId).css("display", "none");
				}else{
					alert("添加工单维修项目信息失败");
				}
			}, "json");
        }
reload();
    </script>

</body>
</html>