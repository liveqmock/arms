<html>
<head><title>

</title> <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=90e943c2686f4150a8a9caace115b2b0" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=90e943c2686f4150a8a9caace115b2b0" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=90e943c2686f4150a8a9caace115b2b0" type="text/javascript"></script><link href="../style/common.css?v=90e943c2686f4150a8a9caace115b2b0" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>

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



    //页面刷新方法
    function pageLoad() {
        location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();

     }

</script>

<body>
    <form name="form1" method="post" action="saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&amp;d=Tue+Jan+06+2015+12%3a17%3a32+GMT+0800" id="form1">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJMzgzMjAxNTIyZGQdQ25VdJmhJaKpK+nJuA0NDWXMDw==" />
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


    <div style="margin-top:5px;margin-left:5px;margin-right:5px;">     
        <table border="0" style="width:900px" >
         <!--按钮区域 sart-->
          <tr>
          <td align="right">
          <a onClick="return printThis();" id="lnkPrint" class="easyui-linkbutton" href="javascript:__doPostBack('lnkPrint','')">打印</a>
             
             
             <a onClick="return addWeiXiuTaoCan();" id="lnkTaoCan" class="easyui-linkbutton" href="javascript:__doPostBack('lnkTaoCan','')">新增套餐</a>
             
             
             <a onClick="return zhangTaoMdfSave();" id="lnkSave" class="easyui-linkbutton" href="javascript:__doPostBack('lnkSave','')">保存</a>
             
             
             
             <a onClick="return winClose();" id="lnkCancel" class="easyui-linkbutton" href="javascript:__doPostBack('lnkCancel','')">关闭</a>
          </td>
          </tr>
         <!--按钮区域 end-->
        </table>

        <table border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td style="vertical-align:middle;">
         <input name="btnWeiXiuListAdd" type="button" id="btnWeiXiuListAdd" value="维修项目" style="width:60px;height:30px;font-size:12px;" onclick="addWeiXiuXiangMuList()" />
         <input name="btnWeiXiuTmpAdd" type="button" id="btnWeiXiuTmpAdd" value="N " style="width:20px;height:30px;font-size:12px;" onclick="addWeiXiuXiangMu()" />        
         
         </td>
        </tr>
        </table>
        <table border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%"  >
        <!--维修项目 start-->
         
          <tr>
           <td style="width:30px;">NO.</td>
           <td style="width:50px;">工段</td>
           <td style="width:150px;">项目编号</td>
           <td style="width:360px;">维修内容</td>
           <td width="60px" style="text-align:right;">工时</td><td  width="60px" style="text-align:right;">工时费</td>
           <td  width="120px">帐套</td><td  width="150px">子帐套</td><td width="10px"></td>
          </tr>
         
         <tr >
           <td style="width:20px;text-align:center;"  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')" >1
           <input type="hidden" name="weiXiu" value="40dfae53-7856-47df-9664-a1266379c298" />
           </td>
           <td  width='30px'>
           <select id='40dfae53-7856-47df-9664-a1266379c298GongDuanName' style="display:none;width:50px;"  ></select>
           <span id="40dfae53-7856-47df-9664-a1266379c298GongDuanNameB">保养</span>
            </td>
           <td  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')"></td>
           <td  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')">40,000KM保养</td>
           <td  style="text-align:right;" >
           <span id="40dfae53-7856-47df-9664-a1266379c298GongShiB" >9.00</span>
           <input type="text" style="width:55px;display:none;"  class="easyui-numberbox" data-options="min:0,max:900,precision:2"  value="9.00" id='40dfae53-7856-47df-9664-a1266379c298GongShi' />
           </td>
           <td style="text-align:right;"  onclick="zhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298','weiXiu')">900.00</td>
           <td><select id='40dfae53-7856-47df-9664-a1266379c298ZhangTao' style="display:none;width:75px;"  onchange=subZhangTaoMdf('40dfae53-7856-47df-9664-a1266379c298') ></select>
           <span id="40dfae53-7856-47df-9664-a1266379c298ZhangTaoB">厂家保修</span></td>
           <td><select id='40dfae53-7856-47df-9664-a1266379c298SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="40dfae53-7856-47df-9664-a1266379c298SubZhangTaoB"></span></td>
           <td width="10px">
           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuXiangMu('40dfae53-7856-47df-9664-a1266379c298')"  />
           </td>
          </tr>
         
         <tr>
           <td></td>
           <td>合计</td>
           <td></td>
           <td></td>
           <td style="text-align:right;">9.00</td>
           <td style="text-align:right;">900.00</td>
           <td></td>
           <td></td>
           <td width="10px"></td>
          </tr>
         
        <!--维修项目 end-->
        </table>


        <div  style="height:1px;"></div>
        <table border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td>
          <input name="btnWeiXiuWuLiao" type="button" id="btnWeiXiuWuLiao" value="物料选择" style="width:60px;height:30px;font-size:12px;" onclick="addWeiXiuWuLiaoList()" />



         </td>
        </tr>
        </table>
        <table  border="1" style="border-collapse:collapse;border:1px solid #d6d3ce;width:100%" >
        <!--维修物料 start-->
        
          <tr>
           <td  style="width:30px;">NO.</td>
           <td  style="width:200px;">商品编号</td>
           <td  style="width:240px;">商品名称</td>
           <td width="60px" style="text-align:right;">所需数量</td>
           <td  width="60px" style="text-align:right;">领用数量</td>
           <td  width="60px" style="text-align:right;">退货数量</td>
           <td  width="60px" style="text-align:right;">单价</td>
           <td  width="120px">帐套</td><td  width="150px">子帐套</td><td width="10px"></td>
          </tr>
         
         <tr  id="abaa490a-116c-44b2-b1da-7cbba0615c23Tr">
           <td  onclick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:center;">1
           <input type="hidden" name="wuLiao" value="abaa490a-116c-44b2-b1da-7cbba0615c23" />
           </td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')" >0415231090</td><td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')" >机油滤清器滤芯组件</td>
           <td  style="text-align:right;">
           <input  id='abaa490a-116c-44b2-b1da-7cbba0615c23RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23','wuLiao')"   style="text-align:right;">61.00</td>
           <td><select id='abaa490a-116c-44b2-b1da-7cbba0615c23ZhangTao' style="display:none;"  onchange=subZhangTaoMdf('abaa490a-116c-44b2-b1da-7cbba0615c23') ></select>
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23ZhangTaoB">厂家保修</span></td>
           <td><select id='abaa490a-116c-44b2-b1da-7cbba0615c23SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="abaa490a-116c-44b2-b1da-7cbba0615c23SubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('abaa490a-116c-44b2-b1da-7cbba0615c23')"  /></td>
          </tr>
         
         <tr  id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eTr">
           <td  onclick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"   style="text-align:center;">2
           <input type="hidden" name="wuLiao" value="51b97d10-c35b-42ff-bfdf-d2b63d304c8e" />
           </td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')" >0882380150</td><td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')" >雷克萨斯纯牌机动车辆制动液</td>
           <td  style="text-align:right;">
           <input  id='51b97d10-c35b-42ff-bfdf-d2b63d304c8eRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"   style="text-align:right;">4.00</td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e','wuLiao')"   style="text-align:right;">39.00</td>
           <td><select id='51b97d10-c35b-42ff-bfdf-d2b63d304c8eZhangTao' style="display:none;"  onchange=subZhangTaoMdf('51b97d10-c35b-42ff-bfdf-d2b63d304c8e') ></select>
           <span id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eZhangTaoB">厂家保修</span></td>
           <td><select id='51b97d10-c35b-42ff-bfdf-d2b63d304c8eSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="51b97d10-c35b-42ff-bfdf-d2b63d304c8eSubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('51b97d10-c35b-42ff-bfdf-d2b63d304c8e')"  /></td>
          </tr>
         
         <tr  id="4e9e383d-1e45-48ae-9a70-16feceaa7632Tr">
           <td  onclick="zhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632','wuLiao')"   style="text-align:center;">3
           <input type="hidden" name="wuLiao" value="4e9e383d-1e45-48ae-9a70-16feceaa7632" />
           </td>
           <td onClick="zhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632','wuLiao')" >0880880080</td><td onClick="zhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632','wuLiao')" >雷克萨斯纯牌车窗清洗液</td>
           <td  style="text-align:right;">
           <input  id='4e9e383d-1e45-48ae-9a70-16feceaa7632RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="4e9e383d-1e45-48ae-9a70-16feceaa7632RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632','wuLiao')"   style="text-align:right;">46.00</td>
           <td><select id='4e9e383d-1e45-48ae-9a70-16feceaa7632ZhangTao' style="display:none;"  onchange=subZhangTaoMdf('4e9e383d-1e45-48ae-9a70-16feceaa7632') ></select>
           <span id="4e9e383d-1e45-48ae-9a70-16feceaa7632ZhangTaoB">厂家保修</span></td>
           <td><select id='4e9e383d-1e45-48ae-9a70-16feceaa7632SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="4e9e383d-1e45-48ae-9a70-16feceaa7632SubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('4e9e383d-1e45-48ae-9a70-16feceaa7632')"  /></td>
          </tr>
         
         <tr  id="8d043b5f-9b66-495d-a8b5-71dca5f661abTr">
           <td  onclick="zhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab','wuLiao')"   style="text-align:center;">4
           <input type="hidden" name="wuLiao" value="8d043b5f-9b66-495d-a8b5-71dca5f661ab" />
           </td>
           <td onClick="zhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab','wuLiao')" >1780131131</td><td onClick="zhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab','wuLiao')" >空气滤清器滤芯分总</td>
           <td  style="text-align:right;">
           <input  id='8d043b5f-9b66-495d-a8b5-71dca5f661abRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="8d043b5f-9b66-495d-a8b5-71dca5f661abRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab','wuLiao')"   style="text-align:right;">166.00</td>
           <td><select id='8d043b5f-9b66-495d-a8b5-71dca5f661abZhangTao' style="display:none;"  onchange=subZhangTaoMdf('8d043b5f-9b66-495d-a8b5-71dca5f661ab') ></select>
           <span id="8d043b5f-9b66-495d-a8b5-71dca5f661abZhangTaoB">厂家保修</span></td>
           <td><select id='8d043b5f-9b66-495d-a8b5-71dca5f661abSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="8d043b5f-9b66-495d-a8b5-71dca5f661abSubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('8d043b5f-9b66-495d-a8b5-71dca5f661ab')"  /></td>
          </tr>
         
         <tr  id="628013b5-2e32-4571-aad3-1d619dbf70c5Tr">
           <td  onclick="zhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5','wuLiao')"   style="text-align:center;">5
           <input type="hidden" name="wuLiao" value="628013b5-2e32-4571-aad3-1d619dbf70c5" />
           </td>
           <td onClick="zhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5','wuLiao')" >8521410100</td><td onClick="zhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5','wuLiao')" >后刮水器橡胶条</td>
           <td  style="text-align:right;">
           <input  id='628013b5-2e32-4571-aad3-1d619dbf70c5RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="628013b5-2e32-4571-aad3-1d619dbf70c5RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5','wuLiao')"   style="text-align:right;">32.00</td>
           <td><select id='628013b5-2e32-4571-aad3-1d619dbf70c5ZhangTao' style="display:none;"  onchange=subZhangTaoMdf('628013b5-2e32-4571-aad3-1d619dbf70c5') ></select>
           <span id="628013b5-2e32-4571-aad3-1d619dbf70c5ZhangTaoB">厂家保修</span></td>
           <td><select id='628013b5-2e32-4571-aad3-1d619dbf70c5SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="628013b5-2e32-4571-aad3-1d619dbf70c5SubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('628013b5-2e32-4571-aad3-1d619dbf70c5')"  /></td>
          </tr>
         
         <tr  id="bb1c7964-60c4-431a-b5bd-409cd663b28fTr">
           <td  onclick="zhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f','wuLiao')"   style="text-align:center;">6
           <input type="hidden" name="wuLiao" value="bb1c7964-60c4-431a-b5bd-409cd663b28f" />
           </td>
           <td onClick="zhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f','wuLiao')" >8521453080</td><td onClick="zhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f','wuLiao')" >左侧刮水器橡胶条</td>
           <td  style="text-align:right;">
           <input  id='bb1c7964-60c4-431a-b5bd-409cd663b28fRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="bb1c7964-60c4-431a-b5bd-409cd663b28fRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f','wuLiao')"   style="text-align:right;">70.00</td>
           <td><select id='bb1c7964-60c4-431a-b5bd-409cd663b28fZhangTao' style="display:none;"  onchange=subZhangTaoMdf('bb1c7964-60c4-431a-b5bd-409cd663b28f') ></select>
           <span id="bb1c7964-60c4-431a-b5bd-409cd663b28fZhangTaoB">厂家保修</span></td>
           <td><select id='bb1c7964-60c4-431a-b5bd-409cd663b28fSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="bb1c7964-60c4-431a-b5bd-409cd663b28fSubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('bb1c7964-60c4-431a-b5bd-409cd663b28f')"  /></td>
          </tr>
         
         <tr  id="afc5b5ad-860a-4341-8f0b-5ee040d83dbcTr">
           <td  onclick="zhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc','wuLiao')"   style="text-align:center;">7
           <input type="hidden" name="wuLiao" value="afc5b5ad-860a-4341-8f0b-5ee040d83dbc" />
           </td>
           <td onClick="zhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc','wuLiao')" >8521468020</td><td onClick="zhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc','wuLiao')" >左侧刮水器橡胶条</td>
           <td  style="text-align:right;">
           <input  id='afc5b5ad-860a-4341-8f0b-5ee040d83dbcRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="afc5b5ad-860a-4341-8f0b-5ee040d83dbcRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc','wuLiao')"   style="text-align:right;">55.00</td>
           <td><select id='afc5b5ad-860a-4341-8f0b-5ee040d83dbcZhangTao' style="display:none;"  onchange=subZhangTaoMdf('afc5b5ad-860a-4341-8f0b-5ee040d83dbc') ></select>
           <span id="afc5b5ad-860a-4341-8f0b-5ee040d83dbcZhangTaoB">厂家保修</span></td>
           <td><select id='afc5b5ad-860a-4341-8f0b-5ee040d83dbcSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="afc5b5ad-860a-4341-8f0b-5ee040d83dbcSubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('afc5b5ad-860a-4341-8f0b-5ee040d83dbc')"  /></td>
          </tr>
         
         <tr  id="d9994ef8-2545-45cb-b478-b1a5114b3cccTr">
           <td  onclick="zhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc','wuLiao')"   style="text-align:center;">8
           <input type="hidden" name="wuLiao" value="d9994ef8-2545-45cb-b478-b1a5114b3ccc" />
           </td>
           <td onClick="zhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc','wuLiao')" >9043012031</td><td onClick="zhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc','wuLiao')" >衬垫(用于油底壳排放</td>
           <td  style="text-align:right;">
           <input  id='d9994ef8-2545-45cb-b478-b1a5114b3cccRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="d9994ef8-2545-45cb-b478-b1a5114b3cccRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc','wuLiao')"   style="text-align:right;">6.00</td>
           <td><select id='d9994ef8-2545-45cb-b478-b1a5114b3cccZhangTao' style="display:none;"  onchange=subZhangTaoMdf('d9994ef8-2545-45cb-b478-b1a5114b3ccc') ></select>
           <span id="d9994ef8-2545-45cb-b478-b1a5114b3cccZhangTaoB">厂家保修</span></td>
           <td><select id='d9994ef8-2545-45cb-b478-b1a5114b3cccSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="d9994ef8-2545-45cb-b478-b1a5114b3cccSubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('d9994ef8-2545-45cb-b478-b1a5114b3ccc')"  /></td>
          </tr>
         
         <tr  id="c52482eb-2872-4f68-9e60-d817130c24a2Tr">
           <td  onclick="zhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2','wuLiao')"   style="text-align:center;">9
           <input type="hidden" name="wuLiao" value="c52482eb-2872-4f68-9e60-d817130c24a2" />
           </td>
           <td onClick="zhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2','wuLiao')" >CSYH</td><td onClick="zhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2','wuLiao')" >车身润滑四合一</td>
           <td  style="text-align:right;">
           <input  id='c52482eb-2872-4f68-9e60-d817130c24a2RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="c52482eb-2872-4f68-9e60-d817130c24a2RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2','wuLiao')"   style="text-align:right;">80.00</td>
           <td><select id='c52482eb-2872-4f68-9e60-d817130c24a2ZhangTao' style="display:none;"  onchange=subZhangTaoMdf('c52482eb-2872-4f68-9e60-d817130c24a2') ></select>
           <span id="c52482eb-2872-4f68-9e60-d817130c24a2ZhangTaoB">厂家保修</span></td>
           <td><select id='c52482eb-2872-4f68-9e60-d817130c24a2SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="c52482eb-2872-4f68-9e60-d817130c24a2SubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('c52482eb-2872-4f68-9e60-d817130c24a2')"  /></td>
          </tr>
         
         <tr  id="920f2932-784e-4205-a260-0fc43fdb5df9Tr">
           <td  onclick="zhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9','wuLiao')"   style="text-align:center;">10
           <input type="hidden" name="wuLiao" value="920f2932-784e-4205-a260-0fc43fdb5df9" />
           </td>
           <td onClick="zhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9','wuLiao')" >MF0W-40</td><td onClick="zhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9','wuLiao')" >金装美孚1号0W-40</td>
           <td  style="text-align:right;">
           <input  id='920f2932-784e-4205-a260-0fc43fdb5df9RegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="920f2932-784e-4205-a260-0fc43fdb5df9RegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9','wuLiao')"   style="text-align:right;">5.00</td>
           <td onClick="zhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9','wuLiao')"   style="text-align:right;">160.00</td>
           <td><select id='920f2932-784e-4205-a260-0fc43fdb5df9ZhangTao' style="display:none;"  onchange=subZhangTaoMdf('920f2932-784e-4205-a260-0fc43fdb5df9') ></select>
           <span id="920f2932-784e-4205-a260-0fc43fdb5df9ZhangTaoB">厂家保修</span></td>
           <td><select id='920f2932-784e-4205-a260-0fc43fdb5df9SubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="920f2932-784e-4205-a260-0fc43fdb5df9SubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('920f2932-784e-4205-a260-0fc43fdb5df9')"  /></td>
          </tr>
         
         <tr  id="8b29d217-27b4-453d-829e-2df14062acedTr">
           <td  onclick="zhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced','wuLiao')"   style="text-align:center;">11
           <input type="hidden" name="wuLiao" value="8b29d217-27b4-453d-829e-2df14062aced" />
           </td>
           <td onClick="zhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced','wuLiao')" >0881480010</td><td onClick="zhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced','wuLiao')" >LGC发动机清洗剂</td>
           <td  style="text-align:right;">
           <input  id='8b29d217-27b4-453d-829e-2df14062acedRegQty' style="display:none;width:40px;" 
           value ="0.00" 
           class="easyui-numberbox" data-options="min:0,max:90,precision:2"  /> 
           <span id="8b29d217-27b4-453d-829e-2df14062acedRegQtyB">0.00</span>
           </td>
           <td onClick="zhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced','wuLiao')"   style="text-align:right;">1.00</td>
           <td onClick="zhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced','wuLiao')"  style="text-align:right;">0.00</td>
           <td onClick="zhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced','wuLiao')"   style="text-align:right;">200.00</td>
           <td><select id='8b29d217-27b4-453d-829e-2df14062acedZhangTao' style="display:none;"  onchange=subZhangTaoMdf('8b29d217-27b4-453d-829e-2df14062aced') ></select>
           <span id="8b29d217-27b4-453d-829e-2df14062acedZhangTaoB">正常维修</span></td>
           <td><select id='8b29d217-27b4-453d-829e-2df14062acedSubZhangTao' style="display:none;width:75px;" ></select> 
           <span id="8b29d217-27b4-453d-829e-2df14062acedSubZhangTaoB'"></span></td>
           <td width="10px">           <img src="../image/delete.gif" alt="del" onClick="delWeiXiuWuLiao('8b29d217-27b4-453d-829e-2df14062aced')"  /></td>
          </tr>
         
          <tr>
           <td></td>
           <td>合计</td><td></td>
           <td  style="text-align:right;">0.00</td>
           <td  style="text-align:right;">18.00</td>
           <td colspan="4">
           需求费用:0.0000 预估费用:1672.0000
           </td> 
           <td width="10px"></td>
          </tr>
         
        <!--维修物料 end-->
        </table>

    </div>
    
