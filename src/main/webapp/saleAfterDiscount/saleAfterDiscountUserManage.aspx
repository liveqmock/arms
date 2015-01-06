
<html>
<head id="Head1"><title>
	折扣管理
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
 
<body>
    <form name="form1" method="post" action="saleAfterDiscountUserManage.aspx" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTY1OTgwODk1OGRkJmfzTw1T5GT2k9jHEsUGvcHrovQ=" />
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
        <tr><td  class="titlebg"><span >系统设置</span>
         <span class="titleSpan">(个人折扣设置)</span> 
         </td><td align="right">
               <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-search'" onclick="searchClick('1');"   >个人折扣查询</a>
          </td></tr>
         </table> 
         </div>
          
   <div class="region"  >
     <table id="dg"    class="easyui-datagrid"  
      data-options="
				rownumbers:true,
				singleSelect:false,
				autoRowHeight:false,
				pagination:true,
                pageNumber:1,
                remoteSort:false,
                fitColumns:true,
				pageSize:30"
      >
		<thead>
			<tr>
                <th  data-options="field:'ck',checkbox:true"></th>
				<th  data-options="field:'Id2',width:80" hidden="true">编号</th>
                <th  data-options="field:'userName',width:40,sortable:true">用户名</th>
				<th  data-options="field:'deptName',width:80,sortable:true">部门</th>                
                <th  data-options="field:'gongShi',width:20">工时</th>
                <th  data-options="field:'meiRong',width:20">美容</th>
                <th  data-options="field:'jiDian',width:20">机电</th>
                <th  data-options="field:'baoYang',width:20">保养</th>	
                <th  data-options="field:'banJin',width:20">钣金</th>
                
                <th  data-options="field:'penQi',width:20">喷漆</th>
                <th  data-options="field:'caiLiao',width:20">材料</th>	 
                <th  data-options="field:'f1',width:30,formatter:disCountMdf" >修改</th>
            </tr>
		</thead>
	</table>
      </div>
       
   </div>

  <!--查询条件 start-->
  <div  id="search" style="display:none;">
    <table border='0' >
     <tr>
     <td>用户名称:</td>
     <td>  <input name="txtUserName" type="text" maxlength="20" id="txtUserName" /></td>
     <td>部门名称:</td>
     <td>
     <input name="txtDeptName" type="text" maxlength="60" id="txtDeptName" />
     </td>
     <td>
     <table id="radDiscount" border="0">
	<tr>
		<td><input id="radDiscount_0" type="radio" name="radDiscount" value="" checked="checked" /><label for="radDiscount_0">全部</label></td><td><input id="radDiscount_1" type="radio" name="radDiscount" value="1" /><label for="radDiscount_1">已设折扣</label></td><td><input id="radDiscount_2" type="radio" name="radDiscount" value="0" /><label for="radDiscount_2">未设折扣</label></td>
	</tr>
