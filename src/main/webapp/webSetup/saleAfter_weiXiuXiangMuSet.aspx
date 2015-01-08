
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
  维修项目管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="saleAfter_weiXiuXiangMuSet.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTAzODczOTE3MmRkOOIZyB9ValxZKhpEO8xFyIY2tZQ=" />
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


    <div class="allRegion"> 
     <div class="title"> 
        <table border="0" style="width:100%;">
        <tr><td class="titlebg"><span>维修设置</span>
        <span class="titleSpan">(维修项目管理)</span> 
         </td><td align="right">
              <a onclick="return delCheck();" id="lnkDel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" href="javascript:__doPostBack('lnkDel','')">删除</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addWeiXiuXiangMu(0,'维修项目新增');">新增</a>
          <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
          <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="gongShiFeiLvSet('1');">费率</a>
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="biaoZhunGongShiSet('1');">标准工时设置</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
       <div class="region">
     <table id="dg"    class="easyui-datagrid"    style="height:500px;" 
      data-options="
        rownumbers:true,
        singleSelect:false,
        autoRowHeight:false,
        pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
        pageSize:15,onClickRow:billShow"
      >
    <thead>
      <tr>
                <th  data-options="field:'weiXiuXiangMuThisId',checkbox:true"></th>
        <th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'weiXiuXiangMuId',width:120" sortable="true">维修项目编号</th>                
                <th  data-options="field:'gongShi',width:80">工时</th>
                <th  data-options="field:'gongDuanName',width:80">工段名称</th>
                <th  data-options="field:'shiYongCheXing',width:120" >适用车型</th>
                <th  data-options="field:'weiXiuXiangMuContent',width:370">维修内容</th>       
            </tr>
    </thead>
  </table>
      </div>

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />
      <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>

       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
     
    <tr>
     <td>维修编码:</td>
     <td><input name="txtWeiXiuBianHao" type="text" maxlength="20" id="txtWeiXiuBianHao" style="width:120px;" /></td>
     <td>维修名称:</td>
     <td><input name="txtWeiXiuMingCheng" type="text" maxlength="20" id="txtWeiXiuMingCheng" style="width:120px;" /></td>
     <td>适用车型:</td>
     <td>  <input name="txtShiYongCheXing" type="text" maxlength="20" id="txtShiYongCheXing" style="width:120px;" /></td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8AC6CD65" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgKogaHhDQLA2eOABwLAn+vmDAKfluDwDwKa7byuAgKm4eRsAr3lhdIJAuf91IABAvayp7wDAqmLicEFa7PjLBdfFycxI/g1UcRcLeK1TbM=" />
