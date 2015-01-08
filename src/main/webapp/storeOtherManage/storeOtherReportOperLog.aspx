
<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=74feba2d2e70452cbc1840620b9de165" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=74feba2d2e70452cbc1840620b9de165" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=74feba2d2e70452cbc1840620b9de165" type="text/javascript"></script><link href="../style/common.css?v=74feba2d2e70452cbc1840620b9de165" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<script language="javascript" type="text/javascript" >

    var tmp = '#FFFFFF';
    $(function () {
        $('#tb tr').mouseover(function () {
            tmp = this.style.backgroundColor;
            this.style.backgroundColor = '#eaf2ff';
        });

        $('#tb tr').mouseout(function () {
            this.style.backgroundColor = tmp;
        });
    });



    function storeOtherOperJiShiKuCun() {
        location.href = "storeOtherReportJiShiKuCun.aspx"; //及时库存
    }

</script>

<body>
    <form name="form1" method="post" action="storeOtherReportOperLog.aspx?d=Thu+Jan+08+2015+11%3a56%3a52+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTExMTYzMjU4OTIPZBYCAgMPZBYCAgkPEA8WBh4NRGF0YVRleHRGaWVsZAUBYh4ORGF0YVZhbHVlRmllbGQFAWEeC18hRGF0YUJvdW5kZ2QQFQIV5Lmd5rGf5Liw55Sw6YWN5Lu25LuTABUCBTYwMTJBABQrAwJnZ2RkZIfzkZisxirX/fETmJEeodeAJ3CP" />
</div>

     <div style="margin-top:10px;margin-left:10px;">
      <table border="0" cellpadding="0" cellspacing="0"  width="900px">
       <tr style="height:25px;">
       <td>操作日期:</td>
       <td><input name="txtDateStart" type="text" value="2015-1-8" id="txtDateStart" class="inputCss easyui-datebox" style="width:100px;" /></td>
       <td>结束日期:</td>
       <td><input name="txtDateEnd" type="text" value="2015-1-8" id="txtDateEnd" class="inputCss easyui-datebox" style="width:100px;" /></td>
       <td>商品编码:</td>
       <td><input name="txtShopId" type="text" maxlength="15" id="txtShopId" style="width:100px;" /></td>
       <td>商品名称:</td>
       <td><input name="txtShopName" type="text" maxlength="15" id="txtShopName" style="width:100px;" /></td>
       </tr>
       <tr style="height:25px;">
        <td>仓库选择:</td>
        <td><select name="ddlCangKu" id="ddlCangKu" style="width:100px;">
	<option value="6012A">九江丰田配件仓</option>
	<option selected="selected" value=""></option>

