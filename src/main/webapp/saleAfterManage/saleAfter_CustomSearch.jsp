<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
    售后接车管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript">
    $(document).keydown(function (event) {
        //alert(event.keyCode);

        if (event.keyCode == 13) {
            __doPostBack('btnSearch','');
        }
    });
    $(function () { $("#queryValue").focus(); $("#queryValue").select(); });

</script>

<body>
    <form name="form1" method="post" id="form1">
      <div class="title"> 
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>维修管理</span>
        <span class="titleSpan">(维修接待)</span> 
         </td><td align="right">
          </td></tr>
         </table> 
     </div>
    
    <div style="margin-left:15px;" >
        <table border="0"  cellpadding="0" cellspacing="0">
         <tr>
         <td>
         <select name="queryField" id="queryField">
    <option selected="selected" value="txtCheLiangChePaiHao">按车牌号</option>
    <option value="txtCheLiangCheJiaHao">按车架号</option>
    <option value="txtLianXiRenName">按联系人</option>
    <option value="txtLianXiRenTel">联系人电话</option>
    <option value="txtCheZhuName">按车主名</option>

</select> </td>
         <td style="padding-left:5px">
         <input name="queryValue" type="text" maxlength="20" id="queryValue" style="width:150px;" />
         </td>
         <td>
         <a id="btnSearch" class="easyui-linkbutton" href="javascript:__doPostBack('btnSearch','')">查询</a>
         <a onclick="return cheLiangInfoShow();" id="LinkButton7" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton7','')">车辆信息</a>
         <a onclick="return cheLiangWeiXiuLiShiListShow();" id="LinkButton1" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton1','')">维修历史</a>
         <a onclick="return daoHangShow();" id="LinkButton6" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton6','')">维修接待</a>
         <a onclick="return addCheLiangInfo();" id="LinkButton4" class="easyui-linkbutton" href="javascript:__doPostBack('LinkButton4','')">新增车辆信息</a>
         
         </td>

         </tr>
        </table>
        <!--数据列表 start-->
        <div style="height:3px"></div>
        <table id="dg2"    class="easyui-datagrid"    style="height:380px;"  
         data-options="rownumbers:true,singleSelect:true,
         pagination:true,
         pageNumber:1,
         pageSize:20,
         onDblClickRow:customJieDai"
          >
        <thead>
            <tr>
                <th  data-options="field:'txtCustId',checkbox:true"></th>
                <th  data-options="field:'txtVehicleId',hidden:true">车辆Id</th>
                <th  data-options="field:'txtCheLiangChePaiHao',width:80">车牌号码</th>              
                
                <th  data-options="field:'ddlCheLiangZhiZaoShang',width:120">车辆品牌</th>
                <th  data-options="field:'ddlCheLiangCheXi',width:70">车系名称</th>
                <th  data-options="field:'txtCheLiangCheJiaHao',width:140" >车架号码</th>
                <th  data-options="field:'txtLianXiRenName',width:120">联系人名称</th>
                <th  data-options="field:'txtLianXiRenTel',width:120">联系人电话</th>
                <th  data-options="field:'txtCheZhuName',width:120">车主名称</th>
                <th  data-options="field:'txtHuiYuanHao',width:120">会员号码</th>
                <th  data-options="field:'txtHuiYuanDengJi',width:120">会员级别</th>                
                 
            </tr>
        </thead>
    </table>
        <!--数据列表 end-->
     </div>

     <!--维修历史 接待提醒 预约明细 start-->
     <div>
      
     </div>
     <!--维修历史 接待提醒 预约明细 end--> 

     <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
     <input name="txtPageSize" type="text" value="20" id="txtPageSize" style="display:none;" />
      
    
<div>