</div></form>


    <script language="javascript" type="text/javascript">
        //所有的按钮事件
        function addWeiXiuXiangMu(id, title) {
            if (id != undefined) {
                parent.winopen('../webSetup/saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=' + id + "&d=" + new Date(), title, 800, 400, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        function delCheck() {
            var s = "";
            var rows = $('#dg').datagrid('getSelections');
            for (var i = 0; i < rows.length; i++) {
                var row = rows[i];
                s = s + row.aa + ",";
            }
            if (s == "") {
                alert("未选择任何项!");
            } else {
                $.post("saleAfter_weiXiuXiangMuExec.aspx?d=" + new Date(), {
                    type: "weiXiuXiangMuSetDel",
                    weiXiuXiangMuList: s
                }, function (data) {
                    if (data == "") {
                        alert('删除成功！');
                    } else {
                        alert(data);
                    }

                    //Load Start
                    __doPostBack('btnRefresh', '');
                    //Load End

                });

            }

            return false;

        }
 

        function billShow(index) {
            var a = $('#dg').datagrid('getRows')[index]['weiXiuXiangMuThisId'];
            var b = $('#dg').datagrid('getRows')[index]['weiXiuXiangMuId'];
            if (a != "") {
                parent.winopen('../webSetup/saleAfter_weiXiuXiangMuAdd.aspx?weiXiuXiangMuId=' + a + '&d=' + new Date(), b + '维修项目修改',800, 400, true, true, false);
            }
        }


        var jsonStr = '{"total":30542,"rows":[{"groupId":"6012","weiXiuXiangMuThisId":"8c668e9c-0485-406d-8d87-0022ad93840b","weiXiuXiangMuId":"421012","weiXiuXiangMuContent":"换后轮半轴","gongShi":"2.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"e05996a9-2e8f-4c0d-bb12-001fd3cb9043","weiXiuXiangMuId":"671111","weiXiuXiangMuContent":"更换（拆装）三角玻璃","gongShi":"1.50","gongDuanName":"钣金","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"dbc36c98-5aae-43ca-8d49-001932678afb","weiXiuXiangMuId":"675997","weiXiuXiangMuContent":"维修门锁线路","gongShi":"3.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"06e33f67-6c24-4ece-af39-00163eeb85c1","weiXiuXiangMuId":"434081","weiXiuXiangMuContent":"换前轮轴承或（及）油封","gongShi":"3.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"51cb47a0-5d64-4c92-81ff-00157fce39bd","weiXiuXiangMuId":"830501","weiXiuXiangMuContent":"拆装（换）灯光组合开关","gongShi":"2.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"1d230591-1f96-48fd-9ac0-00136dea414d","weiXiuXiangMuId":"893111","weiXiuXiangMuContent":"换付气袋","gongShi":"1.50","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"fce76252-fbf0-4f2a-9101-000bad5ba990","weiXiuXiangMuId":"358998","weiXiuXiangMuContent":"换波叉油封","gongShi":"1.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"0e997741-262b-4200-9968-000b1eaa5990","weiXiuXiangMuId":"820991","weiXiuXiangMuContent":"维修大灯线路","gongShi":"1.50","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"22b8721c-07b7-40fe-b8f4-000a6a834ef6","weiXiuXiangMuId":"0B3A43","weiXiuXiangMuContent":"5000KM保养","gongShi":"1.60","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"71d614a4-c49e-4e63-8c16-00081009054f","weiXiuXiangMuId":"850997","weiXiuXiangMuContent":"换防盗放大器","gongShi":"1.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"893cde8b-24c3-4ba8-b444-00077c06a25b","weiXiuXiangMuId":"671997","weiXiuXiangMuContent":"维修原装遥控线路","gongShi":"5.50","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"9fb8ce13-e3b1-413c-97b2-00060f2a5db6","weiXiuXiangMuId":"617998","weiXiuXiangMuContent":"检修门玻璃升降","gongShi":"2.50","gongDuanName":"钣金","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"959cca96-bfaa-4da5-a2e5-000591680b5c","weiXiuXiangMuId":"170999","weiXiuXiangMuContent":"更换空气流量计","gongShi":"1.50","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"a4f82d5c-f367-43cf-a1dd-0004593618bf","weiXiuXiangMuId":"271012","weiXiuXiangMuContent":"检修（保养）发电机","gongShi":"1.50","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""},{"groupId":"6012","weiXiuXiangMuThisId":"b398cfa1-3ace-4bf6-a3eb-0003a8e1c872","weiXiuXiangMuId":"120999","weiXiuXiangMuContent":"吊装发动机","gongShi":"8.00","gongDuanName":"机电","shiYongCheXing":"","delFlag":"0","writeDate":"2014-6-3 11:59:43","shiYongCheXi":""}]}';
        jsonStrData = $.parseJSON(jsonStr);
        $(function () {
            $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        });


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

                    __doPostBack('tmp', '');
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




        function gongShiFeiLvSet() {
            location.href = "saleAfter_newGongShiFeiLv.aspx?d="+new Date();
            //工时费率设置
        }

        function biaoZhunGongShiSet() {
            location.href = "saleAfter_newWeiXiuXiangMuSet.aspx?d=" + new Date();
        }
    </script>
 
</body>
</html>