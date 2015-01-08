

<html>
<head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>
	例外单打印
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
  <form name="form1" method="post" action="storeOtherExceptionPrint.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNzcwODEwODQ4ZGS2C8Y7/uObf1vaHMnWiovZyxCerg==" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F3A9AE7C" />
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
          <table border="0"  id="a" style="width:100%;table-layout:fixed;">
          <tr>
          <td colspan="6" align="center" style="font-size:12px;height:23px;font-weight:bold;vertical-align:top;"></td>
          </tr>
          <tr>
          <td>单据编号:</td>
          <td></td>
          <td>录入日期:</td>
          <td></td>
          <td>仓库:</td>
          <td ></td>
          <td>类型:</td>
          <td></td>       
          </tr>
     
         <tr>
         <td>备注:</td>
         <td colspan="5">
          </td>
          <td>登记人:</td><td></td>
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
         <tr><td style="text-align:right;font-size:9px;"><br /></td></tr>
       </table>
    </div>
    </form>

   

</body>
</html>