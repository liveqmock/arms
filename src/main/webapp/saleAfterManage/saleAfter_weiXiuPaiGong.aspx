<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../JS/Frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../JS/Frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../JS/Frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../JS/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

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
    <form name="form1" method="post" action="saleAfter_weiXiuPaiGong.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&amp;dMon+Jan+05+2015+15%3a44%3a46+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2ODMzMjE5NzcPZBYCAgEPZBYCAgcPFgIeC18hSXRlbUNvdW50AgEWAgIBD2QWAmYPFRgkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwATEkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwACRiNzNjOGE0Yy0zZmQ1LTRkNWMtODZkNS1mODZmZjYyYmNmYTAG5L+d5YW7JGI3M2M4YTRjLTNmZDUtNGQ1Yy04NmQ1LWY4NmZmNjJiY2ZhMAAG5L+d5YW7DjMwLDAwMEtN5L+d5YW7BDQuOTUGNDk1LjAwDOWOguWutuS/neS/rgAkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwACRiNzNjOGE0Yy0zZmQ1LTRkNWMtODZkNS1mODZmZjYyYmNmYTAkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwJGI3M2M4YTRjLTNmZDUtNGQ1Yy04NmQ1LWY4NmZmNjJiY2ZhMAAkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwJGI3M2M4YTRjLTNmZDUtNGQ1Yy04NmQ1LWY4NmZmNjJiY2ZhMCRiNzNjOGE0Yy0zZmQ1LTRkNWMtODZkNS1mODZmZjYyYmNmYTAkYjczYzhhNGMtM2ZkNS00ZDVjLTg2ZDUtZjg2ZmY2MmJjZmEwZBgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAQUGY2hrU3lu2VFg8UXGD/Q94l4HDxqRCjG7F/w=" />
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


    <div style="margin-left:5px;margin-top:5px;margin-right:5px;">
         

         <!--按钮区域 start-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
            <td align="right">
             <input id="chkSyn" type="checkbox" name="chkSyn" checked="checked" /><label for="chkSyn">同步</label>
             <a onclick="return saveCheck();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
             <a onclick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>
   
            </td>
            </tr>
            <tr>
            <td style="height:2px;"></td>
            </tr>
            </table>
         <!--按钮区域 end-->
         
         <!--数据列表 start-->
         <table  border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
          <!--维修项目 start-->
         
          <tr>
           <td width='30px'>NO.</td><td  width='40px'>工段</td><td>维修内容</td>
           <td style="text-align:right;width:60px;">工时</td><td  style="text-align:right;width:65px;">工时费</td>
           <td  width="70px">帐套</td><td  width="70px">子帐套</td>
           <td width='110px'>维修班组</td><td  width='110px' colspan="2">主修人</td>
          </tr>
         
         <tr ondblclick=changePaiGong('b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0')>
           <td style="width:30px;text-align:center;">1
           <input type="hidden" id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0"  name='weiXiuInfo' value=""  />
           <input type="hidden" id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0GongDuan"   value="保养"  />
           <input type="hidden" id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0BanZuHidd"   value=""  />
           </td>
           <td  width='40px'>保养</td>
           <td>30,000KM保养</td>
           <td style="text-align:right;">4.95</td>
           <td style="text-align:right;">495.00</td>
           <td>厂家保修</td>
           <td></td>
           <td>
           
           <span  id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0BanZuB"></span> 
           <select id='b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0BanZu' style="width:100px" onchange=setZhuXiuRenDropByBanZu('b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0') ></select> </td>
           <td style="width:120px;">
           
           <span id='b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0ZhuXiuRenB'></span>
           <select id='b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0ZhuXiuRen' style="width:100px"   onchange=setPaiGongCopy('b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0') ></select>
           </td><td  style="width:40px;">
           <input type="button" id="b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0ZhuXiuRenButton" style="width:20px;" onClick="choicePaiGong('b73c8a4c-3fd5-4d5c-86d5-f86ff62bcfa0')" />
           </td>
          </tr>
         
         <tr>
           <td width='10px'></td>
           <td>合计</td>
           <td></td>
           <td  style="text-align:right;">4.95</td>
           <td  style="text-align:right;">495.00</td>
           <td></td>
           <td></td> 
           <td></td> 
           <td></td>
           <td></td> 
          </tr>
         
        <!--维修项目 end-->
         </table>
         <!--数据列表 end-->
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DC99BFC1" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBAKJyojBAQK/16eQCwKj7e2BCAKmtLTPAXa9dgy1KrrbrVf360+vNimTIVqV" />
</div></form>

    <script language="javascript" type="text/javascript">

        //初始化已经完检的单据禁止操作
         
        //jquery 获取班组信息

        //jquery 获取主修人信息

        //已经完检的单据将禁止派工


        //获取当前工段信息 返回维修班组及班组下的人员信息 JSON格式

        var banZuInfo =$.parseJSON('[{"gongDuan":"班组一"},{"gongDuan":"保养","banZuList":[{"banZuId":"1006","banZuName":"快修二组","userList":[{"userGuid":"f993cbe2-a5b1-4780-be6b-00355f2f54ff","userName":"张博"}]},{"banZuId":"1001","banZuName":"一般维修二组","userList":[{"userGuid":"58293971-706c-48e5-93c1-5b2092222a13","userName":"李志基"}]},{"banZuId":"1005","banZuName":"快修一组","userList":[{"userGuid":"58293971-706c-48e5-93c1-5b2092222a13","userName":"李志基"}]},{"banZuId":"1000","banZuName":"一般维修一组","userList":[{"userGuid":"3d16b252-396a-4164-8a2b-6d4ea4c98bce","userName":"李栋"}]}]}]');

        $(function () {
            var obj = document.getElementsByName("weiXiuInfo");
            for (var i = 0; i < obj.length; i++) {
                var id = obj[i].id;
                if (obj[i].value != "" || $("#" + id + "BanZuHidd").val() != "") {

                    $("#" + id + "BanZu").css("display", "none");
                    $("#" + id + "ZhuXiuRen").css("display", "none");
                    $("#" + id + "ZhuXiuRenButton").css("visibility", "hidden");
                } else {
                    setBanZuDropByGongDuan(id);
                }
            }             
        })


        //已派工项目 修改
        function changePaiGong(id) { 
          //修改 display
            $("#" + id + "BanZu").css("display", "block");
            $("#" + id + "ZhuXiuRen").css("display", "block");
            $("#" + id + "ZhuXiuRenButton").css("visibility", "visible");
            $("#" + id + "BanZuB").css("display", "none");
            $("#" + id + "ZhuXiuRenB").css("display", "none");

            setBanZuDropByGongDuan(id);

        }



        function setBanZuDropByGongDuan(id) {
            if (banZuInfo == "" || banZuInfo ==null) {return;}

            var thisValue = $("#" + id + "BanZuB").html(); 
            $("#" + id + "BanZu").empty();
            $("#" + id + "BanZu").append("<option value=''></option>");
          

            var gongDuan = $("#" + id + "GongDuan").val();
            for (var i = 0; i < banZuInfo.length; i++) {
                if (banZuInfo[i].gongDuan == gongDuan) {
                    for (var j = 0; j < banZuInfo[i].banZuList.length; j++) {
                        if (thisValue == banZuInfo[i].banZuList[j].banZuName) {
                            $("#" + id + "BanZu").append("<option value='" + banZuInfo[i].banZuList[j].banZuId + "' selected=true>" + banZuInfo[i].banZuList[j].banZuName + "</option>");
                        } else {
                            $("#" + id + "BanZu").append("<option value='" + banZuInfo[i].banZuList[j].banZuId + "'>" + banZuInfo[i].banZuList[j].banZuName + "</option>");
                        } 
                    }
                }
            }


            if ($("#" + id + "BanZu").val() !="") {
            setZhuXiuRenDropByBanZu(id);
            }

        }


        function setZhuXiuRenDropByBanZu(id) {
            $("#" + id + "ZhuXiuRen").empty();
            $("#" + id + "ZhuXiuRen").append("<option value=''></option>");

            var thisValue = $("#" + id + "ZhuXiuRenB").html();
            var gongDuan = $("#" + id + "GongDuan").val();
            var banZuId = $("#" + id + "BanZu").val();
            if (banZuId == "") { return; }

            for (var i = 0; i < banZuInfo.length; i++) {
                if (banZuInfo[i].gongDuan == gongDuan) {
                    for (var j = 0; j < banZuInfo[i].banZuList.length; j++) {                       
                        if (banZuInfo[i].banZuList[j].banZuId == banZuId) {
                            for (var k = 0; k < banZuInfo[i].banZuList[j].userList.length; k++) {
                                if (thisValue == banZuInfo[i].banZuList[j].userList[k].userName) {
                                    $("#" + id + "ZhuXiuRen").append("<option value='" + banZuInfo[i].banZuList[j].userList[k].userGuid + "' selected=true>" + banZuInfo[i].banZuList[j].userList[k].userName + "</option>");
                                } else {
                                    $("#" + id + "ZhuXiuRen").append("<option value='" + banZuInfo[i].banZuList[j].userList[k].userGuid + "'>" + banZuInfo[i].banZuList[j].userList[k].userName + "</option>");
                                }
                            }
                            break;
                        }

                    }
                }
            }

        }







        //快速派工
        function setPaiGongCopy(id) {

            if ($("#chkSyn").attr("checked") != "checked") {return false;}
            //相同工段快速派工
            var gongDuan = $("#" + id + "GongDuan").val();
            var banZuId = $("#" + id + "BanZu").val();
            var zhuXiuRen = $("#" + id + "ZhuXiuRen").val();

            var obj = document.getElementsByName("weiXiuInfo");
            var tmpGongDuan = "";
            var tmpId = "";
            for (var i = 0; i < obj.length; i++) {
                tmpId = obj[i].id;
                tmpGongDuan = $("#" + tmpId + "GongDuan").val();
                if (tmpGongDuan == gongDuan && id != tmpId && $("#" + tmpId + "BanZu").css("display") !="none") { 
                    $("#" + tmpId + "BanZu").val(banZuId);
                    $("#"+id+"ZhuXiuRen option").each(function(){ 
                     var V = $(this).val().toString();	
                     var T = $(this).text().toString();	
                     var option = $("<option>").val(V).text(T);
                     $("#" + tmpId + "ZhuXiuRen").append(option);
                 });
                     $("#" + tmpId + "ZhuXiuRen").val(zhuXiuRen);


                  }
                    
                }
            }




            //直接选择快速派工start

            function choicePaiGong(id) {
                var gongDuan = $("#" + id + "GongDuan").val();
                var val = window.showModalDialog("saleAfter_WeiXiuPaiGongUserShow.aspx?gongDuanName="+encodeURIComponent(gongDuan)+"&d="+new Date(),"c","dialogWidth=300px;dialogHeight=500px");
                if(!val)    val= window.ReturnValue;

                // banZuId + "'" + banZuName + "'" + userGuid + "'" + userName
                var t=val.split("'");
                 
                if (t.length != 4) {return;}
                var banZuName = t[1];
                var banZuId = t[0];
                var ZhuXiuRenId = t[2];
                var zhuXiuRen = t[3];
                $("#" + id + "BanZu").append("<option value='" + banZuId + "' selected=true>" + banZuName + "</option>");
                $("#" + id + "ZhuXiuRen").append("<option value='" + ZhuXiuRenId + "' selected=true>" + zhuXiuRen + "</option>");

                $("#" + id + "BanZu").val(banZuId);
                $("#" + id + "ZhuXiuRen").val(ZhuXiuRenId);

                setPaiGongCopy(id); //同步到所有
                       
            }

            //直接选择快速派工end



            //派工保存 start
            function saveCheck() { 
                var str = ""; 
                var obj = document.getElementsByName("weiXiuInfo");
                var id = "";
                for (var i = 0; i < obj.length; i++) {
                    id = obj[i].id;
                    if ($("#" + id + "ZhuXiuRen").val() != "" && $("#" + id + "ZhuXiuRen").val() != "null" && $("#" + id + "ZhuXiuRen").val()!=null) {
                       
                       str +=id+","+$("#" + id + "BanZu").val() + "," + $("#" + id + "ZhuXiuRen").val()+"|";
                    }
                     
                }
                 
                if (str == "") {
                    alert("无任何操作项目!");
                } else {
                    //提交数据
                $.post("saleAfter_WeiXiuPaiGongExec.aspx?d=" + new Date(), {
                    saleAfterGuid: "d4e10073-1054-4c86-b552-f44623513d0b",
                    str: str,
                    type: "saleAfterWeiXiuPaiGong"
                }, function (data) {
                    if (data == "ok") {
                        location.href = "saleAfter_weiXiuPaiGong.aspx?saleAfterWeiXiuGuid=d4e10073-1054-4c86-b552-f44623513d0b&d="+new Date();
                    } else {
                        alert(data);
                    }
                });
                }

                 
                return false;
            }
            //派工保存 end



            function winClose() {
                if (!confirm("您确定要退出维修派工?")) {
                    return false;
                }

                try {
                    parent.parent.parWinClose();
                } catch (e) {
                    parent.window.opener = null;
                    parent.window.close();
                }
                return false;
            }


    </script>

</body>
</html>