</div></form>

    <script language="javascript" type="text/javascript" >
		function __doPostBack(eventTarget, eventArgument) {
			if(eventTarget=='btnSearch'){
				$("#form1").form('submit', {
					url : "customerSearch.action",
					success : function(jsonStr) {
						setupDatagrid(jsonStr);
					}
				});				
			}
		}
		
        //分页satrt
        function setupDatagrid(jsonStr){
			jsonStrData = $.parseJSON(jsonStr);
            $('#dg2').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        }


        function pagerFilter(data) {
            if (typeof data.length == 'number' && typeof data.splice == 'function') {   // is array
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
                    //alert("当前页:" + pageNum);
                    $("#txtPageNum").val(pageNum);
                    $("#txtPageSize").val(pageSize);

                    //alert("页面尺寸:" + pageSize);

                    __doPostBack('btnSearch', '');
                    dg.datagrid('loadData', jsonStrData);
                }
            });
            if (!data.originalRows) {
                data.originalRows = (data.rows);
            }
            var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
            var end = start + parseInt(opts.pageSize);
            data.rows = (data.originalRows.slice(0, 100));
            return jsonStrData;
        }
        //分页end

        function getCheck() {
            var row = $('#dg2').datagrid('getSelected');
            if (row) { return row.txtVehicleId; }
            else {
                return "";
            }
        }


        //车辆信息查看
        function cheLiangInfoShow() {
            var vehicleId = getCheck();
            if (vehicleId != "") {
                //parent.winopen('../customManage/customAdd.aspx?custId=' + cusId + "&d=" + new Date(), '客户信息修改', 970, 600, true, true, false);
                z = window.open('../customManage/customNewVehicleAdd.action?vehicleId=' + vehicleId + "&d=" + new Date(), '车辆信息修改', 'height=600, width=970, top=' + (screen.availHeight - 620) + ', left=' + screen.availWidth - 720 + ', toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
                z.focus();
             }
            return false;
        }

        //车辆信息新增
        function addCheLiangInfo() {
            //parent.winopen('../customManage/customAdd.aspx?&d=' + new Date(),'新增车辆信息', 970, 600, true, true, false);
            z = window.open('../customManage/customNewAdd.action?d=' + new Date(), '新增客户信息', 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no, status=no')
            z.focus();
            return false;
        }

        //车辆维修历史列表查询
        function cheLiangWeiXiuLiShiListShow() {
            var row = $('#dg2').datagrid('getSelected');
            var vin = row.txtCheLiangCheJiaHao;
            vin = vin.substring(0, 17);//车架号码只去前17位
            if (vin != "") {
                //  parent.winopen('../saleAfterManage/saleAfter_weiXiuLiShiList.aspx?cusId='+cusId+'&d=' + new Date(), '维修历史查看', 970, 600, true, true, false);
                  z = window.open('../saleAfterManage/saleAfter_weiXiuLiShiList.aspx?vin=' + vin + '&d=' + new Date(), '维修历史查看', 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no')
                  z.focus();
              }
            return false;
        }



        //预约
        function daoHangShow() {
         var vehicleId = getCheck();
         if (vehicleId != "") {
            // parent.winopen('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.action?cusId=' + cusId + '&d=' + new Date(), '系统转向', 990, 600, true, true, false);
             z = window.open('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.action?vehicleId=' + vehicleId + '&d=' + new Date(), '系统转向', 'height=600, width=790, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no')
             z.focus();
         }
            return false;
        }


        function changeMenu() {
            //location.href = "tabTest.htm";
           //parent.winopen('../saleAfterManage/tabTest.htm?cc=.aspx?j=0' + "&d=" + new Date(), '工单制作', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/tabTest.htm?cc=.aspx?j=0' + "&d=" + new Date(), '工单制作', 'height=600, width=990, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();
        }


        //客户接待
        function customJieDai(index) {
            var vehicleId = $('#dg2').datagrid('getRows')[index]['txtVehicleId'];
           // parent.winopen('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.action?cusId='+cusId+'&d=' + new Date(), '系统转向', 990, 600, true, true, false);
            z = window.open('../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.action?vehicleId=' + vehicleId + '&d=' + new Date(), '系统转向', 'height=600, width=790, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();
            return false;
        }
    </script>

</body>
</html>