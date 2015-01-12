<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><title>
	客户管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<body>
    <form name="form1" method="post" action="customManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjA1MTU3MzU1NWRkYv3dAV5I9HTzZuPy6KU/5P+eKgs=" />
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
        <tr><td class="titlebg"><span>客服管理</span>
        <span class="titleSpan">(客户管理)</span> 
         </td><td align="right">
             <!-- <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addCustInfo(0,'客户新增');">新增</a> -->
              <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'"  onclick="addNewCustInfo(0,'客户新增');">新增客户</a>
		      <a id="btnRefresh" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'" href="javascript:__doPostBack('btnRefresh','')">刷新</a> 
		      <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');">查询</a>
          </td></tr>
         </table> 
     </div>
     
     <div class="region"  >
         <div class="region">
     <table id="dg"    class="easyui-datagrid"    style="height:500px;" 
      data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
                remoteSort:false,
                pageList:[10,15,20,30,40,50,100],
                pageNumber:1,
				pageSize:15,onClickRow:custInfoMdf"
      >
		<thead>
			<tr>
                <th  data-options="field:'cusId',checkbox:true"></th>
				<th  data-options="field:'groupId',width:50,hidden:true" sortable="true">机构Id</th>
                <th  data-options="field:'cheZhuSort',width:120" sortable="true">车主类型</th>
                <th  data-options="field:'cheZhuName',width:170">车主名</th>
                <th  data-options="field:'cheZhuTel',width:130">车主电话</th>
                <th  data-options="field:'cheZhuMob',width:120">车主手机</th>
                <th  data-options="field:'chePaiHao',width:120">车牌号</th>
                <th  data-options="field:'cheXi',width:120" >车系</th>
                <th  data-options="field:'cheJiaHao',width:140">车架号</th>
                <th  data-options="field:'cheShenYanSe',width:90">车身颜色</th> 
                <th  data-options="field:'cheZhuCardNo',width:150">身份证号码</th>
                <th  data-options="field:'chuShengRiQi',width:120">出生日期</th> 
 

       
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
       <td>客户类别:</td><td><input name="txtKeHuSort" type="text" maxlength="20" id="txtKeHuSort" /></td>
       <td>车主姓名：</td><td><input name="txtCheZhuName" type="text" maxlength="10" id="txtCheZhuName" /></td>
       <td>车主电话：</td><td><input name="txtCheZhuTel" type="text" maxlength="20" id="txtCheZhuTel" /></td>
       <td>车牌号：</td><td><input name="txtChePaiHao" type="text" maxlength="10" id="txtChePaiHao" /></td>
       <td>车架号：</td><td><input name="txtCheJiaHao" type="text" maxlength="20" id="txtCheJiaHao" /></td>
      <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AF9555F4" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCwL8lofQDALAn+vmDAKfluDwDwKa7byuAgKm4eRsAouS0PoCAqrH7+IHAq6c6PkGAqTGvQYC/vLkvQ4CqYuJwQUPyOKBiek7/8FzjtS0FTOYdSD7CQ==" />
