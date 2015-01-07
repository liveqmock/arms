<html>
<head><title>
	消息中心(放入待审核消息及寻呼信息)
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
   <form name="form1" method="post" action="callCenter.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTExNTQ1MTA5ODJkZBsrJOUI8haNSY2vepCKGcO/GD6O" />
</div>

      
      <div style="width:780px;">
        <table border="0" style="width:600px;height:30px;">
        <tr>
        <td style="display:block;width:200px;"></td>
        <td id="Td1" style="width:100px;cursor:pointer;text-align:center;" onClick="callShow()">信息发布</td>
        <td id="tab1" style="width:100px;cursor:pointer;background-color:Gray;color:White;text-align:center;"  >待阅信息</td>
        <td id="tab2" style="width:100px;cursor:pointer;text-align:center;" onClick="sendShow()">已发信息</td>
        <td id="tab3" style="width:100px;cursor:pointer;text-align:center;" onClick="receiveShow()">已收信息</td>
        <td id="Td2" style="width:100px;cursor:pointer;text-align:center;"  onclick="return parWinClose();" >关闭</td>  
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
                <th  data-options="field:'flag',hidden:true"></th> 
                <th  data-options="field:'callId',checkbox:true"></th> 
                <th  data-options="field:'userName',width:80" sortable="true">发送人</th>
                <th  data-options="field:'writeDate',width:120" sortable="true">发送时间</th>
                <th  data-options="field:'sort',width:120" sortable="true">类型</th> 
                <th  data-options="field:'contents',width:250" sortable="true">内容</th>                  
            </tr>
		</thead>
	</table> 

      <input name="txtPageNum" type="text" value="1" id="txtPageNum" style="display:none;" />
      <input name="txtPageSize" type="text" value="15" id="txtPageSize" style="display:none;" />
    

 
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="C3581F50" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAwKn3qWYBAKfluDwDwKa7byuAvK41Zi691Bf/gSoyUfuldR63cr+" />
</div></form>


    

    <script language="javascript" type="text/javascript" >
        function billShow(index) {
            var callId = $('#dg2').datagrid('getRows')[index]['callId'];
            var flag = $('#dg2').datagrid('getRows')[index]['flag'];
            if (callId != "") {
                if (flag == "msg") {
                    //互动信息
                    showCallInfo(callId);
                  }
                else {
                    //流程信息
                    showFlowInfo(callId);
                }
            }
        }


        var jsonStr = '{"total":0,"rows":[{"id":"请重新输入查询条件"}]}';
        jsonStrData = $.parseJSON(jsonStr);
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
                    dg.datagrid('loadData', data);
                }
            });
            if (!data.originalRows) {
                data.originalRows = (data.rows);
            }
            var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
            var end = start + parseInt(opts.pageSize);
            data.rows = (data.originalRows.slice(start, end));
            return data;
        }




    </script>
 

    <script language="javascript" type="text/javascript" >

       
        function callShow() {
            //信息发布
            location.href = "call.aspx?d="+new Date();
        }

        function sendShow() {
            //parent.mdfMenu("cc1234567878", "已发信息", "../CallManage/sendCall.aspx");
            //parWinClose();
            location.href = "sendCall.aspx?d="+new Date();
        }

        function receiveShow() {
            //parent.mdfMenu("cc1234567878", "已收信息", "../CallManage/receiveCall.aspx");
            //parWinClose();
            location.href = "receiveCall.aspx?d="+new Date();
        }


        function showCallInfo(callId) {
            location.href = "callShowByCallId.aspx?callId="+callId;
        }

        

        function showFlowInfo(flowThisId) {
            if (navigator.userAgent.indexOf('iPad') != -1) {
                parWinClose();
                window.open('../flowBusi/flowBusiApprove.aspx?flowThisId=' + flowThisId + "&d=" + new Date(),"流程审核","height=600,width=990");

            } else {
                parent.winopen('../flowBusi/flowBusiApprove.aspx?flowThisId=' + flowThisId + "&d=" + new Date(), '流程审核', 990, 600, true, true, false);
            }
        }

        function showReadInfo(callId) {
            $.get("callExec.aspx?d=" + new Date(),
            {
                type: "readInfo",
                callId: callId
            }, function (data) {
                if (data == "ok") {
                    $("#" + callId + "Call").css("display","none");
                }
            });
        }
    </script>


</body>
</html>