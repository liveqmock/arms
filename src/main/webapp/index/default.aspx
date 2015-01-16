<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
    深业汽车业务管理信息系统V3.0.1    
    
</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
    <link href="../style/default/main.css" rel="stylesheet" type="text/css" />
 
    <script src="../js/frame/jquery.ztree.core-3.5.min.js" type="text/javascript"></script>
    <link href="../style/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
    <script src="../js/frame/jquery.Cookie.js" type="text/javascript"></script>
     
    <script language="javascript" type="text/javascript" >
        $(function () {
            $("#menuTree").hide();
            $("#menuData").click(menuClick);
            $("#main").height($(window).height());
            mainAutoSize();
            $.fn.zTree.init($("#treeDemo"), setting,[{ name: "系统菜单",open: true,font:{'font-style':'微软雅黑'},children:[{ name: "新车销售",font:{'font-style':'微软雅黑'},children:[{ name: "订单管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('03453237-bfe8-4c89-ad60-9af4b871a177','订单管理','../SaleOrder_Manage/OrderManageList.aspx?d=20140707');"},{ name: "配车管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('aefc38e6-427f-4c9c-a3df-292351828b84','配车管理','../SaleOrder_Manage/OrderCustList.aspx');"},{ name: "交车登记",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('98479b9c-d4df-467e-8412-592ea2426108','交车登记','../SaleOrder_Manage/OrderJiaoCheList.aspx');"},],url: "", target: "_blank"},{ name: "售前管理",font:{'font-style':'微软雅黑'},children:[{ name: "流失客户",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('a40f10a1-f4f6-4fcb-8cfc-13bcb97c3c1c','流失客户','../SaleBefore_Manage/LiuShiKeHu.aspx');"},{ name: "客户活动",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('e6a6d758-e2c6-454c-b765-1bdc2bd59300','客户活动','../SaleBefore_Manage/Cust_ManageCarMain.aspx');"},{ name: "意向客户",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('7fff3b6b-bcb7-48a8-b204-a08d3c387cde','意向客户','../SaleBefore_Manage/IntentionCustomer.aspx');"},{ name: "试乘试驾",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('01b281d3-8fab-4828-aa7b-baed11947961','试乘试驾','../SaleBefore_Manage/SCSJ.aspx');"},{ name: "跟踪批示",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('0c93ca71-81ad-4079-a5a3-ccf35a5749bc','跟踪批示','../SaleBefore_Manage/GenZongPiShiDataSet.aspx');"},{ name: "潜在客户",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('c4f25490-6853-417d-be2c-f0d4c14936e1','潜在客户','../SaleBefore_Manage/QianZaiKeHu.aspx');"},{ name: "客户推进",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('a2024e29-0266-4cbc-b042-020b716ab47b','客户推进','../SaleBefore_Manage/CustomerAdvancement.aspx');"},{ name: "潜客查询",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('e3616b00-a85c-4ecb-bce0-84759d624080','潜客查询','../SaleBefore_Manage/QianZaiKeHuList.aspx');"}],url: "", target: "_blank"},{ name: "售后管理_",font:{'font-style':'微软雅黑'},children:[{ name: "工单制作",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('c8be17ed-c73c-45f5-a7a1-d5e5e41c943e','工单制作','../saleAfterManage_/saleAfterGongDanManage.action');"}],url: "", target: "_blank"},{ name: "客服管理",font:{'font-style':'微软雅黑'},children:[{ name: "客户声音",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('6440be6c-5b6a-45e2-9fd7-b3e3775bb24e','客户声音','../customManage/callbackManage/UserSuggestManage.aspx');"},{ name: "售后回访",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('ee86089e-80dd-4be9-af13-5eb8c14b0919','售后回访','../customManage/callbackManage/callBackListManage.aspx');"},{ name: "客户管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('4580d947-4f6f-4ad0-a02e-8a46e85668b9','客户管理','../customManage/customManage.aspx');"},{ name: "投诉管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('af672ca8-3ff8-4137-aeda-c5402f166803','投诉管理','../customManage/ComplaintManage/ComplaintView.aspx');"},{ name: "客服标识",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('9c87412f-d714-4cf8-8f88-54377edb264e','客服标识','../customManage/CustomizeSignSet.aspx');"},{ name: "普通招揽",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('13352206-b7e2-42b1-9668-df3e6d80dce4','普通招揽','../customManage/zhaoLan/commonZhaoLan.aspx');"},{ name: "高级招揽",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('ad5a76f2-e266-41c4-89d6-2d63d8239c4c','高级招揽','../customManage/zhaoLan/GaoJiZhaoLanView.aspx');"}],url: "", target: "_blank"},{ name: "售后管理",font:{'font-style':'微软雅黑'},children:[{ name: "维修接待",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('e729a493-1fe5-45f8-910c-060e7d4a4865','维修接待','../saleAfterManage/saleAfterCustomSearch.action');"},{ name: "预约管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('ad1f0ed7-927f-4d39-897d-aae96ceb8677','预约管理','../saleAfterManage/saleAfter_yuYueManage.aspx');"},{ name: "工单管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('e3f0fe70-9e54-4fe5-9fbc-a0004af38ab5','工单管理','../saleAfterManage/saleAfterGongDanManage.action');"},{ name: "维修派工",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('3df737f6-b225-4a61-ae22-b97e62baf5cd','维修派工','../saleAfterManage/saleAfterGongDanManage.action?tabId=3');"},{ name: "完工确认",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('dd0db92e-1694-48b4-a7d6-7050be5874af','完工确认','../saleAfterManage/saleAfterGongDanManage.action?tabId=4');"},{ name: "费用明细",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('99fcdab9-1dbf-4995-9510-efd73271d947','费用明细','../saleAfterManage/saleAfterGongDanManage.action?tabId=5');"},{ name: "交车查询",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('aef7770f-0c2e-4794-9c07-c7fa88d49dc8','交车查询','../saleAfterManage/saleAfterGongDanManage.action?tabId=6');"},{ name: "单据撤销",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('97e6ad68-baa6-4550-8673-3ca53b2a1518','单据撤销','../saleAfterManage/saleAfter_WeiXiuFeiYongCancelManage.aspx');"}],url: "", target: "_blank"},{ name: "配件管理",font:{'font-style':'微软雅黑'},children:[{ name: "采购定单",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('24700033-e6f3-4133-8980-1f35031c47fd','采购定单','../storeOtherManage/storeOtherCaiGouBillManage.aspx');"},{ name: "入库管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('aef416a9-a829-4b9d-acb1-d31d4e2e1ef4','入库管理','../storeOtherManage/storeOtherInsertBillManage.aspx');"},{ name: "销售管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('c5e430e2-702c-4298-ba20-f911b03fe909','销售管理','../storeOtherManage/storeOtherSaleManage.aspx');"},{ name: "例外管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('6604c82e-da53-4eda-962c-fd0dcb4fbb43','例外管理','../storeOtherManage/storeOtherExceptionManage.aspx');"},{ name: "即时库存",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('6968c5ef-3eff-4242-ac88-b6d645d6efd9','即时库存','../storeOtherManage/storeOtherReportJiShiKuCun.aspx');"},{ name: "维修出退库",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('e2e7c304-0fc6-46b1-96f5-8773191d394e','维修出退库','../saleAfterManage/saleAfter_WeiXiuWuLiaoManage.aspx');"},{ name: "精品出退库",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('76ae3969-3e62-4b3d-a205-a8f7cbc15f81','精品出退库','../storeOtherManage/storeOtherJingPinManage.aspx');"}],url: "", target: "_blank"},{ name: "报表中心",font:{'font-style':'微软雅黑'},children:[{ name: "报表导航",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('01a4e616-036d-449c-a71e-a12b7ab28716','报表导航','../Reports/reportIndex.aspx');"},],url: "", target: "_blank"},{ name: "基础设置",font:{'font-style':'微软雅黑'},children:[{ name: "单位管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('11213585-967e-42e6-9e4c-2a2f1dc81b8a','单位管理','../webSetup/storeOtherUnitManage.aspx');"},{ name: "仓库管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('4ab70d55-4c40-40bd-9849-b7a72c85f4d9','仓库管理','../webSetup/storeOtherSetManage.aspx');"},{ name: "商品管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('0f7609a0-0169-4d13-9e75-0b901c07c728','商品管理','../webSetup/storeOtherShopManage.aspx');"},{ name: "供应商管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('aeb72bd6-5aa7-4fba-a097-9b8f0ad2b81f','供应商管理','../webSetup/supplierManage.aspx');"},{ name: "维修项目",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('7acf3c55-3939-41ba-b525-3a1dfa035ce9','维修项目','../webSetup/saleAfter_weiXiuXiangMuSet.aspx');"},{ name: "套餐管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('6aebe08f-9fff-4492-885f-a207c1e7ae81','套餐管理','../webSetup/saleAfter_taoCanManage.aspx');"}],url: "", target: "_blank"},{ name: "系统管理",font:{'font-style':'微软雅黑'},children:[{ name: "折扣管理",font:{'font-style':'微软雅黑'},url: "", target: "_blank", click: "mdfMenu('36f97396-88d1-4258-a27e-7c5a9003cae8','折扣管理','../saleAfterDiscount/saleAfterDiscountUserManage.aspx');"},],url: "", target: "_blank"}],url: "", target: "_blank", click: "mdfMenu('00000000-0000-0000-0000-000000000001','系统菜单','');"}]);
            buildLink();


            $("#tabList").tabs('add', {
                title:"系统导航",
                content: "<iframe src='navigationPicture.aspx' class=\"tabDefault\"  style='width:100%;height:100%;' frameborder='0' ></iframe>",
                closable:false
            });

        });

        $(window).resize(mainAutoSize);

        function mainAutoSize() {
            $("#menu").css("left", 3);
            $("#menu").css("top",55);

            //改变 tabDefault
            $(".tabDefault").css("height",$(document.body).height() - 80);

        }

        /*
        菜单导航
        */
        function menuClick() {
            $("#menuTree").css("left", 20);
            $("#menuTree").css("top",85);
            $("#menuTreeRight").css("left", 204);
            $("#menuTreeRight").css("top", 4);

            $("#menuTree").show();
            $(document).click(function (event) {
                var id = event.target.id;
                if (id.indexOf("menu") < 0 && id.indexOf("tree") < 0) {
                    $("#menuTree").hide();
                }
            });
        }

         
        //菜单隐藏js

        function hideMenu() {
            try {
                $("#menuTree").hide();
            } catch (e) { }
        }

        //树菜单加载 start
        var setting = {};
        //tab自动添加
        function mdfMenu(menuGuid,t,url) {             
            if(url =="" || url.length <4)
            { 
             hideMenu();  //隐藏菜单
             return ;
            }
             //判断Tab是否存在
            url1 = url;
            //if(url.indexOf("?")>0)
            //{
             //url = url + "&d=" + new Date();
            //}else
            //{
            //url = url + "?d=" + new Date();
            //}
            $("#tabList").tabs('add', {
                title: t,
                content: "<iframe src='" + url + "' name='tabFrame' class=\"tabDefault\"  style='width:100%;height:100%;' frameborder='0' ></iframe>",
                closable: true
            });

            var menuId = $.cookie("menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf");
            if (menuId == undefined) { menuId = ""; }

            if (menuId.indexOf(t) < 0) {
                menuId = t + "," + url1 + ",0"+"|"+menuId;
            }

            $.cookie('menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf', menuId);

            buildLink(); //生成常用菜单
            hideMenu();  //隐藏菜单

        }


        function buildLink() {
            
            var t="";
            var menuId = $.cookie("menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf");
            if (menuId == undefined) { menuId = ""; }
            var info = "<tr><td style='width:15px;height:20px;'></td><td id='menuTb'>常用链接</td></tr><tr><td colspan='2' style='height:2px;background-color:gray;'></tr>";
            var t1 = menuId.split("|");
            var t2 = "";
            for (var i = 0; i < t1.length; i++) {
                t2 = t1[i].split(",");
                if (t2.length > 2) {
                    if(i<10)
                    {
                     t =t+"|"+ t2[0] + "," + t2[1] + ",0";
                    } 
                    info += "<tr  onmouseover=\"this.style.backgroundColor='#e0ecff'\" onmouseout=\"this.style.backgroundColor='#FFFFFF'\"><td style='width:15px;height:25px;'></td><td id='menuTb" + i + "'  onclick=mdfMenu('t','"+t2[0]+"','"+t2[1]+"') >" + t2[0] + "</td></tr>";
                }
            }
            
            $("#menuTb").html(info);
            
            //调整cookie 只保留前十条
             $.cookie('menuIda17a7061-9f34-4ede-828b-3b1396ec4eaf',t);

        }


    </script>


    <script language="javascript" type="text/javascript">

        /*弹出网页对话框*/
        function winopen(url,WinName,w,h,Modal,Shadow,Closed) {

            if (navigator.userAgent.indexOf('iPad') != -1) {
                //winow.open
                parWinClose();
                var z =window.open(url,
                WinName, "height=" + h + ",width=" + w + ",toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no");
                z.focus();
            } else {
                document.getElementById('winDiv').innerHTML = "<iframe src='" + url + "' srcoll='yes'  style='height:100%;width:100%' frameBorder='0' ></iframe>";
                $("#winDiv").window({
                    title: WinName,
                    width: w,
                    height: h,
                    maximizable: false,
                    minimizable: false,
                    modal: Modal,
                    shadow: Shadow,
                    closed: Closed
                });
            }

        }

        function winClose() {
            $('#winDiv').window('close');
        }

</script>


<body  class="easyui-layout">
 <!--顶部导航 start-->
    <div  data-options="region:'north',border:false" style="height:55px;padding-left:15px;padding-right:15px;">
     <table border='0' >
      <tr>
      <td> <img src="../image/DCLogo.png"  alt='logo' /></td>
      <td> <img src="../image/ShineClubLogo.png" style='margin-left:10px;' alt='logo' /></td>
      <td style='width:75%;vertical-align:bottom;color:Blue;'>[<a href='#' onclick="winopen('groupSelfSet.aspx','机构扩展设置',900,500,true,true,false);">九江深丰</a> ]：<a href='#' onclick="winopen('userPersonalChange.aspx','个人设置',900,500,true,true,false);" >张小平</a>  &nbsp;&nbsp;<span id="time"></span></td>
      <td nowrap='nowrap' style='width:300px;'>
        <img src='../image/home.png' alt='机构'  title="机构"   onclick="winopen('groupChoice.aspx','机构选择',900,500,true,true,false);"  />         
        <img id="imgCallSrc" src='../image/voice.png' alt='消息'  title="消息"  onclick="showmsg(0);"  />
        <span id="callSpan" style="color:Red;font-weight:bold;font-size:8px;position:relative;left:-10px;top:0px;z-index:10;"></span>       
        <img src="../image/chat.png"  alt='互动' title="互动"  onclick="winopen('../callManage/call.aspx','互动',800,600,true,true,false);" /> 
        <img src="../image/T-shirt.png"  alt='皮肤'  title="皮肤" onclick="winopen('skinSet.aspx','皮肤设置',900,500,true,true,false);" />
        <img src="../image/help.png"  alt='帮助'  title="帮助" onclick="help();" />
        <img src="../image/exit.png"  alt='退出' title="退出" onclick="exit()" />
      </td>
      </tr>
      </table>
    </div>
    <!--顶部导航 end-->

    <!--菜单栏目 start-->
    <div id="menu"  >
        <div id="menuData"  onmouseover="javascript:this.style.color='black';" onmouseout ="javascript:this.style.color='gray';">导航菜单</div>
    </div>
 

    <!--菜单树 start-->
    <div id="menuTree"  >       
        <ul id="treeDemo" class="ztree" ></ul>     
        <div id="menuTreeRight" >
          <table border='0' cellpadding='0' cellspacing='0' id='menuTb' width='98%'>
            
           
          </table>
        </div>
        <div id="menuTreeBottom" style="margin-left:3px;">
        <!--菜单查询 start-->
         <!-- 查询:--><input type="text" id="menuSearch" style="border:none;" width="100px" />
        <!--菜单查询 end-->
        </div>
    </div>
    <!--菜单树 end--> 
  
    <div data-options="region:'center'">
    <div class="easyui-tabs" id="tabList" fit="true" border="false" >          
           <div id="tabMenu" title="菜单导航"    style="width:100px;" > 
           </div>  
     </div>       
     </div>
    <!--菜单栏目 end-->
     
    <!--底部 start-->
 
    <!--底部 end-->
      
    <!--放置 弹出窗 start-->
    <div id="winDiv"  ></div>
    <!--放置 弹出窗 end-->

    <!--放置锁屏代码 start-->

    <!--放置锁屏代码 end-->


</body>

<script language="javascript" type="text/javascript" >

    //退出系统
    function exit() {
        $.messager.confirm('退出', '您确定退出本系统?', function (r) {
            if (r) {
                location.href = "../loginExit.aspx";
            }
        });
    }


    //系统帮助
    function help() {
         
    }

    //菜单查询
    function searchText() {
         
    }


    function showmsg(sort) {

        if (sort == "0") {
            //弹出消息中心页面
            winopen('../callManage/callCenter.aspx', '互动信息中心', 800, 600, true, true, false);
        } else {
            //自动加载当前消息信息
            //return; //暂停自动刷新
        $.get("../callManage/callExec.aspx?d=" + new Date(), {
    }, function (data) {
		data = "";//[paddy]avoid web error, delete later
        if (data != "") {
            var dataT = data.split('7E6065F2860648479F727CFB2E4A424C|');
            if (dataT.length > 1) {
                if (dataT[0] != 0) {
                    $("#imgCallSrc").attr("src", "../image/voice2.gif");
                    $("#callSpan").html(dataT[0]);
                }
                tiShiInfo = dataT[1];

            }
        } else {
            $("#imgCallSrc").attr("src", "../image/voice.png");
            $("#callSpan").html("");
        }
    });

    }
    }
    function exa(m) { alert(m); }

    function setTime() {
        var dt = new Date();
        var arr_week = new Array("周日", "周一", "周二", "周三", "周四", "周五", "周六");
        var strWeek = arr_week[dt.getDay()]; //星期
        var strHour = dt.getHours();
        var strMinutes = dt.getMinutes();
        var strSeconds = dt.getSeconds();
        if (strMinutes < 10) strMinutes = "0" + strMinutes;
        if (strSeconds < 10) strSeconds = "0" + strSeconds;
        var strYear = dt.getFullYear() + "年";
        var strMonth = (dt.getMonth() + 1) + "月";
        var strDay = dt.getDate() + "日";
        var strTime = strHour + ":" + strMinutes + ":" + strSeconds;
         time.innerHTML = "[" + strYear + strMonth + strDay + "&nbsp;" + strTime +"]";
    }
    //setInterval("setTime()", 1000);

    //动态修改title
    var msgI = 0;
    var msgT = document.title;
    var tiShiInfo = "";//系统提示信息
    function msgShow() {
        
        if ($("#callSpan").html() != "") {
            document.title = msgI % 2 == 0 ? "【　　　】 - " + msgT : "【新消息】 - " + tiShiInfo + msgT;
        } else {
            document.title = msgT;
        }
        msgI++;
    }
    setInterval(msgShow,10000);

    //互动信息辅助函数
    function showmsgT() {
        showmsg(1);
    }
    //互动信息获取
    setInterval(showmsgT,500000);
    showmsgT();
</script>

</html>