</select></td>
        <td>操作类型:</td>
        <td>
        <input name="txtSort" type="text" id="txtSort" style="width:100px;" />
        </td>
        <td>
         <input type="submit" name="btnSearch" value="查询" id="btnSearch" />
         <input type="button" value="及时库存"  onclick="storeOtherOperJiShiKuCun();" />
         </td>
       </tr>
      </table>
       
       <!--数据展示 start-->
      <table  border="1" id="tb" style="border:1px solid gray;border-collapse:collapse;width:98%;"  >
        
          <tr>
          <td>NO.</td>
          <td>仓库名</td>
          <td>商品编码</td>
          <td>商品名称</td>
          <td>操作时间</td>
          <td style="text-align:right;">数量</td>
          <td style="text-align:right;">成本单价</td>
          <td style="text-align:right;">成本总额</td>
          <td style="text-align:right;">销售价</td>
          <td style="text-align:right;">销售总额</td>
          <td>业务单号</td>
          <td>业务类别</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">1</td>
          <td>九江深丰配件仓</td>
          <td>XCPK</td>
          <td>车牌扣</td>
          <td>2015-1-8 11:55:28</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">1.000</td>
          <td style="text-align:right;">-1.00000</td>
          <td style="text-align:right;">5.00</td>
          <td style="text-align:right;">-5.0000</td>
          <td>WXD20150107004</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">2</td>
          <td>九江丰田配件仓</td>
          <td>521020R902</td>
          <td>汽车保险杠外接板</td>
          <td>2015-1-8 11:13:32</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">235.400</td>
          <td style="text-align:right;">-235.40000</td>
          <td style="text-align:right;">317.00</td>
          <td style="text-align:right;">-317.0000</td>
          <td>WXD20150105017</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">3</td>
          <td>九江深丰配件仓</td>
          <td>XCPK</td>
          <td>车牌扣</td>
          <td>2015-1-8 11:01:02</td>
          <td  style="text-align:right;">-2.00</td>
          <td style="text-align:right;">1.000</td>
          <td style="text-align:right;">-2.00000</td>
          <td style="text-align:right;">5.00</td>
          <td style="text-align:right;">-10.0000</td>
          <td>WXD20150108007</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">4</td>
          <td>九江深丰配件仓</td>
          <td>XCPK</td>
          <td>车牌扣</td>
          <td>2015-1-8 10:35:53</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">1.000</td>
          <td style="text-align:right;">-1.00000</td>
          <td style="text-align:right;">5.00</td>
          <td style="text-align:right;">-5.0000</td>
          <td>WXD20150102003</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">5</td>
          <td>九江丰田配件仓</td>
          <td>T400104002</td>
          <td>发动机高效清洗剂</td>
          <td>2015-1-8 10:24:14</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">45.000</td>
          <td style="text-align:right;">-45.00000</td>
          <td style="text-align:right;">138.00</td>
          <td style="text-align:right;">-138.0000</td>
          <td>WXD20150108007</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">6</td>
          <td>九江丰田配件仓</td>
          <td>9043012031</td>
          <td>密封垫片</td>
          <td>2015-1-8 10:24:14</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">3.590</td>
          <td style="text-align:right;">-3.59000</td>
          <td style="text-align:right;">6.00</td>
          <td style="text-align:right;">-6.0000</td>
          <td>WXD20150108007</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">7</td>
          <td>九江丰田配件仓</td>
          <td>9091510003</td>
          <td>机油滤芯</td>
          <td>2015-1-8 10:24:13</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">50.500</td>
          <td style="text-align:right;">-50.50000</td>
          <td style="text-align:right;">68.00</td>
          <td style="text-align:right;">-68.0000</td>
          <td>WXD20150108007</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">8</td>
          <td>九江丰田配件仓</td>
          <td>0888083401</td>
          <td>SN0W20机油</td>
          <td>2015-1-8 10:24:12</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">275.787</td>
          <td style="text-align:right;">-275.78700</td>
          <td style="text-align:right;">398.00</td>
          <td style="text-align:right;">-398.0000</td>
          <td>WXD20150108007</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">9</td>
          <td>九江丰田配件仓</td>
          <td>9043012031</td>
          <td>密封垫片</td>
          <td>2015-1-8 10:22:42</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">3.590</td>
          <td style="text-align:right;">-3.59000</td>
          <td style="text-align:right;">6.00</td>
          <td style="text-align:right;">-6.0000</td>
          <td>WXD20150108006</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">10</td>
          <td>九江丰田配件仓</td>
          <td>9091510003</td>
          <td>机油滤芯</td>
          <td>2015-1-8 10:22:40</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">50.500</td>
          <td style="text-align:right;">-50.50000</td>
          <td style="text-align:right;">68.00</td>
          <td style="text-align:right;">-68.0000</td>
          <td>WXD20150108006</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">11</td>
          <td>九江丰田配件仓</td>
          <td>0888083401</td>
          <td>SN0W20机油</td>
          <td>2015-1-8 10:22:38</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">275.787</td>
          <td style="text-align:right;">-275.78700</td>
          <td style="text-align:right;">398.00</td>
          <td style="text-align:right;">-398.0000</td>
          <td>WXD20150108006</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">12</td>
          <td>九江丰田配件仓</td>
          <td>YGJ</td>
          <td>雨刮精</td>
          <td>2015-1-8 9:46:43</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">4.000</td>
          <td style="text-align:right;">-4.00000</td>
          <td style="text-align:right;">10.00</td>
          <td style="text-align:right;">-10.0000</td>
          <td>WXD20150108003</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">13</td>
          <td>九江丰田配件仓</td>
          <td>9043012031</td>
          <td>密封垫片</td>
          <td>2015-1-8 9:46:43</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">3.590</td>
          <td style="text-align:right;">-3.59000</td>
          <td style="text-align:right;">6.00</td>
          <td style="text-align:right;">-6.0000</td>
          <td>WXD20150108003</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">14</td>
          <td>九江丰田配件仓</td>
          <td>90915YZZJ1</td>
          <td>机油滤芯</td>
          <td>2015-1-8 9:46:42</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">29.000</td>
          <td style="text-align:right;">-29.00000</td>
          <td style="text-align:right;">39.00</td>
          <td style="text-align:right;">-39.0000</td>
          <td>WXD20150108003</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">15</td>
          <td>九江丰田配件仓</td>
          <td>JX5W-30</td>
          <td>机油</td>
          <td>2015-1-8 9:46:42</td>
          <td  style="text-align:right;">-4.00</td>
          <td style="text-align:right;">35.000</td>
          <td style="text-align:right;">-140.00000</td>
          <td style="text-align:right;">74.50</td>
          <td style="text-align:right;">-298.0000</td>
          <td>WXD20150108003</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">16</td>
          <td>九江深丰配件仓</td>
          <td>521190P903</td>
          <td>保险杠</td>
          <td>2015-1-8 9:33:47</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">907.400</td>
          <td style="text-align:right;">907.40000</td>
          <td style="text-align:right;">1297.00</td>
          <td style="text-align:right;">1297.0000</td>
          <td>WXD20150106012</td>
          <td>维修退库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">17</td>
          <td>九江丰田配件仓</td>
          <td>521190P901</td>
          <td>保险杠</td>
          <td>2015-1-8 9:33:24</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">934.400</td>
          <td style="text-align:right;">-934.40000</td>
          <td style="text-align:right;">1297.00</td>
          <td style="text-align:right;">-1297.0000</td>
          <td>WXD20150106012</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">18</td>
          <td>九江丰田配件仓</td>
          <td>853150N010</td>
          <td>水壶</td>
          <td>2015-1-8 9:33:24</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">438.000</td>
          <td style="text-align:right;">-438.00000</td>
          <td style="text-align:right;">590.00</td>
          <td style="text-align:right;">-590.0000</td>
          <td>WXD20150106012</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">19</td>
          <td>九江丰田配件仓</td>
          <td>521280P010</td>
          <td>保险杠盖</td>
          <td>2015-1-8 9:33:24</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">52.000</td>
          <td style="text-align:right;">-52.00000</td>
          <td style="text-align:right;">70.00</td>
          <td style="text-align:right;">-70.0000</td>
          <td>WXD20150106012</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">20</td>
          <td>九江丰田配件仓</td>
          <td>538520N010</td>
          <td>密封胶条</td>
          <td>2015-1-8 9:33:24</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">126.200</td>
          <td style="text-align:right;">-126.20000</td>
          <td style="text-align:right;">170.00</td>
          <td style="text-align:right;">-170.0000</td>
          <td>WXD20150106012</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">21</td>
          <td>九江丰田配件仓</td>
          <td>YGJ</td>
          <td>雨刮精</td>
          <td>2015-1-8 9:28:40</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">4.000</td>
          <td style="text-align:right;">-4.00000</td>
          <td style="text-align:right;">10.00</td>
          <td style="text-align:right;">-10.0000</td>
          <td>WXD20150108002</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">22</td>
          <td>九江丰田配件仓</td>
          <td>9043012031</td>
          <td>密封垫片</td>
          <td>2015-1-8 9:28:39</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">3.590</td>
          <td style="text-align:right;">-3.59000</td>
          <td style="text-align:right;">6.00</td>
          <td style="text-align:right;">-6.0000</td>
          <td>WXD20150108002</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">23</td>
          <td>九江丰田配件仓</td>
          <td>90915YZZJ1</td>
          <td>机油滤芯</td>
          <td>2015-1-8 9:28:39</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">29.000</td>
          <td style="text-align:right;">-29.00000</td>
          <td style="text-align:right;">39.00</td>
          <td style="text-align:right;">-39.0000</td>
          <td>WXD20150108002</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">24</td>
          <td>九江丰田配件仓</td>
          <td>0888083517</td>
          <td>SM5W20机油=83453</td>
          <td>2015-1-8 9:28:39</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">184.139</td>
          <td style="text-align:right;">-184.13900</td>
          <td style="text-align:right;">266.00</td>
          <td style="text-align:right;">-266.0000</td>
          <td>WXD20150108002</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">25</td>
          <td>九江丰田配件仓</td>
          <td>8122006052</td>
          <td>左前雾灯</td>
          <td>2015-1-8 9:25:55</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">258.184</td>
          <td style="text-align:right;">-258.18400</td>
          <td style="text-align:right;">375.00</td>
          <td style="text-align:right;">-375.0000</td>
          <td>WXD20150107004</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">26</td>
          <td>九江丰田配件仓</td>
          <td>52119YK901</td>
          <td>前保险杠罩</td>
          <td>2015-1-8 9:25:55</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">551.650</td>
          <td style="text-align:right;">-551.65000</td>
          <td style="text-align:right;">748.00</td>
          <td style="text-align:right;">-748.0000</td>
          <td>WXD20150107004</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">27</td>
          <td>九江丰田配件仓</td>
          <td>9091902256</td>
          <td>点火线圈=C2001</td>
          <td>2015-1-8 9:23:12</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">403.800</td>
          <td style="text-align:right;">-403.80000</td>
          <td style="text-align:right;">408.00</td>
          <td style="text-align:right;">-408.0000</td>
          <td>CGTH20150108002</td>
          <td>采购退货</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">28</td>
          <td>九江丰田配件仓</td>
          <td>9034110011</td>
          <td>油底壳放油螺塞</td>
          <td>2015-1-8 9:23:12</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">8.900</td>
          <td style="text-align:right;">-8.90000</td>
          <td style="text-align:right;">8.90</td>
          <td style="text-align:right;">-8.9000</td>
          <td>CGTH20150108002</td>
          <td>采购退货</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">29</td>
          <td>九江丰田配件仓</td>
          <td>TJD</td>
          <td>胶扣</td>
          <td>2015-1-8 9:11:05</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">2.000</td>
          <td style="text-align:right;">-2.00000</td>
          <td style="text-align:right;">5.00</td>
          <td style="text-align:right;">-5.0000</td>
          <td>WXD20150105017</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">30</td>
          <td>九江深丰配件仓</td>
          <td>897450R020</td>
          <td>发射器电池</td>
          <td>2015-1-8 9:06:40</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">47.700</td>
          <td style="text-align:right;">-47.70000</td>
          <td style="text-align:right;">62.00</td>
          <td style="text-align:right;">-62.0000</td>
          <td>WXD20150108001</td>
          <td>维修出库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">31</td>
          <td>九江丰田配件仓</td>
          <td>0446536020</td>
          <td>制动摩擦片=37030</td>
          <td>2015-1-8 9:03:04</td>
          <td  style="text-align:right;">10.00</td>
          <td style="text-align:right;">411.500</td>
          <td style="text-align:right;">4115.00000</td>
          <td style="text-align:right;">411.50</td>
          <td style="text-align:right;">4115.0000</td>
          <td>PJRK20150108003</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">32</td>
          <td>九江丰田配件仓</td>
          <td>0446536020</td>
          <td>制动摩擦片=37030</td>
          <td>2015-1-8 9:02:57</td>
          <td  style="text-align:right;">-1.00</td>
          <td style="text-align:right;">41.514</td>
          <td style="text-align:right;">-41.51400</td>
          <td style="text-align:right;">315.81</td>
          <td style="text-align:right;">-315.8100</td>
          <td>CGTH20150108001</td>
          <td>采购退货</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">33</td>
          <td>九江丰田配件仓</td>
          <td>5387502390</td>
          <td>硫化橡胶制挡泥胶</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">277.600</td>
          <td style="text-align:right;">277.60000</td>
          <td style="text-align:right;">277.60</td>
          <td style="text-align:right;">277.6000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">34</td>
          <td>九江丰田配件仓</td>
          <td>770240R020</td>
          <td>进油管分总成</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">288.000</td>
          <td style="text-align:right;">288.00000</td>
          <td style="text-align:right;">288.00</td>
          <td style="text-align:right;">288.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">35</td>
          <td>九江丰田配件仓</td>
          <td>8652030640</td>
          <td>喇叭</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">262.800</td>
          <td style="text-align:right;">262.80000</td>
          <td style="text-align:right;">262.80</td>
          <td style="text-align:right;">262.8000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">36</td>
          <td>九江丰田配件仓</td>
          <td>9043012031</td>
          <td>密封垫片</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">8.00</td>
          <td style="text-align:right;">4.500</td>
          <td style="text-align:right;">36.00000</td>
          <td style="text-align:right;">4.50</td>
          <td style="text-align:right;">36.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">37</td>
          <td>九江丰田配件仓</td>
          <td>90915CA001</td>
          <td>机油滤芯</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">46.000</td>
          <td style="text-align:right;">46.00000</td>
          <td style="text-align:right;">46.00</td>
          <td style="text-align:right;">46.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">38</td>
          <td>九江丰田配件仓</td>
          <td>90915YZZJ1</td>
          <td>机油滤芯</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">10.00</td>
          <td style="text-align:right;">29.000</td>
          <td style="text-align:right;">290.00000</td>
          <td style="text-align:right;">29.00</td>
          <td style="text-align:right;">290.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">39</td>
          <td>九江丰田配件仓</td>
          <td>90915YZZJ2</td>
          <td>机油滤芯</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">29.000</td>
          <td style="text-align:right;">29.00000</td>
          <td style="text-align:right;">29.00</td>
          <td style="text-align:right;">29.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">40</td>
          <td>九江丰田配件仓</td>
          <td>9098113044</td>
          <td>刹车灯泡</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">15.600</td>
          <td style="text-align:right;">15.60000</td>
          <td style="text-align:right;">15.60</td>
          <td style="text-align:right;">15.6000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">41</td>
          <td>九江丰田配件仓</td>
          <td>9098113046</td>
          <td>灯泡=9008081041</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">76.500</td>
          <td style="text-align:right;">76.50000</td>
          <td style="text-align:right;">76.50</td>
          <td style="text-align:right;">76.5000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">42</td>
          <td>九江丰田配件仓</td>
          <td>0446536020</td>
          <td>制动摩擦片=37030</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">315.814</td>
          <td style="text-align:right;">315.81400</td>
          <td style="text-align:right;">315.81</td>
          <td style="text-align:right;">315.8100</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">43</td>
          <td>九江丰田配件仓</td>
          <td>4357060011</td>
          <td>轴承=60010</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">416.700</td>
          <td style="text-align:right;">416.70000</td>
          <td style="text-align:right;">416.70</td>
          <td style="text-align:right;">416.7000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">44</td>
          <td>九江丰田配件仓</td>
          <td>0888083401</td>
          <td>SN0W20机油</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">4.00</td>
          <td style="text-align:right;">275.800</td>
          <td style="text-align:right;">1103.20000</td>
          <td style="text-align:right;">275.80</td>
          <td style="text-align:right;">1103.2000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">45</td>
          <td>九江丰田配件仓</td>
          <td>0888083517</td>
          <td>SM5W20机油=83453</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">4.00</td>
          <td style="text-align:right;">184.300</td>
          <td style="text-align:right;">737.20000</td>
          <td style="text-align:right;">184.30</td>
          <td style="text-align:right;">737.2000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">46</td>
          <td>九江丰田配件仓</td>
          <td>041520P010</td>
          <td>机油滤芯</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">55.400</td>
          <td style="text-align:right;">55.40000</td>
          <td style="text-align:right;">55.40</td>
          <td style="text-align:right;">55.4000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">47</td>
          <td>九江丰田配件仓</td>
          <td>0446535290</td>
          <td>制动摩擦片=60320</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">355.300</td>
          <td style="text-align:right;">355.30000</td>
          <td style="text-align:right;">355.30</td>
          <td style="text-align:right;">355.3000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">48</td>
          <td>九江丰田配件仓</td>
          <td>0446542180</td>
          <td>制动摩擦片</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">371.400</td>
          <td style="text-align:right;">371.40000</td>
          <td style="text-align:right;">371.40</td>
          <td style="text-align:right;">371.4000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">49</td>
          <td>九江丰田配件仓</td>
          <td>3516821011</td>
          <td>波箱油底垫</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">49.000</td>
          <td style="text-align:right;">49.00000</td>
          <td style="text-align:right;">49.00</td>
          <td style="text-align:right;">49.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">50</td>
          <td>九江丰田配件仓</td>
          <td>3533028010</td>
          <td>阀体滤油网总成</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">320.700</td>
          <td style="text-align:right;">320.70000</td>
          <td style="text-align:right;">320.70</td>
          <td style="text-align:right;">320.7000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">51</td>
          <td>九江丰田配件仓</td>
          <td>521120R040</td>
          <td>前保险杠右侧延伸段</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">94.000</td>
          <td style="text-align:right;">94.00000</td>
          <td style="text-align:right;">94.00</td>
          <td style="text-align:right;">94.0000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">52</td>
          <td>九江丰田配件仓</td>
          <td>52119YK901</td>
          <td>前保险杠罩</td>
          <td>2015-1-8 8:56:26</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">555.300</td>
          <td style="text-align:right;">555.30000</td>
          <td style="text-align:right;">555.30</td>
          <td style="text-align:right;">555.3000</td>
          <td>PJRK20150108001</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">53</td>
          <td>九江丰田配件仓</td>
          <td>521280P010</td>
          <td>保险杠盖</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">52.000</td>
          <td style="text-align:right;">52.00000</td>
          <td style="text-align:right;">52.00</td>
          <td style="text-align:right;">52.0000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">54</td>
          <td>九江丰田配件仓</td>
          <td>538050P010</td>
          <td>叶子板衬板=22040</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">746.100</td>
          <td style="text-align:right;">746.10000</td>
          <td style="text-align:right;">746.10</td>
          <td style="text-align:right;">746.1000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">55</td>
          <td>九江丰田配件仓</td>
          <td>538520N010</td>
          <td>密封胶条</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">126.200</td>
          <td style="text-align:right;">126.20000</td>
          <td style="text-align:right;">126.20</td>
          <td style="text-align:right;">126.2000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">56</td>
          <td>九江丰田配件仓</td>
          <td>815610D410</td>
          <td>左后组合灯灯罩和灯体</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">192.000</td>
          <td style="text-align:right;">192.00000</td>
          <td style="text-align:right;">192.00</td>
          <td style="text-align:right;">192.0000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">57</td>
          <td>九江丰田配件仓</td>
          <td>8174002140</td>
          <td>转向灯</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">65.300</td>
          <td style="text-align:right;">65.30000</td>
          <td style="text-align:right;">65.30</td>
          <td style="text-align:right;">65.3000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">58</td>
          <td>九江丰田配件仓</td>
          <td>853150N010</td>
          <td>水壶</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">438.000</td>
          <td style="text-align:right;">438.00000</td>
          <td style="text-align:right;">438.00</td>
          <td style="text-align:right;">438.0000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">59</td>
          <td>九江丰田配件仓</td>
          <td>521020R902</td>
          <td>汽车保险杠外接板</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">235.400</td>
          <td style="text-align:right;">235.40000</td>
          <td style="text-align:right;">235.40</td>
          <td style="text-align:right;">235.4000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">60</td>
          <td>九江丰田配件仓</td>
          <td>9031296001</td>
          <td>油封</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">50.500</td>
          <td style="text-align:right;">50.50000</td>
          <td style="text-align:right;">50.50</td>
          <td style="text-align:right;">50.5000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">61</td>
          <td>九江丰田配件仓</td>
          <td>9031672001</td>
          <td>油封</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">112.800</td>
          <td style="text-align:right;">112.80000</td>
          <td style="text-align:right;">112.80</td>
          <td style="text-align:right;">112.8000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">62</td>
          <td>九江丰田配件仓</td>
          <td>9034110011</td>
          <td>油底壳放油螺塞</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">8.900</td>
          <td style="text-align:right;">8.90000</td>
          <td style="text-align:right;">8.90</td>
          <td style="text-align:right;">8.9000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">63</td>
          <td>九江丰田配件仓</td>
          <td>9034110021</td>
          <td>油底壳放油螺塞</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">8.900</td>
          <td style="text-align:right;">8.90000</td>
          <td style="text-align:right;">8.90</td>
          <td style="text-align:right;">8.9000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
         <tr>
          <td  style="text-align:center;">64</td>
          <td>九江丰田配件仓</td>
          <td>9091902256</td>
          <td>点火线圈=C2001</td>
          <td>2015-1-8 8:49:10</td>
          <td  style="text-align:right;">1.00</td>
          <td style="text-align:right;">403.800</td>
          <td style="text-align:right;">403.80000</td>
          <td style="text-align:right;">403.80</td>
          <td style="text-align:right;">403.8000</td>
          <td>PJRK20150108002</td>
          <td>商品入库</td>
          </tr>
         
          <tr>
          <td></td>
          <td>合计</td>
          <td></td>
          <td></td>
          <td></td>
          <td style="text-align:right;">31.00</td>
          <td></td>
          <td style="text-align:right;">8951.99300</td>
          <td></td>
          <td style="text-align:right;">7404.7000</td>
          <td></td>
          <td></td>
          </tr>
         
      </table>
      <!--数据展示 end-->
      
    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="E289FE7A" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCQKEmM2JCgLq4PrfDQK0ltSgDwKovNiBBAK4nLjYBQKasfn9BwKOzeSDBAL3h4ndCAKln/PuCpC54ksvam0e7uSQY72mgm+wxzRJ" />
</div></form>
</body>
</html>