 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"><title>
	已发互动信息
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="sendCall.aspx?d=Tue+Jan+06+2015+08%3a31%3a42+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTc4MTI4OTg2NGRkDZvsWaL+qLGJQ6StossnC7JrW3Q=" />
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


   
     <div style="width:100%;">
        <table border="0" style="width:780px;height:30px;">
        <tr>
        <td style="display:block;width:200px;"></td>
        <td id="Td1" style="width:100px;cursor:pointer;text-align:center;" onclick="callShow()">信息发布</td>
        <td id="tab1" style="width:100px;cursor:pointer;text-align:center;" onclick="centerShow()" >待阅信息</td>
        <td id="tab2" style="width:100px;cursor:pointer;background-color:Gray;color:White;text-align:center;" >已发信息</td>
        <td id="tab3" style="width:100px;cursor:pointer;text-align:center;" onclick="receiveShow()">已收信息</td>
        <td id="Td2" style="width:100px;cursor:pointer;text-align:center;"  onclick="return parWinClose();" >关闭</td>  
        <td align="right" style="width:280px;">
              <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('2');">查询</a>
          </td>
        </tr>
       </table>
      </div>
 
     <table id="dg2"    class="easyui-datagrid"    style="height:480px;width:780px"  
      data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                remoteSort:false,
                pageList:[2,10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15,onClickRow:billShow"
      >
		<thead>
			<tr>
                <th  data-options="field:'callId',checkbox:true"></th> 
                <th  data-options="field:'receiveInfo',width:120" sortable="true">接收人</th>
                <th  data-options="field:'writeDate',width:120" sortable="true">发送时间</th>
                <th  data-options="field:'contents',width:450" sortable="true">内容</th>                  
            </tr>
		</thead>
	</table> 

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />
      <a id="tmp" href="javascript:__doPostBack('tmp','')"></a>

       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
         <tr>
     <td>发送时间:</td><td><input name="txtSendDateStart" type="text" id="txtSendDateStart" class="inputCss easyui-datebox" style="width:100px;" /> </td>
     <td>至</td><td><input name="txtSendDateEnd" type="text" id="txtSendDateEnd" class="inputCss easyui-datebox" style="width:100px;" /></td>
     <td>接收人:</td>
     <td><input name="txtReceUser" type="text" maxlength="20" id="txtReceUser" style="width:120px;" /></td>     
     <td>互动内容:</td>
     <td>
     <input name="txtContents" type="text" maxlength="50" id="txtContents" style="width:120px;" />
     </td>
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3341363B" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgKlpOrJDgLAn+vmDAKfluDwDwKa7byuAgKm4eRsAqXmxeMIAtTtma4MAvHhnqMOAtL50r4DAqmLicEFqs7U4K9wr6CMLBPIOuhDu/bF6Rg=" />
</div></form>


    

    <script language="javascript" type="text/javascript" >
        function callShow() {
            //信息发布
            location.href = "Call.aspx?d=" + new Date();
        }
        
        function receiveShow() {
            location.href = "receiveCall.aspx?d=" + new Date();
        }

        function centerShow() {
            location.href = "callCenter.aspx?d=" + new Date();
        }


        function billShow(index) {
            var callId = $('#dg2').datagrid('getRows')[index]['callId'];
            if (callId != "") {
                
                 location .href ='../callManage/callShowByCallId.aspx?callId=' + callId + '&d=' + new Date();
                
            }
        }
 

        var jsonStr = '{"total":0,"rows":[{"id":"请重新输入查询条件"}]}';
        jsonStrData = $.parseJSON(jsonStr);
        $(function () {
            $('#dg2').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
        });
         
        function pagerFilter(data) {
            if (typeof data.length == 'number' && typeof data.splice == 'function') {	// is array
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



    </script>
 
</body>
</html>