</div></form>


    <script language="javascript" type="text/javascript">


        //新客户资料模块
        function addNewCustInfo(id, title) {
            z = window.open('../customManage/customNewAdd.jsp?&d=' + new Date(), title, 'height=600,width=970,top=80,left=80,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=n o, status=no')
            z.focus();
        }

        
        //所有的按钮事件
        function addCustInfo(id, title) {
            if (id != undefined) {
                parent.winopen('../customManage/customDetailAdd.aspx?&d=' + new Date(), title,970, 600, true, true, false);
            }
        }

    </script>

    <script language="javascript" type="text/javascript" >

        
        function custInfoMdf(index) {
            var cusId = $('#dg').datagrid('getRows')[index]['cusId'];
            var cheZhuName = $('#dg').datagrid('getRows')[index]['cheZhuName'];
           // parent.winopen('../customManage/customDetailAdd.aspx?custId=' + cusId + "&d=" + new Date(), '[' + cheZhuName + ']客户信息修改', 970, 600, true, true, false);
            // var href = "customDetailAdd.aspx?custId=" + cusId + "&d=" + new Date()
            var href = "customNewAdd.jsp?custId=" + cusId + "&d=" + new Date()
            var SizeZ = 'height=600,width=970,left=0,top=0,toolbar=no,resizable=yes,status=no,menubar=no,scrollbars=yes';
            try {
                if (!openStatus2.closed) {
                    alert("客户资料窗口 已在外部打开");
                    openStatus2.focus();
                    return false;
                }
                else {
                    openStatus2 = window.open(href, '客户资料', SizeZ);
                    openStatus2.focus();
                }
            }
            catch (Error) {
                openStatus2 = window.open(href, '客户资料', SizeZ);
                openStatus2.focus();
            }
        }


        var jsonStr = '{"total":4036,"rows":[{"cusId":"05dde3ab-3f95-486e-9222-7dadf9a833c5","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"杨小娜","cheZhuTel":"15218123688","cheZhuMob":"15218123688","cheXi":"RX270","cheJiaHao":"JTJZA11A9E2469131","cheShenYanSe":"星光黑色","chePaiHao":"粤B8G1C8","cheZhuCardNo":"442530197012310016","chuShengRiQi":"","lianXiRenCardNo":"442530197012310016","lianXiRenBirthday":"1970-12-31 0:00:00"},{"cusId":"80e1c393-1e7e-4aed-a87f-298427632abf","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"唐洋","cheZhuTel":"13265821118","cheZhuMob":"13265821118","cheXi":"CT200h","cheJiaHao":"JTHKR5BH1E2214889","cheShenYanSe":"珍珠白","chePaiHao":"粤B9E6V9","cheZhuCardNo":"23333333333","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"5464454","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"267c1056-d193-4b7e-be66-7cb9fbb875cc","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"郭勇","cheZhuTel":"13825713506","cheZhuMob":"13825713506","cheXi":"ES250","cheJiaHao":"JTHBJ1GG4E2067645","cheShenYanSe":"黑色","chePaiHao":"粤B4G8Y7","cheZhuCardNo":"40672197905213321","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"40672197905213321","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"012e97da-f80d-461d-a9e4-6140b91a3051","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"吴瑕","cheZhuTel":"15626990528","cheZhuMob":"15626990528","cheXi":"CT200h","cheJiaHao":"JTHKR5BH7E2215397","cheShenYanSe":"超音速石英白","chePaiHao":"粤B4G5Y2","cheZhuCardNo":"362502198809130820","chuShengRiQi":"","lianXiRenCardNo":"362502198809130820","lianXiRenBirthday":"1988-9-13 0:00:00"},{"cusId":"8739e90e-8c48-41cb-b4cd-b60060d57a7b","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"蔡晓丹","cheZhuTel":"18038082837","cheZhuMob":"18038082837","cheXi":"ES250","cheJiaHao":"JTHBJ1GG8E2072086","cheShenYanSe":"瑞丽红","chePaiHao":"粤B1N4T3","cheZhuCardNo":"18038082837","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"18038082837","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"4225b461-8dfb-43f2-97f5-c6ca388c9ee8","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"段频","cheZhuTel":"1360657344","cheZhuMob":"1360657344","cheXi":"RX270","cheJiaHao":"JTJZA116E2470592","cheShenYanSe":"","chePaiHao":"粤B5880Y","cheZhuCardNo":"2332232323223","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"3222222222222","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"bb3fbb86-74ed-4a66-915d-24198003b4e9","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"邬建华","cheZhuTel":"13530288567","cheZhuMob":"13530288567","cheXi":"LS460L","cheJiaHao":"JTHGM46F785031006","cheShenYanSe":"黑色","chePaiHao":"粤BN090X","cheZhuCardNo":"441615197608091645","chuShengRiQi":"1976-8-9 0:00:00","lianXiRenCardNo":"441615197608091645","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"2e2d3541-f6bb-4f23-ae96-d784ffb814f4","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"李晓明","cheZhuTel":"13510224901","cheZhuMob":"13510224901","cheXi":"IS250","cheJiaHao":"JTHBF1D22E5060895","cheShenYanSe":"塔夫绸白","chePaiHao":"粤B5N0U9","cheZhuCardNo":"13510224901","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"13510224901","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"4ee70431-6c3f-4943-8eee-f383db207ded","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"王生","cheZhuTel":"13805727766","cheZhuMob":"13805727766","cheXi":"LX470","cheJiaHao":"JTJHT00W654010477","cheShenYanSe":"珍珠白","chePaiHao":"浙A666VW","cheZhuCardNo":"330106196305213321","chuShengRiQi":"1963-5-21 0:00:00","lianXiRenCardNo":"330106196305213321","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"627a6fd7-ec6a-4790-905b-37816d89fa52","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"黄玮","cheZhuTel":"13510650765","cheZhuMob":"13510650765","cheXi":"ES250","cheJiaHao":"JTHBJ1GG4E2068570","cheShenYanSe":"珍珠白色","chePaiHao":"粤BL77A2","cheZhuCardNo":"440307198411131910","chuShengRiQi":"","lianXiRenCardNo":"440307198411131910","lianXiRenBirthday":"1984-11-13 0:00:00"},{"cusId":"5bb9208f-e30e-400e-aba7-0e65655a8f58","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"苏勇","cheZhuTel":"13613036444","cheZhuMob":"13613036444","cheXi":"","cheJiaHao":"","cheShenYanSe":"","chePaiHao":"","cheZhuCardNo":"460029197509152032","chuShengRiQi":"1975-9-15 0:00:00","lianXiRenCardNo":"460029197509152032","lianXiRenBirthday":"2015-1-13 0:00:00"},{"cusId":"f19a7b29-6906-4cc8-8aa8-3d03a5c9ce61","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"蔡爱群","cheZhuTel":"15627933039","cheZhuMob":"15627933039","cheXi":"RX270","cheJiaHao":"JTJZA11AXC2435177","cheShenYanSe":"淡金云母金属色","chePaiHao":"粤BG16M7","cheZhuCardNo":"15627933039","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"15627933039","lianXiRenBirthday":"1900-1-1 0:00:00"},{"cusId":"8f08bc9f-2380-4b00-b697-44464593e6ca","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"刘利波","cheZhuTel":"13510269633","cheZhuMob":"13510269633","cheXi":"IS250","cheJiaHao":"JTHBK2620C5182988","cheShenYanSe":"","chePaiHao":"粤BW9C17","cheZhuCardNo":"440306198811220917","chuShengRiQi":"1988-11-22 0:00:00","lianXiRenCardNo":"440306198811220917","lianXiRenBirthday":"1988-11-22 0:00:00"},{"cusId":"a11fde63-ddc8-45c1-883d-067406d60b8c","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"刘利波","cheZhuTel":"13510269633","cheZhuMob":"13510269633","cheXi":"","cheJiaHao":"","cheShenYanSe":"","chePaiHao":"","cheZhuCardNo":"440306198811220916","chuShengRiQi":"1988-11-22 0:00:00","lianXiRenCardNo":"440306198811220916","lianXiRenBirthday":"2014-12-30 0:00:00"},{"cusId":"34c82fa7-5acb-44e2-b21b-0778e9cb858a","groupId":"6018","cheZhuSort":"普通客户","cheZhuName":"黄俊恺","cheZhuTel":"13602546188","cheZhuMob":"13602546188","cheXi":"ES300h","cheJiaHao":"JTHBW1GG3D2050108","cheShenYanSe":"塔夫绸白","chePaiHao":"粤B6A672","cheZhuCardNo":"13602546188","chuShengRiQi":"1900-1-1 0:00:00","lianXiRenCardNo":"13602546188","lianXiRenBirthday":"1900-1-1 0:00:00"}]}';
        jsonStrData = $.parseJSON(jsonStr);
        $(function () {
            $('#dg').datagrid({ loadFilter: pagerFilter }).datagrid('loadData', jsonStrData);
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