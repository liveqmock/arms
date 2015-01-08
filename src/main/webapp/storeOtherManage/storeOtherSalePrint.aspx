
<html>
<head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><title>
	(销售/退库)单打印
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
    <form name="form1" method="post" action="storeOtherSalePrint.aspx?billGuid=undefined&amp;d=Thu+Jan+08+2015+13%3a09%3a30+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMjY0OTU5MjQwZGTpTrfu3cmqZZN1x7fRnzilJsa6Og==" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="0595A083" />
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
          <td>客户名:</td>
          <td></td>
       
          </tr>
          <tr> 
           <td>销售类型:</td>
          <td></td>
          <td>发票类型:</td>
          <td></td>
         <td>发票号:</td>
          <td></td>
          <td>实收金额:</td>
          <td></td>
         </tr>
           <tr> 
           <td>送货方式:</td>
          <td></td>
          <td>运输公司:</td>
          <td></td>
         <td>负责人:</td>
          <td></td>
          <td>负责人电话:</td>
          <td></td>
         </tr>
         <tr>
         <td>备注:</td>
         <td colspan="5">
          </td>
          <td>会员号:</td><td></td>
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