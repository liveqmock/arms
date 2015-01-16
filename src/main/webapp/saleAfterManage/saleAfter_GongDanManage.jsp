<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


 <head>
    <title>售后管理</title>

    <style type="text/css" >
    #searchTb tb
    {
      white-space:nowrap;
      }
     
    </style>

  <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>


<body>
    <form name="form1" method="post" action="saleAfterGongDanManage.action" id="form1">

    <div class="allRegion"> 
     <div class="title"> 
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(接待中)</span> 
         </td><td align="right">
          <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
         <div class="region">
     <table id="dg"    class="easyui-datagrid"    style="height:550px;" 
      data-options="
        rownumbers:true,
        singleSelect:true,
        autoRowHeight:false,
        pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
        pageSize:15,onClickRow:billShow"
      >
    <thead>
      <tr>
                <th  data-options="field:'txtGongDanId',checkbox:true"></th>
                <th  data-options="field:'txtBillNo',width:120" sortable="true">工单号</th>
                <th  data-options="field:'txtXieYiBillNo',width:120">协议单号</th>
                <th  data-options="field:'txtGongDanStatus',width:80">当前状态</th>
                <th  data-options="field:'ddlWeiXiuSort',width:80">维修类型</th>                
                <th  data-options="field:'txtFuWuUserId',width:70">服务顾问</th>
                <th  data-options="field:'txtChePaiHao',width:80">车牌号</th>
                <th  data-options="field:'txtCheXiName',width:120" sortable=true>车系名称</th>
                <th  data-options="field:'txtCheZhuName',width:80">车主名称</th>
                <th  data-options="field:'txtCheZhuTel',width:120">车主电话</th>
                <th  data-options="field:'txtRuChangDate',width:120">入厂时间</th>
                <th  data-options="field:'txtYuChuChangDate',width:120">预出厂时间</th> 
                <th  data-options="field:'txtJieSuanDate',width:120">结算时间</th>
                <th  data-options="field:'txtChuChangDate',width:120">出厂时间</th> 
       
            </tr>
    </thead>
  </table>
      </div>

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />

       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;overflow:scroll;">
    <table border='0' id="searchTb" >
     <tr>
      <td nowrap>入厂时间:</td><td><input name="txtRuChangDate1" type="text" id="txtRuChangDate1" class="easyui-datebox" /> </td>
      <td nowrap><input name="txtRuChangDate2" type="text" id="txtRuChangDate2" class="easyui-datebox" /> </td>
      <td nowrap>工单号:</td><td><input name="txtBillNo" type="text" maxlength="30" id="txtBillNo" /> </td>     
      <td nowrap>协议单号:</td><td><input name="txtXieYiBillNo" type="text" maxlength="60" id="txtXieYiBillNo" /> </td>
      <td nowrap>车架号:</td><td><input name="txtVin" type="text" maxlength="30" id="txtVin" /> </td>
      <td nowrap>工单状态:</td><td>
       <select name="txtGongDanStatus" id="txtGongDanStatus">
  <option selected="selected" value=""></option>
  <option value="已出库">已出库</option>
  <option value="财务收款中">财务收款中</option>
  <option value="已竣工">已竣工</option>
  <option value="等待派工">等待派工</option>
  <option value="维修中">维修中</option>
  <option value="接待中">接待中</option>

</select>
      </td><td nowrap>维修类别:</td>
      <td>
      <select name="ddlWeiXiuSort" id="ddlWeiXiuSort">
  <option value="一般维修">一般维修</option>
  <option value="年审">年审</option>
  <option value="首保">首保</option>
  <option value="定保">定保</option>
  <option value="大客户">大客户</option>
  <option value="厂家保修">厂家保修</option>
  <option value="保险">保险</option>
  <option value="新车检查">新车检查</option>
  <option value="免检">免检</option>
  <option value="返修">返修</option>
  <option selected="selected" value=""></option>

</select>
      </td>
     </tr>
     <tr>
      <td nowrap>出厂时间:</td><td><input name="txtChuChangDate1" type="text" id="txtChuChangDate1" class="easyui-datebox" /> </td>
      <td><input name="txtChuChangDate2" type="text" id="txtChuChangDate2" class="easyui-datebox" /> </td>
       <td nowrap>车牌号:</td><td><input name="txtChePaiHao" type="text" maxlength="10" id="txtChePaiHao" /> </td>
      <td nowrap>车主名:</td><td><input name="txtCheZhuName" type="text" maxlength="60" id="txtCheZhuName" /> </td>
      <td nowrap>车主电话:</td><td><input name="txtCheZhuTel" type="text" maxlength="18" id="txtCheZhuTel" /> </td>
      <td nowrap>服务顾问:</td><td><select name="txtFuWuUserId" id="txtFuWuUserId" style="width:130px">
  <option value="唐雷">唐雷</option>
  <option value="刘杰生">刘杰生</option>
  <option value="纪伟明">纪伟明</option>
  <option value="庄秋霞">庄秋霞</option>
  <option value="雷克萨斯管理员">雷克萨斯管理员</option>
  <option value="何焕锋">何焕锋</option>
  <option value="殷木根">殷木根</option>
  <option value="余乐">余乐</option>
  <option value="章楚玲">章楚玲</option>
  <option value="王金桂子">王金桂子</option>
  <option value="张先赞">张先赞</option>
  <option value="潘景锋">潘景锋</option>
  <option value="严冰冰">严冰冰</option>
  <option value="吴小燕">吴小燕</option>
  <option value="陈秋波">陈秋波</option>
  <option value="王秀娟">王秀娟</option>
  <option value="李娴">李娴</option>
  <option value="林泽鹏">林泽鹏</option>
  <option value="陈荣华">陈荣华</option>
  <option value="张瑞杰">张瑞杰</option>
  <option value="陈旭伟">陈旭伟</option>
  <option selected="selected" value="">全部</option>

</select> </td>
      <td nowrap>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:gongDanSearch()">查询</a>
     </td>
     
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    </form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function billShow(index) {
            var thisGuid = $('#dg').datagrid('getRows')[index]['txtGongDanId'];
            if (thisGuid != "" && thisGuid !=undefined) {
                //parent.winopen('../saleAfterManage/saleAfterIndex.action?tabId= &saleAfterWeiXiuGuid=' + thisGuid + '&d=' + new Date(), '维修工单', 990, 600, true, true, false);
                z = window.open('../saleAfterManage/saleAfterIndex.action?tabId=<s:property value="tabId" />&saleAfterWeiXiuGuid=' + thisGuid + '&d=' + new Date(), '维修工单', 'height=600,width=990,top=100,left=50,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no');
                z.focus();
            }
          }
		  
    </script>

    <script language="javascript" type="text/javascript" >     
        
        $(function () {
			var jsonStr = '<s:property value="easyUiJSonData" escape="false"/>';
        	setupDatagrid(jsonStr);
        });
		
		function setupDatagrid(jsonStr) {
        	jsonStrData = $.parseJSON(jsonStr);
            $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        }


        function pagerFilter(data) {
            if (typeof data.length == 'number' && typeof data.splice == 'function') { // is array
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

        function gongDanSearch(){
			$("#form1").form('submit', {
				url : "saleAfterGongDanSearch.action",
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});	
        }


    </script>
 
</body>
</html>