</table>
     </td> 
     <td>
       <a id="lnkSearch" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSearch','')">查询</a>
     </td>
     </tr>
    </table>
    </div>
   <!--查询条件 end-->
   
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0E4E06DF" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCALS7IzZBAKl1bKzCQKhltH8DQLmvvusAgLp0dHCDgL20dHCDgLmvvusAgKpi4nBBZ3z78gMxrW/Rxk5JbW7gyQycRex" />
</div></form>
</body>



    <script language="javascript" type="text/javascript">

     

        //所有的按钮事件
       

        function mdfDiscount(id,userName) {         
                //折扣设置
                parent.winopen('../saleAfterDiscount/saleAfterDiscountUserDetail.aspx?userGuid=' + id + "&d=" + new Date(), '[' + userName + ']折扣设置', 800, 500, true, true, false);
           }



    </script>

    <script language="javascript" type="text/javascript" >


        function disCountMdf(val, row, index) {
            if (row.Id2 == undefined) { return ""; }
            return "<a href='#'  onclick=mdfDiscount('" + row.Id2 + "','[" + row.userName + "]')>详情</a>";
        } 

       

        var jsonStr = '{"total":90,"rows":[{"Id2":"b2f87d34-7f27-4db5-8c20-3a9244bf3c67","userName":"陈海峰","deptName":"深业雷克售后配件","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"3c347708-60cb-4c0d-9dce-2f1c66e38893","userName":"陈荣华","deptName":"深业雷克售后服务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"99eac140-0832-4153-aad3-3b6bc28cde7b","userName":"陈旭伟","deptName":"深业雷克售后配件","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"76b956cd-b4b5-4947-8fc2-097f0873c9aa","userName":"陈燕纯","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"752c9df8-8e11-4419-80f4-2e36f18df4ed","userName":"陈智聪","deptName":"深业雷克销售大客户","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"4026c35b-9872-4b91-a8ed-75c48f6be510","userName":"温华君","deptName":"深业雷克销售DCC","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"3a5c385c-dbf1-4c8f-ad22-dd0095d470e4","userName":"王金桂子","deptName":"深业雷克售后前台","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"994a45e9-8e75-438b-8218-0e9274c2e529","userName":"吴小燕","deptName":"深业雷克售后前台","userGuid":"994a45e9-8e75-438b-8218-0e9274c2e529","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"c6b3fa44-ed56-470c-b0ab-03dcb3b57ad9","userName":"王永国","deptName":"深业雷克喷漆二组","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"c9761ede-4abb-4a61-be72-999b187f158c","userName":"吴植林","deptName":"深业雷克销售大客户","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"25015824-c7cc-4d96-91c7-d70c8ebca2bb","userName":"纪伟明","deptName":"深业雷克售后保险","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"3d16b252-396a-4164-8a2b-6d4ea4c98bce","userName":"李栋","deptName":"深业雷克机电车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"907e8be2-4308-46e3-9432-b5a0559c8b82","userName":"刘达龙","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"f85828fb-77ae-44f4-ac42-e34829e83bda","userName":"雷克萨斯管理员","deptName":"深业雷克人事行政部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"c0f91b13-4507-4457-926c-2c30b952545c","userName":"陈远淳","deptName":"深业雷克销售大客户","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"060245ba-34be-44aa-aef4-b8dabecde2bd","userName":"陈迎朝","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"df26229e-463e-4f6f-b5a4-058e9cde3ffc","userName":"丁杰","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"fc27b0f8-7d4b-4eae-b032-77b0f07cd538","userName":"李栋","deptName":"深业雷克售后服务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"2a81f98c-58e2-405d-b7ce-7fe3e58fec14","userName":"刘杰生","deptName":"深业雷克售后前台","userGuid":"2a81f98c-58e2-405d-b7ce-7fe3e58fec14","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"0.94"},{"Id2":"edb0480f-6b08-4552-b0f0-e8f1713d7fe8","userName":"李志基","deptName":"深业雷克售后服务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"9be57cdb-84f7-461f-98db-05d830d1be4c","userName":"翁丽华","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"dd5b84a7-dc42-4161-b1a1-3152860a5cab","userName":"张博","deptName":"深业雷克售后服务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"bbdb3498-a58a-462b-9ff1-ea661c51b188","userName":"罗辉燕","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"e90e078a-bcb4-4425-9a7d-568e3ee1d35a","userName":"廖娇界","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"f7f8c979-81cd-44f1-be4a-f354958fd883","userName":"刘倩芸","deptName":"深业雷克销售部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"4305fa75-133d-4456-9ffe-3986583342ae","userName":"卢淑慧","deptName":"深业雷克销售DCC","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"ce7452c2-b9c6-4e81-8ee9-f18e1a11bf5e","userName":"刘晓丽","deptName":"深业雷克销售DCC","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"5fbb4040-a4c1-4714-8db5-231f7c3afe83","userName":"卢勇","deptName":"深业雷克客户关系部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"965452e3-d27a-4e28-885b-e3e6b6eceb59","userName":"刘卓","deptName":"深业雷克客户关系部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"8e3d123b-dd94-4d2d-8c48-8adb68a4075d","userName":"林中华","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"58293971-706c-48e5-93c1-5b2092222a13","userName":"李志基","deptName":"深业雷克快修组","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"6f44dbe3-6edd-4d85-a68a-61539c2f53b8","userName":"林泽鹏","deptName":"深业雷克售后前台","userGuid":"6f44dbe3-6edd-4d85-a68a-61539c2f53b8","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"2049543c-9fb1-46bf-9b65-ea9b01a27a43","userName":"严冰冰","deptName":"深业雷克销售大客户","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"d4998456-77ee-4e24-9eca-80e5360d150a","userName":"杨碧霞","deptName":"深业雷克销售DCC","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"4fc31a7e-3c04-4c97-b064-ddf91f9b5f2c","userName":"尹菁","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"570ff949-a8c6-4387-bf40-becd257481cd","userName":"余锦之","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"a7a971bd-344a-4937-b5f5-8f5619ac72aa","userName":"余乐","deptName":"深业雷克售后前台","userGuid":"a7a971bd-344a-4937-b5f5-8f5619ac72aa","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"a2cf259d-3ac2-422e-9e1c-68a887aa115b","userName":"杨丽琴","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"044257b6-842f-44fc-9196-80b6e93b5798","userName":"殷木根","deptName":"深业雷克售后前台","userGuid":"044257b6-842f-44fc-9196-80b6e93b5798","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"677cd90b-bfba-477d-886b-6d598f45090c","userName":"余鹏","deptName":"深业雷克售后配件","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"30340240-9922-4e6b-bc8a-d2b7aaa6b46f","userName":"于燕飞","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"f993cbe2-a5b1-4780-be6b-00355f2f54ff","userName":"张博","deptName":"深业雷克机电车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"d2b7ab59-53f5-46aa-9096-d1aedde795ab","userName":"章楚玲","deptName":"深业雷克精品部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"72cb09af-6b0e-4d29-97f0-38f9a6342345","userName":"钟纯武","deptName":"深业雷克机电车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"207eb760-06dd-4182-aa54-5e1ba0f50a6c","userName":"张东升","deptName":"深业雷克机电车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"bcf960bc-f905-4db4-8871-b1044e6dc88e","userName":"张娟","deptName":"深业雷克客户关系部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"5d2d10f9-d168-4b57-9265-82ac25b74079","userName":"张科龙","deptName":"深业雷克喷漆一组","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"a0793115-8b8c-4d27-937d-3678f3c3aeb0","userName":"庄秋霞","deptName":"深业雷克售后服务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"0713f815-834d-4c9a-a72b-3cd947956e7c","userName":"张瑞杰","deptName":"深业雷克售后前台","userGuid":"0713f815-834d-4c9a-a72b-3cd947956e7c","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"5e567d0a-46c4-4cc9-b2d0-c9dfe67b99d1","userName":"张小强","deptName":"深业雷克销售部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"33f6c84f-0c02-4703-b0a3-07fc33c80083","userName":"张先赞","deptName":"深业雷克售后前台","userGuid":"33f6c84f-0c02-4703-b0a3-07fc33c80083","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"4c59d716-7ef8-4a73-8ec4-9a84486f80f2","userName":"赵雅琴","deptName":"深业雷克销售展厅","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"d19eaa35-3ec0-43f4-94c5-6dce0491a97c","userName":"李娴","deptName":"深业雷克售后保险","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"9842f4f7-7c66-4861-b77f-3ad00ca5ed15","userName":"王秀娟","deptName":"深业雷克售后前台","userGuid":"9842f4f7-7c66-4861-b77f-3ad00ca5ed15","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"88cd0352-ded2-4410-a06b-215ca5520eae","userName":"魏燕美","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"3f262bef-8099-4254-b023-77684393515f","userName":"周苑灵","deptName":"深业雷克售后服务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"3f9f71b6-00a7-4315-b37f-75fe4a95e637","userName":"陈秋波","deptName":"深业雷克售后前台","userGuid":"3f9f71b6-00a7-4315-b37f-75fe4a95e637","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"fcd10d39-7e7f-4c16-87bd-ee61fb82a5cb","userName":"邓小明","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"32693958-df06-46d9-bc2e-fdaa2eea5976","userName":"高娟","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"98f64240-c61b-49a3-a879-2bbdf2164d02","userName":"桂桥林","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"273f4930-4777-4e33-a221-62187a0a0857","userName":"黄胜青","deptName":"深业雷克销售部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"95591aa3-ace8-43ba-a612-d9aed2392a79","userName":"刘苏慧","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"80363598-f6df-4a56-bd6b-d6b7f92952dd","userName":"黄彦岚","deptName":"深业雷克销售DCC","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"1a09afde-1465-46e5-903e-b48420c9a683","userName":"何正华","deptName":"深业雷克机电车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"2c0605d7-5709-4bc6-b262-42eeae18d085","userName":"潘景锋","deptName":"深业雷克售后保险","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"8147023d-c047-4394-b916-8777829fdfbb","userName":"邱鹏","deptName":"深业雷克销售大客户","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"a2fdac6d-8d37-4f56-9495-be1ea5e3cd62","userName":"秦曾","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"50bdfbf2-797a-4f6c-8f72-0e75920e2e07","userName":"唐雷","deptName":"深业雷克售后前台","userGuid":"50bdfbf2-797a-4f6c-8f72-0e75920e2e07","meiRong":"1.00","banJin":"1.00","jiDian":"1.00","baoYang":"1.00","penQi":"1.00","gongShi":"0.80","caiLiao":"1.00"},{"Id2":"9b0cdc48-c66e-4702-878a-a46b7539bfbd","userName":"肖玮","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"bcb4a20e-c697-4a44-bbdd-d51efc658d3a","userName":"肖莹","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"068f629f-f5b4-47ef-a238-396230f6f15e","userName":"易明","deptName":"深业雷克销售部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"4b6f84f7-72b3-4eab-98c5-68fd2741308f","userName":"许熙锋","deptName":"深业雷克钣喷车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"70b7fbc0-af84-4f5e-9f6a-9d80a75dd54b","userName":"丁拱祥","deptName":"一科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"46497839-93ec-434f-a4ca-0c069765a356","userName":"戴小涛","deptName":"深业雷克精品部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"96a8e5aa-3476-42f1-b435-574aefa9b3b8","userName":"邓元荣","deptName":"深业雷克钣喷车间","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"b8a9530f-0273-48c0-a244-3f46825e6b3f","userName":"杜振辉","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"2a94e4b0-3de4-4527-8862-b282887a3db6","userName":"冯南杰","deptName":"深业雷克美容一组","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"23c0f7fe-be01-4653-83a6-dd9c99bcfbd5","userName":"付文婷","deptName":"深业雷克销售部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"5e97b469-31e2-4ab6-9b95-bd6f61fae97a","userName":"龚明芳","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"dfc7d380-0a39-4b2c-a68e-a6a3ccb71dca","userName":"高向南","deptName":"深业雷克美容一组","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"f48ede05-6f3d-42b7-b53b-1d15f782c91e","userName":"黄灿键","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"0d608721-d6aa-407f-95d9-74c203506a18","userName":"何焕锋","deptName":"深业雷克美容一组","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"7af8dcaf-a9ee-451e-ba53-541049f00843","userName":"黄荣","deptName":"深业雷克售后配件","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"b62c8ed9-272a-4a52-9649-dc9cabc85b98","userName":"辛怡婷","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"4d8df665-f69b-46d4-b37b-a633d04b6fc9","userName":"罗楠","deptName":"雷克萨斯总经办","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"b26e8400-dc32-4204-ae45-84bb4802df40","userName":"聂艳香","deptName":"深业雷克财务部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"96a54119-e5f7-4131-9306-0fea7c43450e","userName":"罗威","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"0180c5a4-ff8f-4106-a23f-3b898891b986","userName":"齐晓华","deptName":"深业雷克销售展厅","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"9b19e0a0-248d-4980-b0fa-a11a79ba69e6","userName":"唐薇","deptName":"深业雷克销售部","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""},{"Id2":"261abc4c-f88c-4285-9df9-cfd7f154c1e1","userName":"王磊","deptName":"二科","userGuid":"","meiRong":"","banJin":"","jiDian":"","baoYang":"","penQi":"","gongShi":"","caiLiao":""}]}';
        var jsonStrData = $.parseJSON(jsonStr);
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



</html>