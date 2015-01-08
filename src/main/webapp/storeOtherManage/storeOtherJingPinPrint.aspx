
<html>
<head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>
	(精品出库/退库)单打印
</title>
    
<STYLE type=text/css media=print>.Noprint {
	DISPLAY: none
}
</Style>
<style type="text/css" >
body, td, th 
{
	vnd.ms-excel.numberformat:@;
    font-family: "Arial" ,"宋体" ,  "Helvetica" , "sans-serif";
    font-size:10px; 
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
    margin-left: 0px; margin-top:0px;
    SCROLLBAR-HIGHLIGHT-COLOR: #F5F9FF;
    SCROLLBAR-SHADOW-COLOR: #828282;
    SCROLLBAR-3DLIGHT-COLOR: #828282;
    SCROLLBAR-ARROW-COLOR: #797979;
    SCROLLBAR-TRACK-COLOR: #ECECEC;
    SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
    }
    
.printTable { border:#000000 solid 1px; border-collapse:collapse;table-layout:fixed; }
.printTable tr { height:20px;}
.printTable th { font-weight: normal; border:#000000 solid 1px;}
.printTable td { border:#000000 solid 1px;white-space:nowrap;overflow:hidden;}
.PageNext{page-break-after:always;}
</style>
</head>
<body>
    <form name="form1" method="post" action="storeOtherJingPinPrint.aspx?thisGuid=undefined&amp;d=Thu+Jan+08+2015+13%3a18%3a22+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjY0OTU5MjQwZGTRq4XC5d1Rb2ujK/q+xZ+bC2YTkg==" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="59B9D799" />
</div> 
   
  <table border="0" class="Noprint" >
  <tr>
  <td>
  <input type="button" value="打印" onclick="javascript:show();" />
  </td>
  </tr>
  </table>

  <script language="javascript" type="text/javascript" >

      function show() {
          window.print();
      }
  </script>
    
    <div align="center">
     

       <table border="0" cellpadding="0" cellspacing="0" width="730px" >
         <tr>
         <td>
          <!--主项数据start-->
          <table border="0"  id="a" style="width:730px;">
          <tr>
          <td colspan="8" align="center" style="font-size:12px;height:23px;font-weight:bold;vertical-align:top;"></td>
          </tr>
          <tr>
          <td style="width:50px;">车牌号:</td>
          <td style="width:90px;"></td>
          <td style="width:80px;">车主:</td>
          <td style="width:100px;"></td>
          <td style="width:50px;">车架号:</td>
          <td style="width:250px;" ></td>
          <td style="width:50px;">经手人:</td>
          <td style="width:100px;"></td>
        </tr>
          <tr> 
           <td  style="width:50px;">收货人:</td>
          <td style="width:90px;"></td>
          <td  style="width:80px;">出库单号:</td>
          <td style="width:100px;"></td>
         <td  style="width:80px;">出库日期:</td>
          <td style="width:250px;"></td>
          <td  style="width:80px;">销售单号:</td>
          <td style="width:100px;"></td>
         </tr>
        
         <tr>
         <td>备注:</td>
         <td colspan="5">
          </td>
          <td>出货仓库:</td><td></td>
         </tr>
         
          </table>
          <!--子项数据end-->
         </td>
         </tr>
       <tr>
         <td>
         <br />
           <!--明细数据 start-->
            <table border="1"  class="printTable"  style="width:100%;table-layout:fixed;" >
             
            </table>
           <!--明细数据 end-->
         </td>
         </tr>
         <tr><td style="text-align:right;font-size:9px;">
         <br />
         <span id="labPrint1">仓库发料:</span><input type="text" style="border:0px;width:120px;" />
         <span id="labPrint2">车间领料:</span><input type="text" style="border:0px;width:120px;" />
         </td></tr>
       </table>
    </div>
    </form>

    <script language ="javascript" type="text/javascript">

        if ("".indexOf("精品退库单") > 0) {
            document.getElementById("labPrint1").innerHTML = "配件审核:";
            document.getElementById("labPrint2").innerHTML = "精品审核:";
        }

         
    </script>
   

</body>
</html>