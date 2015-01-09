
 
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


    function insertInfo(suppId, suppName) {
        window.returnValue = suppId + "'" + suppName;
        window.opener = null;
        window.close();
    }
</script>
<base target="_self" />
<body>
    <form name="form1" method="post" action="SupplierSelect.aspx?billGuid=67dd411c-4b67-4624-ac73-4c69d51c7cf6&amp;d=Fri+Jan+09+2015+10%3a20%3a18+GMT+0800" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

    <div style="margin-top:2px;margin-left:10px;"> 

      <table border="0" style="width:530px;border-bottom:1px solid #b8b8b8;"">
        <tr><td class="titlebg"><span>供应商管理</span>(供应商选择)
         </td><td align="right">
           </td></tr>
         </table> 

      <table border="0" cellpadding="0" cellspacing="0" style="width:530px;" >
       <tr>
       <td>供应商名称:</td>
       <td><input name="txtSuppName" type="text" maxlength="20" id="txtSuppName" /></td>
 
       <td>供应商编号:</td>
       <td><input name="txtSuppId" type="text" maxlength="10" id="txtSuppId" /></td>
       <td>
        <input type="submit" name="btnSearch" value="查询" id="btnSearch" />
        </td>
      </tr>
      </table>
      
      <table id="tb" border="1" style="border:1px solid gray;border-collapse:collapse;width:530px;" >
        
           <tr>
            <td style="text-align:center;width:30px;">NO.</td>
            <td>供应商编号</td>
            <td>供应商名称</td>
            <td>电话1</td>
           </tr>
           
           <tr onclick="insertInfo('','')">
            <td style="text-align:center;width:30px;">1</td>
            <td></td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('00001','')">
            <td style="text-align:center;width:30px;">2</td>
            <td>00001</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('00002','')">
            <td style="text-align:center;width:30px;">3</td>
            <td>00002</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('00003','')">
            <td style="text-align:center;width:30px;">4</td>
            <td>00003</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('00004','')">
            <td style="text-align:center;width:30px;">5</td>
            <td>00004</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1000','广州丰田')">
            <td style="text-align:center;width:30px;">6</td>
            <td>1000</td>
            <td>广州丰田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1001','福州泰丰')">
            <td style="text-align:center;width:30px;">7</td>
            <td>1001</td>
            <td>福州泰丰</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1003','华新轮胎行')">
            <td style="text-align:center;width:30px;">8</td>
            <td>1003</td>
            <td>华新轮胎行</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1005','东风本田')">
            <td style="text-align:center;width:30px;">9</td>
            <td>1005</td>
            <td>东风本田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('10051004','东风本田笋岗办事处')">
            <td style="text-align:center;width:30px;">10</td>
            <td>10051004</td>
            <td>东风本田笋岗办事处</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1013','测试')">
            <td style="text-align:center;width:30px;">11</td>
            <td>1013</td>
            <td>测试</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1018','北京北方远望机电技术服务中心')">
            <td style="text-align:center;width:30px;">12</td>
            <td>1018</td>
            <td>北京北方远望机电技术服务中心</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1020','正友汽车音响维修中心')">
            <td style="text-align:center;width:30px;">13</td>
            <td>1020</td>
            <td>正友汽车音响维修中心</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1021','广州本田')">
            <td style="text-align:center;width:30px;">14</td>
            <td>1021</td>
            <td>广州本田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1022','天津一汽')">
            <td style="text-align:center;width:30px;">15</td>
            <td>1022</td>
            <td>天津一汽</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('1024','广州本田')">
            <td style="text-align:center;width:30px;">16</td>
            <td>1024</td>
            <td>广州本田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('APC04','上海仓储')">
            <td style="text-align:center;width:30px;">17</td>
            <td>APC04</td>
            <td>上海仓储</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('APC16','一汽丰田')">
            <td style="text-align:center;width:30px;">18</td>
            <td>APC16</td>
            <td>一汽丰田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00001','深圳千弛汽车配件有限公司')">
            <td style="text-align:center;width:30px;">19</td>
            <td>B00001</td>
            <td>深圳千弛汽车配件有限公司</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00002','')">
            <td style="text-align:center;width:30px;">20</td>
            <td>B00002</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00003','')">
            <td style="text-align:center;width:30px;">21</td>
            <td>B00003</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00004','')">
            <td style="text-align:center;width:30px;">22</td>
            <td>B00004</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00005','')">
            <td style="text-align:center;width:30px;">23</td>
            <td>B00005</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00006','广州利宾')">
            <td style="text-align:center;width:30px;">24</td>
            <td>B00006</td>
            <td>广州利宾</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00008','')">
            <td style="text-align:center;width:30px;">25</td>
            <td>B00008</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00009','')">
            <td style="text-align:center;width:30px;">26</td>
            <td>B00009</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00010','')">
            <td style="text-align:center;width:30px;">27</td>
            <td>B00010</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00011','')">
            <td style="text-align:center;width:30px;">28</td>
            <td>B00011</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00012 ','')">
            <td style="text-align:center;width:30px;">29</td>
            <td>B00012 </td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00013','')">
            <td style="text-align:center;width:30px;">30</td>
            <td>B00013</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00014 ','')">
            <td style="text-align:center;width:30px;">31</td>
            <td>B00014 </td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00015','')">
            <td style="text-align:center;width:30px;">32</td>
            <td>B00015</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00016','')">
            <td style="text-align:center;width:30px;">33</td>
            <td>B00016</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00017 ','')">
            <td style="text-align:center;width:30px;">34</td>
            <td>B00017 </td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00018','深圳市奥巴达')">
            <td style="text-align:center;width:30px;">35</td>
            <td>B00018</td>
            <td>深圳市奥巴达</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00019','深圳市德明士')">
            <td style="text-align:center;width:30px;">36</td>
            <td>B00019</td>
            <td>深圳市德明士</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00020','联盛公司')">
            <td style="text-align:center;width:30px;">37</td>
            <td>B00020</td>
            <td>联盛公司</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00022','昊瑞汽车配件')">
            <td style="text-align:center;width:30px;">38</td>
            <td>B00022</td>
            <td>昊瑞汽车配件</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00023','艺展电子')">
            <td style="text-align:center;width:30px;">39</td>
            <td>B00023</td>
            <td>艺展电子</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00024','新东南汽配')">
            <td style="text-align:center;width:30px;">40</td>
            <td>B00024</td>
            <td>新东南汽配</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00025','广州浔阳楼')">
            <td style="text-align:center;width:30px;">41</td>
            <td>B00025</td>
            <td>广州浔阳楼</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('B00026','广州英邦波箱维修')">
            <td style="text-align:center;width:30px;">42</td>
            <td>B00026</td>
            <td>广州英邦波箱维修</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('C00001','加油站')">
            <td style="text-align:center;width:30px;">43</td>
            <td>C00001</td>
            <td>加油站</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('C00002','')">
            <td style="text-align:center;width:30px;">44</td>
            <td>C00002</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('C00003','广州锦虹')">
            <td style="text-align:center;width:30px;">45</td>
            <td>C00003</td>
            <td>广州锦虹</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('C1012','怡利电子科技（江苏）有限公司')">
            <td style="text-align:center;width:30px;">46</td>
            <td>C1012</td>
            <td>怡利电子科技（江苏）有限公司</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('JJJP','润昇精品外调')">
            <td style="text-align:center;width:30px;">47</td>
            <td>JJJP</td>
            <td>润昇精品外调</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('JJSQ','九江市市区')">
            <td style="text-align:center;width:30px;">48</td>
            <td>JJSQ</td>
            <td>九江市市区</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('L00001','深业东风本田')">
            <td style="text-align:center;width:30px;">49</td>
            <td>L00001</td>
            <td>深业东风本田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('L00002','广州东弘（杰航）')">
            <td style="text-align:center;width:30px;">50</td>
            <td>L00002</td>
            <td>广州东弘（杰航）</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('L00003','广州宝狮')">
            <td style="text-align:center;width:30px;">51</td>
            <td>L00003</td>
            <td>广州宝狮</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('L00004','南昌亚特')">
            <td style="text-align:center;width:30px;">52</td>
            <td>L00004</td>
            <td>南昌亚特</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('MZ1014','梅州深业上众汽车销售服务有限公司')">
            <td style="text-align:center;width:30px;">53</td>
            <td>MZ1014</td>
            <td>梅州深业上众汽车销售服务有限公司</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('qyqc001','黎川县庆园汽车用品')">
            <td style="text-align:center;width:30px;">54</td>
            <td>qyqc001</td>
            <td>黎川县庆园汽车用品</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('S1005','一汽丰田（成都和顺贸易）')">
            <td style="text-align:center;width:30px;">55</td>
            <td>S1005</td>
            <td>一汽丰田（成都和顺贸易）</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('S1006','一汽丰田支援部')">
            <td style="text-align:center;width:30px;">56</td>
            <td>S1006</td>
            <td>一汽丰田支援部</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('SH001','上海金领结')">
            <td style="text-align:center;width:30px;">57</td>
            <td>SH001</td>
            <td>上海金领结</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('SZ1016','深圳佳华汽配')">
            <td style="text-align:center;width:30px;">58</td>
            <td>SZ1016</td>
            <td>深圳佳华汽配</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('SZL001','深圳深业雷克萨斯')">
            <td style="text-align:center;width:30px;">59</td>
            <td>SZL001</td>
            <td>深圳深业雷克萨斯</td>
            <td>1378411035（陈旭伟）</td>
           </tr>
           
           
           <tr onclick="insertInfo('TJYQ','天津一汽')">
            <td style="text-align:center;width:30px;">60</td>
            <td>TJYQ</td>
            <td>天津一汽</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00001','X00001')">
            <td style="text-align:center;width:30px;">61</td>
            <td>X00001</td>
            <td>X00001</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00002','深业丰田')">
            <td style="text-align:center;width:30px;">62</td>
            <td>X00002</td>
            <td>深业丰田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00003','X00003')">
            <td style="text-align:center;width:30px;">63</td>
            <td>X00003</td>
            <td>X00003</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00004','盛业丰田')">
            <td style="text-align:center;width:30px;">64</td>
            <td>X00004</td>
            <td>盛业丰田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00005','')">
            <td style="text-align:center;width:30px;">65</td>
            <td>X00005</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00006','')">
            <td style="text-align:center;width:30px;">66</td>
            <td>X00006</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00007','一汽丰田（天津轮胎）')">
            <td style="text-align:center;width:30px;">67</td>
            <td>X00007</td>
            <td>一汽丰田（天津轮胎）</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00008','润昇用品（油料）')">
            <td style="text-align:center;width:30px;">68</td>
            <td>X00008</td>
            <td>润昇用品（油料）</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00009','南昌普瑞司')">
            <td style="text-align:center;width:30px;">69</td>
            <td>X00009</td>
            <td>南昌普瑞司</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('X00010','深业本田')">
            <td style="text-align:center;width:30px;">70</td>
            <td>X00010</td>
            <td>深业本田</td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('XS0001','')">
            <td style="text-align:center;width:30px;">71</td>
            <td>XS0001</td>
            <td></td>
            <td></td>
           </tr>
           
           
           <tr onclick="insertInfo('XY1017','江西新余丰田')">
            <td style="text-align:center;width:30px;">72</td>
            <td>XY1017</td>
            <td>江西新余丰田</td>
            <td></td>
           </tr>
           
            
      </table>

    </div>
    
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A671539E" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBALpv7GCDgK1o/TEBQKrw4zuAwKln/PuCtCUrGqpfQoqxzOMDumeBX3IQ6/S" />
</div></form>
</body>
</html>