

<html>
<head><title>
  精品出库退库管理
</title>

    <style type="text/css" >
      td
      {
        height:25px;
        white-space:nowrap;
        }
    </style>


 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

<script language="javascript" type="text/javascript" >
 
    var tmp = '#FFFFFF';
    $(function () {
        $('#tbList tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });
 
        $('#tbList tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });
 
</script>
 
  
<body>
    <form name="form1" method="post" action="storeOtherJingPinManage.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTM5NDQ4MDY1Mw9kFgICAw9kFgICCw8WAh4LXyFJdGVtQ291bnQCAhYEAgEPZBYCZg8VCyQzNDVjYmQzZC1jYmFlLTQwYzUtOTAzZi01OTZlMjA4MDg3NWIGeGluQ2hlDFhTRDIwMTQxMTA1NwExDFhTRDIwMTQxMTA1Ny3kuK3lub/moLjmuZblj6PmlofmoaXpo47lipvlj5HnlLXmnInpmZDlhazlj7gM5pel5pys5Liw55SwDOi/m+WPo+mcuOmBkyTov5vlj6PpnLjpgZPmoIflh4bniYjvvIjoh6rliqjms6LvvIkM54+N54+g55m96ImyAGQCAg9kFgJmDxULJDMwNGI4Y2ViLTM5ODctNDY3My1hNTkzLWMwNDA0NjAxMmRmOAZ4aW5DaGUMWFNEMjAxNDExMDU4ATIMWFNEMjAxNDExMDU4LeS4reW5v+aguOa5luWPo+aWh+ahpemjjuWKm+WPkeeUteaciemZkOWFrOWPuAzml6XmnKzkuLDnlLAM6L+b5Y+j6Zy46YGTJOi/m+WPo+mcuOmBk+agh+WHhueJiO+8iOiHquWKqOazou+8iQznj43nj6Dnmb3oibIRSlRFQlgzRko2RUsxODkyOTZkZEGRZUTKni3q/+ZsanY/Eq1I7FDj" />
</div>

    <div style="margin-left:10px;margin-top:10px;" >
      <table border="0" style="width:100%;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>配件管理</span>(精品出库/退库)
         </td><td align="right">
           </td></tr>
         </table> 
       <div>
       <!--查询条件 start-->
       <table border="0" cellpadding="0" cellspacing="0"  style="width:800px;">
        <tr><td colspan="8" style="height:1px;"></td></tr>
        <tr>
        <td>车架号:</td>
        <td><input name="txtCheJiaHao" type="text" maxlength="17" id="txtCheJiaHao" /> </td>       

        <td>客户名:</td>
        <td><input name="txtKeHuName" type="text" value="中广核湖口文桥风力发电有限公司" maxlength="17" id="txtKeHuName" /> </td>
        <td>
        <table id="radBusiSort" border="0">
  <tr>
    <td><input id="radBusiSort_0" type="radio" name="radBusiSort" value="预装" /><label for="radBusiSort_0">预装</label></td><td><input id="radBusiSort_1" type="radio" name="radBusiSort" value="新车" checked="checked" /><label for="radBusiSort_1">新车</label></td>
  </tr>
</table>
        </td>
        <td> 
        <table id="radIoFlag" border="0">
  <tr>
    <td><input id="radIoFlag_0" type="radio" name="radIoFlag" value="出库" checked="checked" /><label for="radIoFlag_0">出库</label></td><td><input id="radIoFlag_1" type="radio" name="radIoFlag" value="退库" /><label for="radIoFlag_1">退库</label></td>
  </tr>
</table>  
        </td>
        <td align="center">
        <input type="submit" name="btnSearch" value="查询" id="btnSearch" />
        </td>
        <td>
        <input type="button" value="出库历史"  onclick="changeChuKuHistory();"   />
        </td>
        </tr>
        </table> 
       <!--查询条件 end-->
       </div>

       <div>
        <table border="1" id="tbList" style="border-collapse:collapse;border:1px solid gray;width:98%"  >
         
          <tr>
          <td style="text-align:center;width:30px;">NO.</td>
          <td>业务单号</td>
          <td>客户名</td>
          <td>厂家品牌</td>
          <td>车系</td>
          <td>车型</td>
          <td>车身颜色</td>
          <td>车架号</td>
          </tr>
          
          <tr  onclick="billShow('345cbd3d-cbae-40c5-903f-596e2080875b','xinChe','XSD201411057')">
          <td  style="text-align:center;width:30px;">1</td>
          <td>XSD201411057</td>
          <td>中广核湖口文桥风力发电有限公司</td>
          <td>日本丰田</td>
          <td>进口霸道</td>
          <td>进口霸道标准版（自动波）</td>
          <td>珍珠白色</td>
          <td></td>
          </tr>
          
          <tr  onclick="billShow('304b8ceb-3987-4673-a593-c04046012df8','xinChe','XSD201411058')">
          <td  style="text-align:center;width:30px;">2</td>
          <td>XSD201411058</td>
          <td>中广核湖口文桥风力发电有限公司</td>
          <td>日本丰田</td>
          <td>进口霸道</td>
          <td>进口霸道标准版（自动波）</td>
          <td>珍珠白色</td>
          <td>JTEBX3FJ6EK189296</td>
          </tr>
           
        </table>
       </div>

      
    </div>
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="D8C224ED" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCgLdvczbCwL+8uS9DgKmvN/3DALq/JboBALmhpHTBAL2ooLEAQLJ1LXACgK/17bACgKfmOraCgKln/PuCmOzpl0GmIMMzcHwiapFkWa40D2m" />
</div></form>

    <script language="javascript"  type="text/javascript" >

        //调用精品出库和退库页面
        function billShow(billGuid,busiSort,billNo) {
            var a = $("#radIoFlag_0").attr("checked");
            var ioFlag = "1";
            var url = "";

            if (a == undefined) {ioFlag = "-1";}

            url = "../storeOtherManage/storeOtherJingPinOutBill.aspx?billNo="+billNo+"&busiSort="+busiSort+"&ioFlag="+ioFlag+"&billGuid=" + billGuid + "&d=" + new Date();

            z = window.open(url, '精品出退库', 'height=600,width=990,top=35,left=60,toolbar=no,menubar=no,scrollbars=yes, resizable=yes,location=no, status=no');
            z.focus();
            //parent.winopen(url,"精品出退库", 990, 600, true, true, false);
           
        }



        function changeChuKuHistory() {
            location.href = "storeOtherJingPinOutBillManage.aspx?d="+new Date();
        }


    </script>

</body>
</html>