<div>

  <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="8B80287A" />
  <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWAwKi2oSEBgKv39DuBwKmtLTPATmFlPj9X/78aQlu4rfNzOfMsPdD" />
</div></form>

     
    <script language="javascript" type="text/javascript">
        function printThis() {
            window.open("saleAfter_WeiXiuJieDaiPrint.aspx?saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date());
            return false;
        }

     
     var zhangTao =$.parseJSON('[{"zhangTaoName":"正常维修","zhangTaoList":[]},{"zhangTaoName":"厂家保修","zhangTaoList":[]},{"zhangTaoName":"大客户(月结)","zhangTaoList":[]},{"zhangTaoName":"保险","zhangTaoList":[]},{"zhangTaoName":"保险自付","zhangTaoList":[]},{"zhangTaoName":"内结","zhangTaoList":[{"zhangTaoName":"销售部支付"},{"zhangTaoName":"售后部支付"},{"zhangTaoName":"客户部支付"}]}]');
     var weiXiuGongDuanInfo ="<option value='机电'>机电</option><option value='保养'>保养</option><option value='钣金'>钣金</option><option value='美容'>美容</option><option value='喷漆'>喷漆</option";

     //维修项目修改
     function zhangTaoMdf(detailGuid,sort) {
         if (zhangTao == null) {return false;}
      var thisValue = $("#" + detailGuid + "ZhangTaoB").html();
      $("#"+detailGuid+"ZhangTaoB").css("display","none");
      $("#" + detailGuid + "SubZhangTaoB").css("display", "none");

      if (sort == "weiXiu") {
           if("6018" !="9999")
            {
                $("#" + detailGuid + "GongShiB").css("display", "none");  //取消工时修改
                $("#" + detailGuid + "GongShi").css("display", "block");  //取消工时修改
            }
          $("#" + detailGuid + "GongDuanNameB").css("display", "none");
          $("#" + detailGuid + "GongDuanName").css("display", "block");

          $("#" + detailGuid + "GongDuanName").empty();
          $("#" + detailGuid + "GongDuanName").append("<option value=''></option>" + weiXiuGongDuanInfo);
          $("#" + detailGuid + "GongDuanName").val($("#" + detailGuid + "GongDuanNameB").html());
      }

      $("#"+detailGuid+"ZhangTao").css("display","block");
      $("#"+detailGuid+"SubZhangTao").css("display","block");

      if (sort == "wuLiao") {
          $("#" + detailGuid + "RegQty").css("display", "block"); //需求数量
          $("#" + detailGuid + "RegQtyB").css("display", "none"); //需求数量
      
      }



      //生成select

      $("#" + detailGuid + "ZhangTao").empty();
      $("#" + detailGuid + "ZhangTao").append("<option value=''></option>");

      for (var i = 0; i < zhangTao.length; i++) {
         //帐套判断 start
          if ("0" == 1 && zhangTao[i].zhangTaoName !="正常维修") {
              if (zhangTao[i].zhangTaoName == thisValue) {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "' selected=true>" + zhangTao[i].zhangTaoName + "</option>");
              }
              else {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "'>" + zhangTao[i].zhangTaoName + "</option>");
              }
          }

          if ("0" != 1 && zhangTao[i].zhangTaoName != "保险" && zhangTao[i].zhangTaoName != "保险自付") {

              if (zhangTao[i].zhangTaoName == thisValue) {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "' selected=true>" + zhangTao[i].zhangTaoName + "</option>");
              }
              else {
                  $("#" + detailGuid + "ZhangTao").append("<option value='" + zhangTao[i].zhangTaoName + "'>" + zhangTao[i].zhangTaoName + "</option>");
              }
          }
          //帐套判断 end
          
      }
      subZhangTaoMdf(detailGuid);
  }

  function subZhangTaoMdf(detailGuid) {
      if (zhangTao == null) { return false; }

      var thisZhangTao = $("#" + detailGuid + "ZhangTao").val(); ;
      var thisValue = $("#" + detailGuid + "SubZhangTaoB").html(); ;
      if (thisZhangTao == "") {return;}
      $("#" + detailGuid + "SubZhangTao").empty();
      $("#" + detailGuid + "SubZhangTao").append("<option value=''></option>");
      for (var i = 0; i < zhangTao.length; i++) {
          if (zhangTao[i].zhangTaoName == thisZhangTao) {
              for (var j = 0; j < zhangTao[i].zhangTaoList.length; j++) {
                  if (zhangTao[i].zhangTaoList[j].zhangTaoName == thisValue) {
                      $("#" + detailGuid + "SubZhangTao").append("<option value='" + zhangTao[i].zhangTaoList[j].zhangTaoName + "' selected=true>" + zhangTao[i].zhangTaoList[j].zhangTaoName + "</option>");
                  }
                  else {
                      $("#" + detailGuid + "SubZhangTao").append("<option value='" + zhangTao[i].zhangTaoList[j].zhangTaoName + "'>" + zhangTao[i].zhangTaoList[j].zhangTaoName + "</option>");
                  }     
              }
          }
      }



  }





  //避免多次重复提交操作
  function zhangTaoMdfSave() {
      //叠加数据 数据格式:类型，工时,帐套,子帐套
      var str = "";
      var obj1 = document.getElementsByName("weiXiu");
      var obj2 = document.getElementsByName("wuLiao");       
      for (var i = 0; i < obj1.length; i++) { 
          if ($("#" + obj1[i].value + "ZhangTao").css("display") == "block") {            
              //验证数据是否都填写 
              if ($("#" + obj1[i].value + "ZhangTao").val() == "") { $("#" + obj1[i].value + "ZhangTao").css("background-color", "red"); return false; }
              if ($("#" + obj1[i].value + "SubZhangTao").val() == "" && $("#" + obj1[i].value + "SubZhangTao option").length>1) { $("#" + obj1[i].value + "SubZhangTao").css("background-color", "red"); return false; }
              if ($("#" + obj1[i].value + "GongShi").val() == "") { $("#" + obj1[i].value + "GongShi").css("background-color", "red"); return false; }
            
               //叠加数据
              str +="weiXiu,"+$("#" + obj1[i].value + "GongShi").val()+","+$("#" + obj1[i].value + "ZhangTao").val()+","+$("#" + obj1[i].value + "SubZhangTao").val()+","+obj1[i].value+","+$("#" + obj1[i].value + "GongDuanName").val()+ "|";

          }
      } 
      for (var i = 0; i < obj2.length; i++) {
          if ($("#" + obj2[i].value + "ZhangTao").css("display") == "block") {
              //验证数据是否都填写
              if ($("#" + obj2[i].value + "ZhangTao").val() == "") { $("#" + obj2[i].value + "ZhangTao").css("background-color", "red"); return false; }
              if ($("#" + obj2[i].value + "SubZhangTao").val() == "" && $("#" + obj2[i].value + "SubZhangTao option").length >1) { $("#" + obj2[i].value + "SubZhangTao").css("background-color", "red"); return false; }

              //叠加数据
              str += "wuLiao,0," + $("#" + obj2[i].value + "ZhangTao").val() + "," + $("#" + obj2[i].value + "SubZhangTao").val() + "," + obj2[i].value + "," + $("#" + obj2[i].value + "RegQty").val() + "|";

          }
      }
    
      //所有修改
      if (str == "") {
          alert("修改完成！");
      } else {
          //发送数据值服务器端

      $.post("saleAfter_gongDanZhiZuoExec.aspx?d=" + new Date(), {
          type: "weiXiuMdf",
          saleAfterGuid: 'fccde036-8415-49b3-ad09-d7ca4dc52871',
          str: str
      }, function (data) {
          if (data == "ok") {
              alert("修改成功！");
              location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
          }
          else {
              alert(data);
          }
      });
      }


      return false;
  }


    </script>



    <script language="javascript" type="text/javascript">

        function addWeiXiuXiangMuList() {
            var u = "";
            
            if("6018" !="9999")
            {
             u = "../saleAfterManage/saleAfter_gongDanZhiZuoAddWeiXiuXiangMu.aspx?baoXianFlag=0&saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            }else
            {
            u = "../saleAfterManage/saleAfter_gongDanZhiZuoAddWeiXiuXiangMuNew.aspx?baoXianFlag=0&saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            }
            var SizeZ = "dialogWidth:850px;dialogHeight:650px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u,"维修项目添加","height=400,width=730,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }

            return false;
        }


        function addWeiXiuXiangMu() {
           
            var u = "../saleAfterManage/saleAfter_gongDanZhiZuotmpAddWeiXiuXiangMu.aspx?saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            var SizeZ = "dialogWidth:550px;dialogHeight:350px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修项目添加L", "height=400,width=650,top=130,left=700,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
                location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }
            return false;
        }


        function delWeiXiuXiangMu(weiXiuXiangMuThisId) {

            $.messager.confirm('删除', '删除此维修项目?', function (r) {
                if (r) {

                    $.get("saleAfter_gongDanZhiZuoExec.aspx", {
                        type: "weiXiuXiangMuDel",
                        saleAfterGuid: 'fccde036-8415-49b3-ad09-d7ca4dc52871',
                        weiXiuXiangMuThisId: weiXiuXiangMuThisId
                    }, function (data) {
                        //刷新页面
                        if (data == "ok") {
                            location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
                        } else {
                            alert(data);
                        }
                    });

                }
            }); 

        }


        function addWeiXiuWuLiaoList() {
            var u = "../saleAfterManage/saleAfter_gongDanZhiZuoAddWeiXiuWuLiao.aspx?baoXianFlag=0&saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修物料添加", "height=400,width=730,top=130,left=480,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
                returnValue.focus();
            } else {
                 returnValue = window.showModalDialog(u, '', SizeZ);                 
                 location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }
            return false;
        }


        function delWeiXiuWuLiao(weiXiuWuLiaoDetailGuid) {
            $.messager.confirm('删除', '删除此维修项目?', function (r) {
                if (r) {

                    $.get("saleAfter_gongDanZhiZuoExec.aspx", {
                        type: "weiXiuWuLiaoDel",
                        saleAfterGuid: 'fccde036-8415-49b3-ad09-d7ca4dc52871',
                        weiXiuWuLiaoThisId: weiXiuWuLiaoDetailGuid
                    }, function (data) {
                        //刷新页面
                        if (data == "ok") {
                            $("#" + weiXiuWuLiaoDetailGuid + "Tr").css("display","none");
                            //location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
                        } else {
                            alert(data);
                        }
                    });

                }
            }); 
           
        }


        //套餐新增模块
        function addWeiXiuTaoCan() {
            var u = "../saleAfterManage/saleAfter_taoCanChoiceMain.aspx?baoXianFlag=0&saleAfterGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            var SizeZ = "dialogWidth:750px;dialogHeight:550px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
            var returnValue;
            if (navigator.userAgent.indexOf('iPad') != -1 || isChrome()) {
                returnValue = window.open(u, "维修套餐添加", "");
            } else {
                returnValue = window.showModalDialog(u, '', SizeZ);
            }
            //关闭当前窗体
            if (returnValue != undefined && returnValue != "") {

            }
            location.href = "saleAfter_gongDanZhiZuo.aspx?saleAfterWeiXiuGuid=fccde036-8415-49b3-ad09-d7ca4dc52871&d=" + new Date();
            return false;
        }


        function winClose() {
            if (!confirm("您确定要退出？")) {
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