<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=2dfbab1f71764dc182eb87e4e0aad2fc" type="text/javascript"></script><link href="../style/common.css?v=2dfbab1f71764dc182eb87e4e0aad2fc" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<style type="text/css">
    a
    {
        display: none;
    }
</style>
<script type="text/javascript">
    $(function () {
        $("#hideSearch,#sortFiled,#search").click(function () {
            if (this.id =="sortFiled") {
                parent.winopen('../index/PageFiledSelect.aspx?PageName=SalorLiuShiList&&syauto=' + new Date() + '', '列设置', 845, 510, true, true, false);
            }
            if (this.id == "hideSearch") {
                $("#searchid").hide();
            }
            if (this.id == "search") {
                $("#searchid").show();
            }
        });
        $("#dg").datagrid({
            onDblClickRow: function (rowindex, rowdata) {
                parent.winopen('../SaleBefore_Manage/GenZongPiShiDetail.aspx?CustGuid=' + rowdata.CustGuid + '&&syauto=' + new Date() + '', '客户[<span style="color:red;">' + rowdata.Cust_Name + ']</span>信息', 845, 510, true, true, false);
             }

        });
    });
</script>
<body>
    <form name="form1" method="post" action="SalorLiuShiList.aspx?SalorGuid=93F7081A-3944-435A-9F3C-15678E2B400F&amp;type=CurMonthLost&amp;d=Fri+Jan+09+2015+17%3a01%3a34+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjk3Mzg1NzA5D2QWAgIDD2QWAgIBDxYCHgRUZXh0BTI8c3BhbiBzdHlsZT0iY29sb3I6cmVkOyI+5b2T5pyI5rWB5aSx5a6i5oi3PC9zcGFuPmRkYsRxWeuvtVEWx2hQ40R+ywnIL+o=" />
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
        <div class="allRegion">
            <div class="title">
                <table border="0" style="width: 100%;">
                    <tr>
                        <td class="titlebg">
                           <span class="titleSpan" >流失客户</span> <span style="color:red;">当月流失客户</span>
                        </td>
                        <td>
                        </td>
                        <td align="right">
                            <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-back'"
                                onclick="window.location.href='../SaleBefore_Manage/LiuShiKeHu.aspx';">返回</a>
                           <a id="search" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" >条件查询</a> 
                             <a href="###" id="sortFiled" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-excel'">
                                列设置</a> 
                            <a id="LinkButton3" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('LinkButton3','')">刷新</a>
                        
                        </td>
                    </tr>
                </table>
            </div>
            <div class="region">
                
            <div id="searchid" style="display: none; width: 980px; height: 30px;">
                <table style="margin: 10px 0 0 40px;">
                    <tr>
                        <td>
                            客户名称
                        </td>
                        <td>
                            <input name="txtCustName" type="text" maxlength="10" id="txtCustName" />
                        </td>
                        <td>
                            客户手机
                        </td>
                        <td>
                            <input name="txtMobile" type="text" maxlength="10" id="txtMobile" />
                        </td>
                         <td>
                            客户等级
                        </td>
                        <td>
                            <input name="txtDengJi" type="text" maxlength="5" id="txtDengJi" />
                        </td>
                        <td>
                          制单时间
                        </td>
                        <td>
                            <input name="txtDate_Ins" type="text" maxlength="15" id="txtDate_Ins" class="easyui-datebox" />
                        </td>
                        <td>
                            <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
                            <a href="##" id="hideSearch" class="easyui-linkbutton">隐藏</a>
                        </td>
                    </tr>
                </table>
            </div>
              
            
               
                <table id="dg"  sortName='' sortOrder='' class='easyui-datagrid'data-options="rownumbers:true,singleSelect:true,autoRowHeight:false, remoteSort:false,pagination:true, pageList:[10,15,20,30,40,50,100], remoteSort:false,pageNumber:1,pageSize:15,columns:[[ {field:'CustGuid',title:'CustGuid',width:0, hidden:true,sortable:false },{field:'Cust_Job',title:'客户职业',width:100, hidden:false,sortable:false },{field:'Cust_Name',title:'客户名称',width:100, hidden:false,sortable:false },{field:'Cust_Remark',title:'备注',width:150, hidden:false,sortable:false },{field:'LoseReason',title:'流失原因',width:100, hidden:false,sortable:false },{field:'FirstComeDate',title:'首浅日期',width:100, hidden:false,sortable:false },{field:'GouZhiLeiBie',title:'购置类别',width:100, hidden:false,sortable:false },{field:'Cust_Tel',title:'联系电话',width:100, hidden:false,sortable:false },{field:'YiXiang_CarModel',title:'意向车型',width:100, hidden:false,sortable:false },{field:'FirstComeType',title:'首洽方式',width:100, hidden:false,sortable:false },{field:'Old_CarModel',title:'原有车型',width:100, hidden:false,sortable:false },{field:'Cust_Area',title:'地区',width:100, hidden:false,sortable:false },{field:'SourceFrom',title:'意向来源',width:100, hidden:false,sortable:false },{field:'SalorName',title:'销售员',width:100, hidden:false,sortable:false },{field:'YiXiang_Price',title:'意向价格',width:100, hidden:false,sortable:false },{field:'Cust_Sex',title:'性别',width:50, hidden:false,sortable:false },{field:'Cust_Request',title:'需求描述',width:150, hidden:false,sortable:false },{field:'Date_Ins',title:'制单时间',width:100, hidden:false,sortable:false },{field:'Cust_Mobile',title:'移动电话',width:100, hidden:false,sortable:false },{field:'LostDate',title:'流失日期',width:100, hidden:false,sortable:false },{field:'LianXiCiShu',title:'跟进次数',width:100, hidden:false,sortable:false },{field:'PlanBuyDate',title:'预购日期',width:100, hidden:false,sortable:false },{field:'Cust_Address',title:'客户地址',width:200, hidden:false,sortable:false },{field:'Cust_DengJi',title:'客户等级',width:100, hidden:false,sortable:false },{field:'YiXiang_Color',title:'意向颜色',width:100, hidden:false,sortable:false }]]"></table><script type="text/javascript">    var jsonstr='{"total":0,"rows":[{"id":"请重新输入查询条件"}]}'; var jsonStrData=$.parseJSON(jsonstr);
                          $(function(){
                          $('#dg').datagrid('loadData',jsonStrData);
                           var pg = $('#dg').datagrid('getPager');
                            if(pg){
                                $(pg).pagination({    onSelectPage:function(pageNumber,pageSize){ __doPostBack('dg',pageNumber+','+pageSize); }  });}
                          } );</script>
            </div>
        </div>
    </div>

    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F859CCA8" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwK2rsKyBQKWosD8CgLxmfnCDQKxhYrZCQL5xLS4CALM99CEDQKpi4nBBZZSZe/4PFkW7mDx3bL7c6pr73W7" />
</div></form>
   
</body>
</html>